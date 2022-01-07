
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int callout_init (int *,int) ;
 int loadav (int *) ;
 int loadav_callout ;

__attribute__((used)) static void
synch_setup(void *dummy)
{
 callout_init(&loadav_callout, 1);


 loadav(((void*)0));
}
