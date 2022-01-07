
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int expand; } ;
typedef TYPE_1__ collelem_t ;


 int wcscmp (int ,int ) ;

__attribute__((used)) static int
element_compare_expand(const void *n1, const void *n2)
{
 const collelem_t *c1 = n1;
 const collelem_t *c2 = n2;
 int rv;

 rv = wcscmp(c1->expand, c2->expand);
 return ((rv < 0) ? -1 : (rv > 0) ? 1 : 0);
}
