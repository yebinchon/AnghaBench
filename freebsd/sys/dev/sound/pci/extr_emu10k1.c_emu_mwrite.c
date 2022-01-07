
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dummy; } ;
struct mpu401 {int dummy; } ;


 int emu_wr (struct sc_info*,int,unsigned char,int) ;

__attribute__((used)) static void
emu_mwrite(struct mpu401 *arg, void *sc, int reg, unsigned char b)
{

 emu_wr((struct sc_info *)sc, 0x18 + reg, b, 1);
}
