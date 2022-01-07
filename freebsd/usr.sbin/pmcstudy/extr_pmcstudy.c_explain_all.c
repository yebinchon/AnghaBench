
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* cputype; int number; TYPE_1__* ents; int (* explain ) (char*) ;} ;
struct TYPE_3__ {char* name; } ;


 int printf (char*,...) ;
 int stub1 (char*) ;
 TYPE_2__ the_cpu ;

__attribute__((used)) static void
explain_all(void)
{
 int i;
 printf("For CPU's of type %s the following expressions are available:\n",the_cpu.cputype);
 printf("-------------------------------------------------------------\n");
 for(i=0; i<the_cpu.number; i++){
  printf("For -e %s ", the_cpu.ents[i].name);
  (*the_cpu.explain)(the_cpu.ents[i].name);
  printf("----------------------------\n");
 }
}
