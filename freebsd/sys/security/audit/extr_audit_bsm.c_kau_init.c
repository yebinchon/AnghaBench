
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int au_evclassmap_init () ;
 int au_evnamemap_init () ;

void
kau_init(void)
{

 au_evclassmap_init();
 au_evnamemap_init();
}
