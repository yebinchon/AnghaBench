
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int qdiffsample_zone ;
 int uma_zdestroy (int ) ;

__attribute__((used)) static int
cdg_mod_destroy(void)
{

 uma_zdestroy(qdiffsample_zone);
 return (0);
}
