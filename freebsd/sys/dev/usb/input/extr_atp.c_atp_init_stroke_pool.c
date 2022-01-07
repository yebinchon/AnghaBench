
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct atp_softc {int * sc_strokes_data; int sc_stroke_free; scalar_t__ sc_n_strokes; int sc_stroke_used; } ;


 size_t ATP_MAX_STROKES ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,int *,int ) ;
 int entry ;
 int memset (int **,int ,int) ;

__attribute__((used)) static void
atp_init_stroke_pool(struct atp_softc *sc)
{
 u_int x;

 TAILQ_INIT(&sc->sc_stroke_free);
 TAILQ_INIT(&sc->sc_stroke_used);

 sc->sc_n_strokes = 0;

 memset(&sc->sc_strokes_data, 0, sizeof(sc->sc_strokes_data));

 for (x = 0; x != ATP_MAX_STROKES; x++) {
  TAILQ_INSERT_TAIL(&sc->sc_stroke_free, &sc->sc_strokes_data[x],
      entry);
 }
}
