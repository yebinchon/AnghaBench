
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int V_pfr_kentry_z ;
 int uma_zdestroy (int ) ;

void
pfr_cleanup(void)
{

 uma_zdestroy(V_pfr_kentry_z);
}
