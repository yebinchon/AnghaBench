
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int twe_dev; } ;
struct twe_drive {int td_twe_unit; int td_type; int td_state; int * td_disk; } ;


 int EIO ;
 int Giant ;
 int TWE_PARAM_UNITSTATUS_MASK ;
 int * device_add_child (int ,int *,int) ;
 int device_probe_and_attach (int *) ;
 int device_set_desc_copy (int *,char*) ;
 int device_set_ivars (int *,struct twe_drive*) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sprintf (char*,char*,int,char*,char*) ;
 char* twe_describe_code (int ,int) ;
 int twe_printf (struct twe_softc*,char*,...) ;
 int twe_table_unitstate ;
 int twe_table_unittype ;

int
twe_attach_drive(struct twe_softc *sc, struct twe_drive *dr)
{
    char buf[80];
    int error;

    mtx_lock(&Giant);
    dr->td_disk = device_add_child(sc->twe_dev, ((void*)0), -1);
    if (dr->td_disk == ((void*)0)) {
 mtx_unlock(&Giant);
 twe_printf(sc, "Cannot add unit\n");
 return (EIO);
    }
    device_set_ivars(dr->td_disk, dr);





    sprintf(buf, "Unit %d, %s, %s",
     dr->td_twe_unit,
     twe_describe_code(twe_table_unittype, dr->td_type),
     twe_describe_code(twe_table_unitstate, dr->td_state & TWE_PARAM_UNITSTATUS_MASK));
    device_set_desc_copy(dr->td_disk, buf);

    error = device_probe_and_attach(dr->td_disk);
    mtx_unlock(&Giant);
    if (error != 0) {
 twe_printf(sc, "Cannot attach unit to controller. error = %d\n", error);
 return (EIO);
    }
    return (0);
}
