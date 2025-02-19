
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef void fm801_info ;


 int DELAY (int) ;
 int DPRINT (char*) ;
 int FM_CODEC_CTL ;
 int FM_FM_VOLUME ;
 int FM_I2S_VOLUME ;
 int FM_INTMASK ;
 int FM_INTMASK_MPU ;
 int FM_INTMASK_PLAY ;
 int FM_INTMASK_REC ;
 int FM_INTMASK_VOL ;
 int FM_INTSTATUS ;
 int FM_INTSTATUS_MPU ;
 int FM_INTSTATUS_PLAY ;
 int FM_INTSTATUS_REC ;
 int FM_INTSTATUS_VOL ;
 int FM_PCM_VOLUME ;
 int FM_RECORD_SOURCE ;
 int fm801_rd (void*,int,int) ;
 int fm801_wr (void*,int,int,int) ;

__attribute__((used)) static int
fm801_init(struct fm801_info *fm801)
{
 u_int32_t k1;


 fm801_wr(fm801, FM_CODEC_CTL, 0x0020,2);
 DELAY(100000);
 fm801_wr(fm801, FM_CODEC_CTL, 0x0000,2);
 DELAY(100000);

 fm801_wr(fm801, FM_PCM_VOLUME, 0x0808,2);
 fm801_wr(fm801, FM_FM_VOLUME, 0x0808,2);
 fm801_wr(fm801, FM_I2S_VOLUME, 0x0808,2);
 fm801_wr(fm801, 0x40,0x107f,2);

 fm801_wr((void *)fm801, FM_RECORD_SOURCE, 0x0000,2);


 k1 = fm801_rd((void *)fm801, FM_INTMASK,2);
 fm801_wr(fm801, FM_INTMASK,
  (k1 & ~(FM_INTMASK_PLAY | FM_INTMASK_REC | FM_INTMASK_MPU)) |
  FM_INTMASK_VOL,2);
 fm801_wr(fm801, FM_INTSTATUS,
  FM_INTSTATUS_PLAY | FM_INTSTATUS_REC | FM_INTSTATUS_MPU |
  FM_INTSTATUS_VOL,2);

 DPRINT("FM801 init Ok\n");
 return 0;
}
