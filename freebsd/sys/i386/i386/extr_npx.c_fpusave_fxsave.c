
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union savefpu {int dummy; } savefpu ;


 int fxsave (char*) ;

__attribute__((used)) static void
fpusave_fxsave(union savefpu *addr)
{

 fxsave((char *)addr);
}
