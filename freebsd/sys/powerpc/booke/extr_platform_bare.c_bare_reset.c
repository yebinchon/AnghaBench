
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int printf (char*) ;

__attribute__((used)) static void
bare_reset(platform_t plat)
{

 printf("Reset failed...\n");
 while (1)
  ;
}
