
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpu401 {int dummy; } ;


 unsigned int bus_space_read_1 (int ,int ,int) ;

__attribute__((used)) static unsigned char
cmi_mread(struct mpu401 *arg, void *sc, int reg)
{
 unsigned int d;

  d = bus_space_read_1(0,0, 0x330 + reg);


 return d;
}
