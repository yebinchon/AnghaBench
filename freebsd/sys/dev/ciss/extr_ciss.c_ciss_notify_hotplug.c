
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct ciss_softc {TYPE_4__* ciss_cfg; TYPE_3__** ciss_physical; } ;
struct TYPE_5__ {int big_physical_drive_number; } ;
struct TYPE_6__ {TYPE_1__ drive; } ;
struct ciss_notify {int subclass; int detail; TYPE_2__ data; } ;
struct ciss_lun_report {int dummy; } ;
struct TYPE_8__ {int max_physical_supported; } ;
struct TYPE_7__ {int cp_online; } ;


 int CISS_BIG_MAP_BUS (struct ciss_softc*,int ) ;
 int CISS_BIG_MAP_TARGET (struct ciss_softc*,int ) ;
 int CISS_MALLOC_CLASS ;


 int CISS_OPCODE_REPORT_PHYSICAL_LUNS ;
 int ciss_filter_physical (struct ciss_softc*,struct ciss_lun_report*) ;
 int ciss_printf (struct ciss_softc*,char*,...) ;
 struct ciss_lun_report* ciss_report_luns (struct ciss_softc*,int ,int ) ;
 int free (struct ciss_lun_report*,int ) ;

__attribute__((used)) static void
ciss_notify_hotplug(struct ciss_softc *sc, struct ciss_notify *cn)
{
    struct ciss_lun_report *cll = ((void*)0);
    int bus, target;

    switch (cn->subclass) {
    case 128:
    case 129:
 bus = CISS_BIG_MAP_BUS(sc, cn->data.drive.big_physical_drive_number);
 target =
     CISS_BIG_MAP_TARGET(sc, cn->data.drive.big_physical_drive_number);

 if (cn->detail == 0) {




     if ((bus >= 0) && (target >= 0))
  sc->ciss_physical[bus][target].cp_online = 0;
 } else {



     cll = ciss_report_luns(sc, CISS_OPCODE_REPORT_PHYSICAL_LUNS,
       sc->ciss_cfg->max_physical_supported);
     if (cll == ((void*)0)) {
  ciss_printf(sc, "Warning, cannot get physical lun list\n");
  break;
     }
     ciss_filter_physical(sc, cll);
 }
 break;

    default:
 ciss_printf(sc, "Unknown hotplug event %d\n", cn->subclass);
 return;
    }

    if (cll != ((void*)0))
 free(cll, CISS_MALLOC_CLASS);
}
