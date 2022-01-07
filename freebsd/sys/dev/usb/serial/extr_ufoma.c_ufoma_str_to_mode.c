
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mode; int * str; } ;


 scalar_t__ strcmp (char*,int *) ;
 TYPE_1__* umcpc_modetostr_tab ;

__attribute__((used)) static int ufoma_str_to_mode(char *str)
{
 int i;
 for(i = 0 ;umcpc_modetostr_tab[i].str != ((void*)0); i++){
  if(strcmp(str, umcpc_modetostr_tab[i].str)==0){
   return umcpc_modetostr_tab[i].mode;
  }
 }
 return -1;
}
