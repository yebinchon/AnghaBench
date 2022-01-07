
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atp_softc {int sc_stroke_free; int sc_stroke_used; int sc_n_strokes; } ;
typedef int atp_stroke_t ;


 int TAILQ_INSERT_TAIL (int *,int *,int ) ;
 int TAILQ_REMOVE (int *,int *,int ) ;
 int entry ;

__attribute__((used)) static void
atp_free_stroke(struct atp_softc *sc, atp_stroke_t *pstroke)
{
 if (pstroke == ((void*)0))
  return;

 sc->sc_n_strokes--;

 TAILQ_REMOVE(&sc->sc_stroke_used, pstroke, entry);
 TAILQ_INSERT_TAIL(&sc->sc_stroke_free, pstroke, entry);
}
