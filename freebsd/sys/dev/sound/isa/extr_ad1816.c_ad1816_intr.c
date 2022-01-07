
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int channel; int buffer; } ;
struct TYPE_3__ {int channel; int buffer; } ;
struct ad1816_info {TYPE_2__ pch; TYPE_1__ rch; } ;


 int AD1816_INT ;
 unsigned char AD1816_INTRCI ;
 unsigned char AD1816_INTRPI ;
 int ad1816_lock (struct ad1816_info*) ;
 int ad1816_unlock (struct ad1816_info*) ;
 int chn_intr (int ) ;
 unsigned char io_rd (struct ad1816_info*,int ) ;
 int io_wr (struct ad1816_info*,int ,unsigned char) ;
 int printf (char*,unsigned char) ;
 scalar_t__ sndbuf_runsz (int ) ;

__attribute__((used)) static void
ad1816_intr(void *arg)
{
     struct ad1816_info *ad1816 = (struct ad1816_info *)arg;
     unsigned char c, served = 0;

 ad1816_lock(ad1816);

     c = io_rd(ad1816, AD1816_INT);


     if (c & ~(AD1816_INTRCI | AD1816_INTRPI)) {
  printf("pcm: stray int (%x)\n", c);
  c &= AD1816_INTRCI | AD1816_INTRPI;
     }

     if (sndbuf_runsz(ad1816->rch.buffer) && (c & AD1816_INTRCI)) {
  ad1816_unlock(ad1816);
  chn_intr(ad1816->rch.channel);
  ad1816_lock(ad1816);
  served |= AD1816_INTRCI;
     }

     if (sndbuf_runsz(ad1816->pch.buffer) && (c & AD1816_INTRPI)) {
  ad1816_unlock(ad1816);
  chn_intr(ad1816->pch.channel);
  ad1816_lock(ad1816);
  served |= AD1816_INTRPI;
     }
     if (served == 0) {


  printf("pcm: int without reason (%x)\n", c);
  c = 0;
     } else c &= ~served;
     io_wr(ad1816, AD1816_INT, c);
     c = io_rd(ad1816, AD1816_INT);
     if (c != 0) printf("pcm: int clear failed (%x)\n", c);
 ad1816_unlock(ad1816);
}
