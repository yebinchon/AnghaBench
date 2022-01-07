
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {int dummy; } ;


 int CISS_TL_SIMPLE_IDBR ;
 int CISS_TL_SIMPLE_IDBR_CFG_TABLE ;
 int CISS_TL_SIMPLE_READ (struct ciss_softc*,int ) ;
 int CISS_TL_SIMPLE_WRITE (struct ciss_softc*,int ,int) ;
 int DELAY (int) ;
 int debug_called (int) ;

__attribute__((used)) static int
ciss_update_config(struct ciss_softc *sc)
{
    int i;

    debug_called(1);

    CISS_TL_SIMPLE_WRITE(sc, CISS_TL_SIMPLE_IDBR, CISS_TL_SIMPLE_IDBR_CFG_TABLE);
    for (i = 0; i < 1000; i++) {
 if (!(CISS_TL_SIMPLE_READ(sc, CISS_TL_SIMPLE_IDBR) &
       CISS_TL_SIMPLE_IDBR_CFG_TABLE)) {
     return(0);
 }
 DELAY(1000);
    }
    return(1);
}
