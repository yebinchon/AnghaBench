
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;


 int MKIMG_VERSION ;
 int printf (char*,int,int) ;

__attribute__((used)) static void
print_version(void)
{
 u_int width;


 width = 64;



 printf("mkimg %u (%u-bit)\n", MKIMG_VERSION, width);
}
