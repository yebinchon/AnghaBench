
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct au_info {int dummy; } ;
struct au_chinfo {int buffer; struct au_info* parent; } ;


 int AFMT_CHANNEL (int) ;
 int AFMT_ENCODING (int) ;
 int au_addroute (struct au_info*,int,int,int) ;
 int au_wr (struct au_info*,int ,int,int,int) ;
 int sndbuf_getbufaddr (int ) ;

__attribute__((used)) static void
au_prepareoutput(struct au_chinfo *ch, u_int32_t format)
{
 struct au_info *au = ch->parent;
 int i, stereo = (AFMT_CHANNEL(format) > 1)? 1 : 0;
 u_int32_t baseaddr = sndbuf_getbufaddr(ch->buffer);

 au_wr(au, 0, 0x1061c, 0, 4);
 au_wr(au, 0, 0x10620, 0, 4);
 au_wr(au, 0, 0x10624, 0, 4);
 switch(AFMT_ENCODING(format)) {
  case 1:
   i=0xb000;
   break;
  case 2:
   i=0xf000;
   break;
   case 8:
   i=0x7000;
   break;
  case 16:
   i=0x23000;
   break;
  default:
   i=0x3000;
 }
 au_wr(au, 0, 0x10200, baseaddr, 4);
 au_wr(au, 0, 0x10204, baseaddr+0x1000, 4);
 au_wr(au, 0, 0x10208, baseaddr+0x2000, 4);
 au_wr(au, 0, 0x1020c, baseaddr+0x3000, 4);

 au_wr(au, 0, 0x10400, 0xdeffffff, 4);
 au_wr(au, 0, 0x10404, 0xfcffffff, 4);

 au_wr(au, 0, 0x10580, i, 4);

 au_wr(au, 0, 0x10210, baseaddr, 4);
 au_wr(au, 0, 0x10214, baseaddr+0x1000, 4);
 au_wr(au, 0, 0x10218, baseaddr+0x2000, 4);
 au_wr(au, 0, 0x1021c, baseaddr+0x3000, 4);

 au_wr(au, 0, 0x10408, 0x00fff000 | 0x56000000 | 0x00000fff, 4);
 au_wr(au, 0, 0x1040c, 0x00fff000 | 0x74000000 | 0x00000fff, 4);

 au_wr(au, 0, 0x10584, i, 4);

 au_wr(au, 0, 0x0f800, stereo? 0x00030032 : 0x00030030, 4);
 au_wr(au, 0, 0x0f804, stereo? 0x00030032 : 0x00030030, 4);

 au_addroute(au, 0x11, 0, 0x58);
 au_addroute(au, 0x11, stereo? 0 : 1, 0x59);
}
