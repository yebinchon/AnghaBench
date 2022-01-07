
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct mss_info {int bd_id; } ;
typedef TYPE_1__** mixer_tab ;
struct TYPE_6__ {scalar_t__ nbits; int regno; } ;


 int DEB (int ) ;
 size_t LEFT_CHN ;


 size_t RIGHT_CHN ;
 int ad_read (struct mss_info*,int) ;
 int ad_write (struct mss_info*,int,int) ;
 int change_bits (TYPE_1__***,int*,int,size_t,int) ;
 TYPE_1__** mix_devices ;
 TYPE_1__** opti930_devices ;
 TYPE_1__** opti931_devices ;
 int printf (char*,int,...) ;

__attribute__((used)) static int
mss_mixer_set(struct mss_info *mss, int dev, int left, int right)
{
     int regoffs;
     mixer_tab *mix_d;
     u_char old, val;

 switch (mss->bd_id) {
  case 128:
   mix_d = &opti931_devices;
   break;
  case 129:
   mix_d = &opti930_devices;
   break;
  default:
   mix_d = &mix_devices;
 }

     if ((*mix_d)[dev][LEFT_CHN].nbits == 0) {
  DEB(printf("nbits = 0 for dev %d\n", dev));
  return -1;
     }

     if ((*mix_d)[dev][RIGHT_CHN].nbits == 0) right = left;



     regoffs = (*mix_d)[dev][LEFT_CHN].regno;
     old = val = ad_read(mss, regoffs);

     if (regoffs != 0) val = (left == 0)? old | 0x80 : old & 0x7f;
     change_bits(mix_d, &val, dev, LEFT_CHN, left);
     ad_write(mss, regoffs, val);

     DEB(printf("LEFT: dev %d reg %d old 0x%02x new 0x%02x\n",
  dev, regoffs, old, val));

     if ((*mix_d)[dev][RIGHT_CHN].nbits != 0) {

  regoffs = (*mix_d)[dev][RIGHT_CHN].regno;
  old = val = ad_read(mss, regoffs);
  if (regoffs != 1) val = (right == 0)? old | 0x80 : old & 0x7f;
  change_bits(mix_d, &val, dev, RIGHT_CHN, right);
  ad_write(mss, regoffs, val);

  DEB(printf("RIGHT: dev %d reg %d old 0x%02x new 0x%02x\n",
      dev, regoffs, old, val));
     }
     return 0;
}
