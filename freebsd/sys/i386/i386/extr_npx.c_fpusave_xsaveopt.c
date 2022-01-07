
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union savefpu {int dummy; } savefpu ;


 int xsave_mask ;
 int xsaveopt (char*,int ) ;

__attribute__((used)) static void
fpusave_xsaveopt(union savefpu *addr)
{

 xsaveopt((char *)addr, xsave_mask);
}
