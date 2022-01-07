
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int host_id; } ;
struct TYPE_6__ {int flags; int host_id; int flags1; int flags2; } ;
struct TYPE_8__ {TYPE_2__ Tekram; TYPE_1__ Symbios; } ;
struct sym_nvram {int type; TYPE_3__ data; } ;
typedef TYPE_4__* hcb_p ;
struct TYPE_9__ {int rv_scntl0; int myaddr; int verbose; int usrflags; } ;


 int SYMBIOS_AVOID_BUS_RESET ;
 int SYMBIOS_PARITY_ENABLE ;
 int SYMBIOS_SCAN_HI_LO ;
 int SYMBIOS_VERBOSE_MSGS ;
 int SYM_AVOID_BUS_RESET ;
 int SYM_SCAN_TARGETS_HILO ;



__attribute__((used)) static void sym_nvram_setup_host (hcb_p np, struct sym_nvram *nvram)
{
}
