
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ic_softc {int ic_flags; char* ic_obuf; char* ic_ifbuf; int ic_lock; TYPE_1__* ic_ifp; } ;
struct TYPE_2__ {int if_mtu; } ;


 scalar_t__ ICHDRLEN ;
 int IC_BUFFERS_BUSY ;
 int IC_BUFFER_WAITER ;
 int M_DEVBUF ;
 int M_WAITOK ;
 int free (char*,int ) ;
 char* malloc (scalar_t__,int ,int ) ;
 int mtx_lock (int *) ;
 int mtx_sleep (struct ic_softc*,int *,int ,char*,int ) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static void
ic_alloc_buffers(struct ic_softc *sc, int mtu)
{
 char *obuf, *ifbuf;

 obuf = malloc(mtu + ICHDRLEN, M_DEVBUF, M_WAITOK);
 ifbuf = malloc(mtu + ICHDRLEN, M_DEVBUF, M_WAITOK);

 mtx_lock(&sc->ic_lock);
 while (sc->ic_flags & IC_BUFFERS_BUSY) {
  sc->ic_flags |= IC_BUFFER_WAITER;
  mtx_sleep(sc, &sc->ic_lock, 0, "icalloc", 0);
  sc->ic_flags &= ~IC_BUFFER_WAITER;
 }

 free(sc->ic_obuf, M_DEVBUF);
 free(sc->ic_ifbuf, M_DEVBUF);
 sc->ic_obuf = obuf;
 sc->ic_ifbuf = ifbuf;
 sc->ic_ifp->if_mtu = mtu;
 mtx_unlock(&sc->ic_lock);
}
