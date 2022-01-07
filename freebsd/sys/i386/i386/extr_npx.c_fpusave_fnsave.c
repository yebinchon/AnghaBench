
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union savefpu {int dummy; } savefpu ;


 int fnsave (char*) ;

__attribute__((used)) static void
fpusave_fnsave(union savefpu *addr)
{

 fnsave((char *)addr);
}
