
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atp_softc {int sc_n_strokes; int sc_stroke_used; int sc_stroke_free; } ;
typedef int atp_stroke_t ;


 int * TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,int *,int ) ;
 int TAILQ_REMOVE (int *,int *,int ) ;
 int entry ;
 int memset (int *,int ,int) ;

__attribute__((used)) static atp_stroke_t *
atp_alloc_stroke(struct atp_softc *sc)
{
 atp_stroke_t *pstroke;

 pstroke = TAILQ_FIRST(&sc->sc_stroke_free);
 if (pstroke == ((void*)0))
  goto done;

 TAILQ_REMOVE(&sc->sc_stroke_free, pstroke, entry);
 memset(pstroke, 0, sizeof(*pstroke));
 TAILQ_INSERT_TAIL(&sc->sc_stroke_used, pstroke, entry);

 sc->sc_n_strokes++;
done:
 return (pstroke);
}
