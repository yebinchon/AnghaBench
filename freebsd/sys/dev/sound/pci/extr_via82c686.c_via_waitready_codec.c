
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct via_info {int dummy; } ;


 int DELAY (int) ;
 int TIMEOUT ;
 int VIA_CODEC_BUSY ;
 int VIA_CODEC_CTL ;
 int printf (char*) ;
 int via_rd (struct via_info*,int ,int) ;

__attribute__((used)) static int
via_waitready_codec(struct via_info *via)
{
 int i;


 for (i = 0; (i < TIMEOUT) &&
     (via_rd(via, VIA_CODEC_CTL, 4) & VIA_CODEC_BUSY); i++)
  DELAY(1);
 if (i >= TIMEOUT) {
  printf("via: codec busy\n");
  return 1;
 }

 return 0;
}
