
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {int dummy; } ;


 int CISS_TL_PERF_CLEAR_INT (struct ciss_softc*) ;
 int CISS_TL_PERF_FLUSH_INT (struct ciss_softc*) ;
 int ciss_perf_msi_intr (struct ciss_softc*) ;

__attribute__((used)) static void
ciss_perf_intr(void *arg)
{
    struct ciss_softc *sc = (struct ciss_softc *)arg;




    CISS_TL_PERF_CLEAR_INT(sc);
    CISS_TL_PERF_FLUSH_INT(sc);

    ciss_perf_msi_intr(sc);
}
