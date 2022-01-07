
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int is_aeon ;
 int mpc85xx_attach (int ) ;

__attribute__((used)) static int
aeon_attach(platform_t plat)
{
 int error;

 error = mpc85xx_attach(plat);
 if (error)
  return (error);

 is_aeon = 1;

 return (0);
}
