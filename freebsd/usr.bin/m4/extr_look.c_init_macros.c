
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int macro_info ;
 int macros ;
 int ohash_init (int *,int,int *) ;

void
init_macros(void)
{
 ohash_init(&macros, 10, &macro_info);
}
