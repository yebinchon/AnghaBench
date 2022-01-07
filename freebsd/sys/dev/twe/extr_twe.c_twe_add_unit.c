
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_int16_t ;
struct twe_softc {struct twe_drive* twe_drive; } ;
struct twe_drive {int td_size; int td_heads; int td_sectors; int td_cylinders; int td_twe_unit; int td_stripe; int td_type; int td_state; } ;
struct TYPE_6__ {int stripe_size; int configuration; } ;
struct TYPE_5__ {int* data; } ;
typedef TYPE_1__ TWE_Param ;
typedef TYPE_2__ TWE_Array_Descriptor ;


 int EINVAL ;
 int EIO ;
 int ENXIO ;
 int M_DEVBUF ;
 int TWE_CONFIG_ASSERT_LOCKED (struct twe_softc*) ;
 int TWE_IO_LOCK (struct twe_softc*) ;
 int TWE_IO_UNLOCK (struct twe_softc*) ;
 int TWE_MAX_UNITS ;
 int TWE_PARAM_UNITINFO ;
 int TWE_PARAM_UNITINFO_Capacity ;
 int TWE_PARAM_UNITINFO_Descriptor ;
 int TWE_PARAM_UNITINFO_DescriptorSize ;
 int TWE_PARAM_UNITINFO_Status ;
 int TWE_PARAM_UNITSTATUS_Online ;
 int TWE_PARAM_UNITSUMMARY ;
 int TWE_PARAM_UNITSUMMARY_Status ;
 int free (TYPE_1__*,int ) ;
 int twe_attach_drive (struct twe_softc*,struct twe_drive*) ;
 TYPE_1__* twe_get_param (struct twe_softc*,int,int ,int,int *) ;
 scalar_t__ twe_get_param_1 (struct twe_softc*,int,int ,int *) ;
 scalar_t__ twe_get_param_2 (struct twe_softc*,int,int ,int*) ;
 scalar_t__ twe_get_param_4 (struct twe_softc*,int,int ,int*) ;
 int twe_printf (struct twe_softc*,char*,...) ;

__attribute__((used)) static int
twe_add_unit(struct twe_softc *sc, int unit)
{
    struct twe_drive *dr;
    int table, error = 0;
    u_int16_t dsize;
    TWE_Param *drives = ((void*)0), *param = ((void*)0);
    TWE_Array_Descriptor *ud;

    TWE_CONFIG_ASSERT_LOCKED(sc);
    if (unit < 0 || unit > TWE_MAX_UNITS)
 return (EINVAL);




    TWE_IO_LOCK(sc);
    if ((drives = twe_get_param(sc, TWE_PARAM_UNITSUMMARY, TWE_PARAM_UNITSUMMARY_Status,
    TWE_MAX_UNITS, ((void*)0))) == ((void*)0)) {
 TWE_IO_UNLOCK(sc);
 twe_printf(sc, "can't detect attached units\n");
 return (EIO);
    }

    dr = &sc->twe_drive[unit];

    if (!(drives->data[unit] & TWE_PARAM_UNITSTATUS_Online)) {
 TWE_IO_UNLOCK(sc);
 error = ENXIO;
 goto out;
    }

    table = TWE_PARAM_UNITINFO + unit;

    if (twe_get_param_4(sc, table, TWE_PARAM_UNITINFO_Capacity, &dr->td_size)) {
 TWE_IO_UNLOCK(sc);
 twe_printf(sc, "error fetching capacity for unit %d\n", unit);
 error = EIO;
 goto out;
    }
    if (twe_get_param_1(sc, table, TWE_PARAM_UNITINFO_Status, &dr->td_state)) {
 TWE_IO_UNLOCK(sc);
 twe_printf(sc, "error fetching state for unit %d\n", unit);
 error = EIO;
 goto out;
    }
    if (twe_get_param_2(sc, table, TWE_PARAM_UNITINFO_DescriptorSize, &dsize)) {
 TWE_IO_UNLOCK(sc);
 twe_printf(sc, "error fetching descriptor size for unit %d\n", unit);
 error = EIO;
 goto out;
    }
    if ((param = twe_get_param(sc, table, TWE_PARAM_UNITINFO_Descriptor, dsize - 3, ((void*)0))) == ((void*)0)) {
 TWE_IO_UNLOCK(sc);
 twe_printf(sc, "error fetching descriptor for unit %d\n", unit);
 error = EIO;
 goto out;
    }
    ud = (TWE_Array_Descriptor *)param->data;
    dr->td_type = ud->configuration;
    dr->td_stripe = ud->stripe_size;


    if (dr->td_size > 0x200000) {
 dr->td_heads = 255;
 dr->td_sectors = 63;
    } else {
 dr->td_heads = 64;
 dr->td_sectors = 32;
    }
    dr->td_cylinders = dr->td_size / (dr->td_heads * dr->td_sectors);
    dr->td_twe_unit = unit;
    TWE_IO_UNLOCK(sc);

    error = twe_attach_drive(sc, dr);

out:
    if (param != ((void*)0))
 free(param, M_DEVBUF);
    if (drives != ((void*)0))
 free(drives, M_DEVBUF);
    return (error);
}
