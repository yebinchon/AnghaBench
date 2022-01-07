
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct sb_info {int io_base; } ;


 int DEB (int ) ;
 int DELAY (int) ;
 int ENXIO ;
 int SBDSP_RST ;
 int printf (char*,int ) ;
 int rman_get_start (int ) ;
 int sb_get_byte (struct sb_info*) ;
 int sb_lockassert (struct sb_info*) ;
 int sb_wr (struct sb_info*,int ,int) ;

__attribute__((used)) static int
sb_reset_dsp(struct sb_info *sb)
{
 u_char b;

 sb_lockassert(sb);
     sb_wr(sb, SBDSP_RST, 3);
     DELAY(100);
     sb_wr(sb, SBDSP_RST, 0);
 b = sb_get_byte(sb);
     if (b != 0xAA) {
         DEB(printf("sb_reset_dsp 0x%lx failed\n",
      rman_get_start(sb->io_base)));
  return ENXIO;
     }
     return 0;
}
