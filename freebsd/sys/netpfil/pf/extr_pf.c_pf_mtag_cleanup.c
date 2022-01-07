
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pf_mtag_z ;
 int uma_zdestroy (int ) ;

void
pf_mtag_cleanup()
{

 uma_zdestroy(pf_mtag_z);
}
