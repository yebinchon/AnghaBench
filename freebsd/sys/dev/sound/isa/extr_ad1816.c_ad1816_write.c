
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad1816_info {int dummy; } ;


 int AD1816_ALE ;
 unsigned int AD1816_ALEMASK ;
 int AD1816_HIGH ;
 int AD1816_LOW ;
 int ad1816_wait_init (struct ad1816_info*,int) ;
 int io_wr (struct ad1816_info*,int ,unsigned short) ;

__attribute__((used)) static void
ad1816_write(struct ad1816_info *ad1816, unsigned int reg, unsigned short data)
{
     if (ad1816_wait_init(ad1816, 100) == -1) return;
     io_wr(ad1816, AD1816_ALE, (reg & AD1816_ALEMASK));
     io_wr(ad1816, AD1816_LOW, (data & 0x000000ff));
     io_wr(ad1816, AD1816_HIGH, (data & 0x0000ff00) >> 8);
}
