
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_snd; } ;


 int MA_NOTOWNED ;
 int SOCKBUF_LOCK (int *) ;
 int SOCKBUF_MTX (int *) ;
 int mtx_assert (int ,int ) ;
 int socantsendmore_locked (struct socket*) ;

void
socantsendmore(struct socket *so)
{

 SOCKBUF_LOCK(&so->so_snd);
 socantsendmore_locked(so);
 mtx_assert(SOCKBUF_MTX(&so->so_snd), MA_NOTOWNED);
}
