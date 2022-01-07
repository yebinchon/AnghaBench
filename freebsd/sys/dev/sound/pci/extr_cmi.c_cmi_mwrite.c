
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu401 {int dummy; } ;


 int bus_space_write_1 (int ,int ,int,unsigned char) ;

__attribute__((used)) static void
cmi_mwrite(struct mpu401 *arg, void *sc, int reg, unsigned char b)
{

 bus_space_write_1(0,0,0x330 + reg , b);
}
