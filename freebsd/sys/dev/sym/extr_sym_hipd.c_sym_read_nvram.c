
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Tekram; int Symbios; } ;
struct sym_nvram {int type; TYPE_1__ data; } ;
typedef int hcb_p ;


 scalar_t__ SYM_SETUP_SYMBIOS_NVRAM ;
 scalar_t__ SYM_SETUP_TEKRAM_NVRAM ;
 int SYM_SYMBIOS_NVRAM ;
 int SYM_TEKRAM_NVRAM ;
 int sym_display_Symbios_nvram (int ,int *) ;
 int sym_display_Tekram_nvram (int ,int *) ;
 int sym_read_Symbios_nvram (int ,int *) ;
 int sym_read_Tekram_nvram (int ,int *) ;

__attribute__((used)) static int sym_read_nvram(hcb_p np, struct sym_nvram *nvp)
{
 nvp->type = 0;

 return nvp->type;
}
