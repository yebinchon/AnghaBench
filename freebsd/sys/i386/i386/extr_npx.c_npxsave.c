
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef union savefpu {int dummy; } savefpu ;


 int fpusave (union savefpu*) ;
 int stop_emulating () ;

void
npxsave(union savefpu *addr)
{

 stop_emulating();
 fpusave(addr);
}
