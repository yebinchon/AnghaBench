
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int16_t ;
struct twe_softc {char* twe_aen_buf; int * twe_dev; TYPE_1__* twe_drive; } ;
typedef int * device_t ;
struct TYPE_2__ {int * td_disk; } ;


 int TWE_AEN_CODE (int) ;
 int TWE_AEN_UNIT (int) ;
 int bootverbose ;
 int device_get_unit (int *) ;
 int snprintf (char*,int,char*,int,...) ;
 char* twe_describe_code (int ,int ) ;
 int twe_table_aen ;

__attribute__((used)) static char *
twe_format_aen(struct twe_softc *sc, u_int16_t aen)
{
    device_t child;
    char *code, *msg;

    code = twe_describe_code(twe_table_aen, TWE_AEN_CODE(aen));
    msg = code + 2;

    switch (*code) {
    case 'q':
 if (!bootverbose)
     return(((void*)0));

    case 'a':
 return(msg);

    case 'c':
 if ((child = sc->twe_drive[TWE_AEN_UNIT(aen)].td_disk) != ((void*)0)) {
     snprintf(sc->twe_aen_buf, sizeof(sc->twe_aen_buf), "twed%d: %s",
  device_get_unit(child), msg);
 } else {
     snprintf(sc->twe_aen_buf, sizeof(sc->twe_aen_buf),
  "twe%d: %s for unknown unit %d", device_get_unit(sc->twe_dev),
  msg, TWE_AEN_UNIT(aen));
 }
 return(sc->twe_aen_buf);

    case 'p':
 snprintf(sc->twe_aen_buf, sizeof(sc->twe_aen_buf),
     "twe%d: port %d: %s", device_get_unit(sc->twe_dev),
     TWE_AEN_UNIT(aen), msg);
 return(sc->twe_aen_buf);


    case 'x':
    default:
 break;
    }
    snprintf(sc->twe_aen_buf, sizeof(sc->twe_aen_buf), "unknown AEN 0x%x", aen);
    return(sc->twe_aen_buf);
}
