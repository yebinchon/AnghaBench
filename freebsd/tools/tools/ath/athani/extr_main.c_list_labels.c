
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* name; int id; } ;


 TYPE_1__* ani_labels ;
 int printf (char*,char*,int) ;

__attribute__((used)) static void
list_labels(void)
{
 int i;

 for (i = 0; ani_labels[i].name != ((void*)0); i++) {
  printf("%s (%d)\n", ani_labels[i].name, ani_labels[i].id);
 }
}
