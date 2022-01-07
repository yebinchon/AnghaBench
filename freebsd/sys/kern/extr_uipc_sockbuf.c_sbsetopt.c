
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_long ;
typedef int u_int ;
struct sockbuf {short sb_flags; int sb_lowat; int sb_hiwat; } ;
struct socket {short sol_sbsnd_flags; short sol_sbrcv_flags; struct sockbuf so_rcv; struct sockbuf so_snd; int sol_sbrcv_hiwat; int sol_sbrcv_lowat; int sol_sbsnd_hiwat; int sol_sbsnd_lowat; } ;


 int ENOBUFS ;
 short SB_AUTOSIZE ;
 int SOCKBUF_LOCK (struct sockbuf*) ;
 int SOCKBUF_UNLOCK (struct sockbuf*) ;
 int SOCK_LOCK (struct socket*) ;
 int SOCK_UNLOCK (struct socket*) ;
 scalar_t__ SOLISTENING (struct socket*) ;




 int curthread ;
 int sb_max_adj ;
 int sbreserve_locked (struct sockbuf*,int ,struct socket*,int ) ;

int
sbsetopt(struct socket *so, int cmd, u_long cc)
{
 struct sockbuf *sb;
 short *flags;
 u_int *hiwat, *lowat;
 int error;

 sb = ((void*)0);
 SOCK_LOCK(so);
 if (SOLISTENING(so)) {
  switch (cmd) {
   case 128:
   case 129:
    lowat = &so->sol_sbsnd_lowat;
    hiwat = &so->sol_sbsnd_hiwat;
    flags = &so->sol_sbsnd_flags;
    break;
   case 130:
   case 131:
    lowat = &so->sol_sbrcv_lowat;
    hiwat = &so->sol_sbrcv_hiwat;
    flags = &so->sol_sbrcv_flags;
    break;
  }
 } else {
  switch (cmd) {
   case 128:
   case 129:
    sb = &so->so_snd;
    break;
   case 130:
   case 131:
    sb = &so->so_rcv;
    break;
  }
  flags = &sb->sb_flags;
  hiwat = &sb->sb_hiwat;
  lowat = &sb->sb_lowat;
  SOCKBUF_LOCK(sb);
 }

 error = 0;
 switch (cmd) {
 case 129:
 case 131:
  if (SOLISTENING(so)) {
   if (cc > sb_max_adj) {
    error = ENOBUFS;
    break;
   }
   *hiwat = cc;
   if (*lowat > *hiwat)
    *lowat = *hiwat;
  } else {
   if (!sbreserve_locked(sb, cc, so, curthread))
    error = ENOBUFS;
  }
  if (error == 0)
   *flags &= ~SB_AUTOSIZE;
  break;
 case 128:
 case 130:




  *lowat = (cc > *hiwat) ? *hiwat : cc;
  break;
 }

 if (!SOLISTENING(so))
  SOCKBUF_UNLOCK(sb);
 SOCK_UNLOCK(so);
 return (error);
}
