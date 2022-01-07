
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ wc; } ;
typedef TYPE_1__ ctype_node_t ;



__attribute__((used)) static int
ctype_compare(const void *n1, const void *n2)
{
 const ctype_node_t *c1 = n1;
 const ctype_node_t *c2 = n2;

 return (c1->wc < c2->wc ? -1 : c1->wc > c2->wc ? 1 : 0);
}
