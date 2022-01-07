
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sb_cc; } ;
struct TYPE_3__ {int sb_cc; } ;
struct xsocket {TYPE_2__ so_snd; TYPE_1__ so_rcv; } ;
struct xinpcb {int inp_vflag; int inp_inc; } ;
struct netinfo {int ni_sndcc; int ni_rcvcc; } ;


 struct netinfo* enter (int *,int ,int,char const*) ;

__attribute__((used)) static void
enter_sysctl(struct xinpcb *xip, struct xsocket *so, int state,
    const char *proto)
{
 struct netinfo *p;

 if ((p = enter(&xip->inp_inc, xip->inp_vflag, state, proto)) != ((void*)0)) {
  p->ni_rcvcc = so->so_rcv.sb_cc;
  p->ni_sndcc = so->so_snd.sb_cc;
 }
}
