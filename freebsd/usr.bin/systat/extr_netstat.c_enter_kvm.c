
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int sb_ccc; } ;
struct TYPE_3__ {int sb_ccc; } ;
struct socket {TYPE_2__ so_snd; TYPE_1__ so_rcv; } ;
struct netinfo {int ni_sndcc; int ni_rcvcc; } ;
struct inpcb {int inp_vflag; int inp_inc; } ;


 struct netinfo* enter (int *,int ,int,char const*) ;

__attribute__((used)) static void
enter_kvm(struct inpcb *inp, struct socket *so, int state, const char *proto)
{
 struct netinfo *p;

 if ((p = enter(&inp->inp_inc, inp->inp_vflag, state, proto)) != ((void*)0)) {
  p->ni_rcvcc = so->so_rcv.sb_ccc;
  p->ni_sndcc = so->so_snd.sb_ccc;
 }
}
