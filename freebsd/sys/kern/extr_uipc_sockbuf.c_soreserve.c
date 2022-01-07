
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u_long ;
struct thread {int dummy; } ;
struct TYPE_5__ {int sb_lowat; scalar_t__ sb_hiwat; } ;
struct socket {TYPE_1__ so_snd; TYPE_1__ so_rcv; } ;


 int ENOBUFS ;
 scalar_t__ MCLBYTES ;
 int SOCKBUF_LOCK (TYPE_1__*) ;
 int SOCKBUF_UNLOCK (TYPE_1__*) ;
 struct thread* curthread ;
 int sbrelease_locked (TYPE_1__*,struct socket*) ;
 scalar_t__ sbreserve_locked (TYPE_1__*,int ,struct socket*,struct thread*) ;

int
soreserve(struct socket *so, u_long sndcc, u_long rcvcc)
{
 struct thread *td = curthread;

 SOCKBUF_LOCK(&so->so_snd);
 SOCKBUF_LOCK(&so->so_rcv);
 if (sbreserve_locked(&so->so_snd, sndcc, so, td) == 0)
  goto bad;
 if (sbreserve_locked(&so->so_rcv, rcvcc, so, td) == 0)
  goto bad2;
 if (so->so_rcv.sb_lowat == 0)
  so->so_rcv.sb_lowat = 1;
 if (so->so_snd.sb_lowat == 0)
  so->so_snd.sb_lowat = MCLBYTES;
 if (so->so_snd.sb_lowat > so->so_snd.sb_hiwat)
  so->so_snd.sb_lowat = so->so_snd.sb_hiwat;
 SOCKBUF_UNLOCK(&so->so_rcv);
 SOCKBUF_UNLOCK(&so->so_snd);
 return (0);
bad2:
 sbrelease_locked(&so->so_snd, so);
bad:
 SOCKBUF_UNLOCK(&so->so_rcv);
 SOCKBUF_UNLOCK(&so->so_snd);
 return (ENOBUFS);
}
