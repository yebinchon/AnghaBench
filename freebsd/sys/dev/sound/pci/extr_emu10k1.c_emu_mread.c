
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sc_info {int dummy; } ;
struct mpu401 {int dummy; } ;


 unsigned int emu_rd (struct sc_info*,int,int) ;

__attribute__((used)) static unsigned char
emu_mread(struct mpu401 *arg, void *sc, int reg)
{
 unsigned int d;

 d = emu_rd((struct sc_info *)sc, 0x18 + reg, 1);
 return d;
}
