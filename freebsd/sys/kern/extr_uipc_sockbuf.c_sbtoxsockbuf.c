
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xsockbuf {int sb_timeo; int sb_flags; int sb_lowat; int sb_mbmax; int sb_ccnt; int sb_mcnt; int sb_mbcnt; int sb_hiwat; int sb_cc; } ;
struct sockbuf {int sb_timeo; int sb_flags; int sb_lowat; int sb_mbmax; int sb_ccnt; int sb_mcnt; int sb_mbcnt; int sb_hiwat; int sb_ccc; } ;



void
sbtoxsockbuf(struct sockbuf *sb, struct xsockbuf *xsb)
{

 xsb->sb_cc = sb->sb_ccc;
 xsb->sb_hiwat = sb->sb_hiwat;
 xsb->sb_mbcnt = sb->sb_mbcnt;
 xsb->sb_mcnt = sb->sb_mcnt;
 xsb->sb_ccnt = sb->sb_ccnt;
 xsb->sb_mbmax = sb->sb_mbmax;
 xsb->sb_lowat = sb->sb_lowat;
 xsb->sb_flags = sb->sb_flags;
 xsb->sb_timeo = sb->sb_timeo;
}
