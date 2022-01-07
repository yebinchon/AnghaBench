
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_4__ {int channel; int buffer; } ;
struct TYPE_3__ {int channel; int buffer; } ;
struct mss_info {TYPE_2__ rch; TYPE_1__ pch; } ;


 int BVDDB (int ) ;
 int DEB (int ) ;
 scalar_t__ FULL_DUPLEX (struct mss_info*) ;
 int MSS_STATUS ;
 int ad_read (struct mss_info*,int) ;
 int ad_write (struct mss_info*,int,int) ;
 int chn_intr (int ) ;
 int io_rd (struct mss_info*,int ) ;
 int io_wr (struct mss_info*,int ,int ) ;
 int mss_lock (struct mss_info*) ;
 int mss_unlock (struct mss_info*) ;
 int printf (char*,...) ;
 scalar_t__ sndbuf_runsz (int ) ;

__attribute__((used)) static void
mss_intr(void *arg)
{
     struct mss_info *mss = arg;
     u_char c = 0, served = 0;
     int i;

     DEB(printf("mss_intr\n"));
 mss_lock(mss);
     ad_read(mss, 11);


     for (i = 10; i > 0 && io_rd(mss, MSS_STATUS) & 1; i--) {

  c = FULL_DUPLEX(mss)? ad_read(mss, 24) : 0x30;
  c &= ~served;
  if (sndbuf_runsz(mss->pch.buffer) && (c & 0x10)) {
       served |= 0x10;
   mss_unlock(mss);
       chn_intr(mss->pch.channel);
   mss_lock(mss);
  }
  if (sndbuf_runsz(mss->rch.buffer) && (c & 0x20)) {
       served |= 0x20;
   mss_unlock(mss);
       chn_intr(mss->rch.channel);
   mss_lock(mss);
  }

  if (FULL_DUPLEX(mss)) ad_write(mss, 24, ~c);
  else io_wr(mss, MSS_STATUS, 0);
     }
     if (i == 10) {
  BVDDB(printf("mss_intr: irq, but not from mss\n"));
 } else if (served == 0) {
  BVDDB(printf("mss_intr: unexpected irq with reason %x\n", c));




  io_wr(mss, MSS_STATUS, 0);
     }
 mss_unlock(mss);
}
