
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad1816_info {int dummy; } ;


 int AD1816_ALE ;
 int AD1816_BUSY ;
 int DELAY (int) ;
 int io_rd (struct ad1816_info*,int ) ;
 int printf (char*,int) ;

__attribute__((used)) static int
ad1816_wait_init(struct ad1816_info *ad1816, int x)
{
     int n = 0;

     for (; x--;)
  if ((n = (io_rd(ad1816, AD1816_ALE) & AD1816_BUSY)) == 0) DELAY(10);
  else return n;
     printf("ad1816_wait_init failed 0x%02x.\n", n);
     return -1;
}
