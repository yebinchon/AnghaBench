
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
typedef TYPE_1__ collundef_t ;


 int strcmp (int ,int ) ;

__attribute__((used)) static int
collundef_compare(const void *n1, const void *n2)
{
 const collundef_t *c1 = n1;
 const collundef_t *c2 = n2;
 int rv;

 rv = strcmp(c1->name, c2->name);
 return ((rv < 0) ? -1 : (rv > 0) ? 1 : 0);
}
