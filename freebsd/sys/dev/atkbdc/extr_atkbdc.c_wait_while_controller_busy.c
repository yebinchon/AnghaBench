
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atkbdc_softc {int retry; int aux; int kbd; } ;


 int DELAY (int ) ;
 int FALSE ;
 int KBDC_DELAYTIME ;
 int KBDD_DELAYTIME ;
 int KBDS_AUX_BUFFER_FULL ;
 int KBDS_BUFFER_FULL ;
 int KBDS_INPUT_BUFFER_FULL ;
 int KBDS_KBD_BUFFER_FULL ;
 int TRUE ;
 int addq (int *,int ) ;
 int read_data (struct atkbdc_softc*) ;
 int read_status (struct atkbdc_softc*) ;

__attribute__((used)) static int
wait_while_controller_busy(struct atkbdc_softc *kbdc)
{
    int retry;
    int f;


    retry = kbdc->retry;

    while ((f = read_status(kbdc)) & KBDS_INPUT_BUFFER_FULL) {
 if ((f & KBDS_BUFFER_FULL) == KBDS_KBD_BUFFER_FULL) {
     DELAY(KBDD_DELAYTIME);
     addq(&kbdc->kbd, read_data(kbdc));
 } else if ((f & KBDS_BUFFER_FULL) == KBDS_AUX_BUFFER_FULL) {
     DELAY(KBDD_DELAYTIME);
     addq(&kbdc->aux, read_data(kbdc));
 }
        DELAY(KBDC_DELAYTIME);
        if (--retry < 0)
         return FALSE;
    }
    return TRUE;
}
