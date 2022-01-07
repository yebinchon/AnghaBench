
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {scalar_t__ sb_hiwat; scalar_t__ sb_mbcnt; scalar_t__ sb_mbmax; } ;
struct socket {struct sockbuf so_rcv; } ;


 scalar_t__ DNS_WAIT ;
 int SU_ISCONNECTED ;
 int SU_OK ;
 scalar_t__ sbused (struct sockbuf*) ;
 scalar_t__ skippacket (struct sockbuf*) ;

__attribute__((used)) static int
sohasdns(struct socket *so, void *arg, int waitflag)
{
 struct sockbuf *sb = &so->so_rcv;


 if (sbused(sb) >= sb->sb_hiwat || sb->sb_mbcnt >= sb->sb_mbmax)
  goto ready;


 if (skippacket(sb) == DNS_WAIT)
  return (SU_OK);

ready:
 return (SU_ISCONNECTED);
}
