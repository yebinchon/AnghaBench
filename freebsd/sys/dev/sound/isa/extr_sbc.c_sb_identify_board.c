
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;


 int DSP_CMD_GETID ;
 int DSP_CMD_GETVER ;
 int sb_cmd (struct resource*,int ) ;
 int sb_get_byte (struct resource*) ;

__attribute__((used)) static int
sb_identify_board(struct resource *io)
{
 int ver, essver, rev;

     sb_cmd(io, DSP_CMD_GETVER);
     ver = (sb_get_byte(io) << 8) | sb_get_byte(io);
 if (ver < 0x100 || ver > 0x4ff) return 0;
     if (ver == 0x0301) {

      sb_cmd(io, DSP_CMD_GETID);
      essver = (sb_get_byte(io) << 8) | sb_get_byte(io);
      rev = essver & 0x000f;
      essver &= 0xfff0;
      if (essver == 0x4880) ver |= 0x1000;
      else if (essver == 0x6880) ver = 0x0500 | rev;
 }
 return ver;
}
