
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned short u_short ;
struct ad1816_info {int dummy; } ;


 int AD1816_ALE ;
 unsigned int AD1816_ALEMASK ;
 int AD1816_HIGH ;
 int AD1816_LOW ;
 int ad1816_wait_init (struct ad1816_info*,int) ;
 int io_rd (struct ad1816_info*,int ) ;
 int io_wr (struct ad1816_info*,int ,unsigned int) ;

__attribute__((used)) static unsigned short
ad1816_read(struct ad1816_info *ad1816, unsigned int reg)
{
     u_short x = 0;

     if (ad1816_wait_init(ad1816, 100) == -1) return 0;
     io_wr(ad1816, AD1816_ALE, 0);
     io_wr(ad1816, AD1816_ALE, (reg & AD1816_ALEMASK));
     if (ad1816_wait_init(ad1816, 100) == -1) return 0;
     x = (io_rd(ad1816, AD1816_HIGH) << 8) | io_rd(ad1816, AD1816_LOW);
     return x;
}
