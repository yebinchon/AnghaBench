
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int number; TYPE_1__* ents; } ;
struct TYPE_3__ {int name; } ;


 scalar_t__ strcmp (char*,int ) ;
 TYPE_2__ the_cpu ;

__attribute__((used)) static int
validate_expression(char *name)
{
 int i, found;

 found = 0;
 for(i=0 ; i< the_cpu.number; i++) {
  if (strcmp(name, the_cpu.ents[i].name) == 0) {
   found = 1;
   break;
  }
 }
 if (!found) {
  return(-1);
 }
 return (0);
}
