
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int platform_t ;


 int mpc85xx_attach (int ) ;

__attribute__((used)) static int
rb_attach(platform_t plat)
{
 int error;

 error = mpc85xx_attach(plat);
 if (error)
  return (error);

 return (0);
}
