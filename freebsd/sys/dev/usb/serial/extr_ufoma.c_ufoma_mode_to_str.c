
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* str; int mode; } ;


 TYPE_1__* umcpc_modetostr_tab ;

__attribute__((used)) static char *ufoma_mode_to_str(int mode)
{
 int i;
 for(i = 0 ;umcpc_modetostr_tab[i].str != ((void*)0); i++){
  if(umcpc_modetostr_tab[i].mode == mode){
   return umcpc_modetostr_tab[i].str;
  }
 }
 return ((void*)0);
}
