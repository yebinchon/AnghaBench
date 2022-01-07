
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int txseginfo_zone ;
 int uma_zdestroy (int ) ;

__attribute__((used)) static int
ertt_mod_destroy(void)
{

 uma_zdestroy(txseginfo_zone);

 return (0);
}
