
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int Tekram; int Symbios; } ;
struct sym_nvram {int type; TYPE_1__ data; } ;
typedef int hcb_p ;




 int sym_Symbios_setup_target (int ,int,int *) ;
 int sym_Tekram_setup_target (int ,int,int *) ;

__attribute__((used)) static void
sym_nvram_setup_target (hcb_p np, int target, struct sym_nvram *nvp)
{
}
