
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udl_softc {int sc_cmd_buf_free; int sc_mtx; int sc_cv; } ;
struct udl_cmd_buf {scalar_t__ off; } ;


 int M_WAITOK ;
 struct udl_cmd_buf* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct udl_cmd_buf*,int ) ;
 int cv_wait (int *,int *) ;
 int entry ;

__attribute__((used)) static struct udl_cmd_buf *
udl_cmd_buf_alloc_locked(struct udl_softc *sc, int flags)
{
 struct udl_cmd_buf *cb;

 while ((cb = TAILQ_FIRST(&sc->sc_cmd_buf_free)) == ((void*)0)) {
  if (flags != M_WAITOK)
   break;
  cv_wait(&sc->sc_cv, &sc->sc_mtx);
 }
 if (cb != ((void*)0)) {
  TAILQ_REMOVE(&sc->sc_cmd_buf_free, cb, entry);
  cb->off = 0;
 }
 return (cb);
}
