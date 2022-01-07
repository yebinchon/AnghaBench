
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int newnfsnode_zone ;
 int uma_zdestroy (int ) ;

void
ncl_nhuninit(void)
{
 uma_zdestroy(newnfsnode_zone);
}
