
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {scalar_t__ sb_cc; scalar_t__ sb_hiwat; scalar_t__ sb_mbcnt; scalar_t__ sb_mbmax; } ;


 int DPRINT (char*,scalar_t__,scalar_t__,int,scalar_t__,scalar_t__,int) ;
 scalar_t__ sbused (struct sockbuf*) ;

__attribute__((used)) static int
sbfull(struct sockbuf *sb)
{

 DPRINT("sbfull, cc(%ld) >= hiwat(%ld): %d, "
     "mbcnt(%ld) >= mbmax(%ld): %d",
     sb->sb_cc, sb->sb_hiwat, sb->sb_cc >= sb->sb_hiwat,
     sb->sb_mbcnt, sb->sb_mbmax, sb->sb_mbcnt >= sb->sb_mbmax);
 return (sbused(sb) >= sb->sb_hiwat || sb->sb_mbcnt >= sb->sb_mbmax);
}
