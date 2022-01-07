
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ pae_mode ;
 int vm86_initialize_nopae () ;
 int vm86_initialize_pae () ;

void
vm86_initialize(void)
{

 if (pae_mode)
  vm86_initialize_pae();
 else
  vm86_initialize_nopae();
}
