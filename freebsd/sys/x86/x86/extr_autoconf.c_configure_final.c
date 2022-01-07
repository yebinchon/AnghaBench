
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ bootverbose ;
 int cninit_finish () ;
 scalar_t__ cold ;
 int printf (char*) ;

__attribute__((used)) static void
configure_final(void *dummy)
{

 cninit_finish();

 if (bootverbose)
  printf("Device configuration finished.\n");

 cold = 0;
}
