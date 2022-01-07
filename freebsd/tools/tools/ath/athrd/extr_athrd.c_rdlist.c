
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* name; } ;


 TYPE_1__* domains ;
 int nitems (TYPE_1__*) ;
 int printf (char*,...) ;

__attribute__((used)) static void
rdlist()
{
 int i;

 printf("\nRegulatory domains:\n\n");
 for (i = 0; i < nitems(domains); i++)
  printf("%-15s%s", domains[i].name,
   ((i+1)%5) == 0 ? "\n" : "");
 printf("\n");
}
