
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cninit_finish () ;
 scalar_t__ cold ;

__attribute__((used)) static void
configure_final(void *dummy)
{

 cninit_finish();
 cold = 0;
}
