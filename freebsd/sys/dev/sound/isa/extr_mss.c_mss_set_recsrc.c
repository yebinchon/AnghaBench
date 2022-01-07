
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct mss_info {int dummy; } ;
 int ad_read (struct mss_info*,int) ;
 int ad_write (struct mss_info*,int,int) ;

__attribute__((used)) static int
mss_set_recsrc(struct mss_info *mss, int mask)
{
     u_char recdev;

     switch (mask) {
     case 131:
     case 129:
  recdev = 0;
  break;

     case 133:
     case 130:
  recdev = 0x40;
  break;

     case 132:
  recdev = 0xc0;
  break;

     case 128:
     default:
  mask = 128;
  recdev = 0x80;
     }
     ad_write(mss, 0, (ad_read(mss, 0) & 0x3f) | recdev);
     ad_write(mss, 1, (ad_read(mss, 1) & 0x3f) | recdev);
     return mask;
}
