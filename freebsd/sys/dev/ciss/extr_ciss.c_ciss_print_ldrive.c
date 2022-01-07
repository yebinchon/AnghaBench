
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ciss_softc {int dummy; } ;
struct ciss_ldrive {TYPE_1__* cl_lstatus; } ;
struct TYPE_2__ {int status; int blocks_to_recover; int * drive_failure_map; int drive_rebuilding; } ;


 int CISS_BIG_MAP_BUS (struct ciss_softc*,int ) ;
 int CISS_BIG_MAP_ENTRIES ;
 int CISS_BIG_MAP_TARGET (struct ciss_softc*,int ) ;
 int ciss_printf (struct ciss_softc*,char*,int,int,int ) ;
 int printf (char*,...) ;

__attribute__((used)) static void
ciss_print_ldrive(struct ciss_softc *sc, struct ciss_ldrive *ld)
{
    int bus, target, i;

    if (ld->cl_lstatus == ((void*)0)) {
 printf("does not exist\n");
 return;
    }


    switch(ld->cl_lstatus->status) {
    case 132:
 printf("online\n");
 break;
    case 134:
 printf("in interim recovery mode\n");
 break;
    case 130:
 printf("ready to begin recovery\n");
 break;
    case 129:
 bus = CISS_BIG_MAP_BUS(sc, ld->cl_lstatus->drive_rebuilding);
 target = CISS_BIG_MAP_BUS(sc, ld->cl_lstatus->drive_rebuilding);
 printf("being recovered, working on physical drive %d.%d, %u blocks remaining\n",
        bus, target, ld->cl_lstatus->blocks_to_recover);
 break;
    case 136:
 printf("being expanded, %u blocks remaining\n",
        ld->cl_lstatus->blocks_to_recover);
 break;
    case 131:
 printf("queued for expansion\n");
 break;
    case 135:
 printf("queued for expansion\n");
 break;
    case 128:
 printf("wrong physical drive inserted\n");
 break;
    case 133:
 printf("missing a needed physical drive\n");
 break;
    case 137:
 printf("becoming ready\n");
 break;
    }


    for (i = 0; i < CISS_BIG_MAP_ENTRIES / 8; i++) {
 bus = CISS_BIG_MAP_BUS(sc, ld->cl_lstatus->drive_failure_map[i]);
 target = CISS_BIG_MAP_TARGET(sc, ld->cl_lstatus->drive_failure_map[i]);
 if (bus == -1)
     continue;
 ciss_printf(sc, "physical drive %d:%d (%x) failed\n", bus, target,
      ld->cl_lstatus->drive_failure_map[i]);
    }
}
