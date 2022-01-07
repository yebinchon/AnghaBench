
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct atkbdc_softc {int retry; } ;


 int DELAY (int ) ;
 int KBDC_DELAYTIME ;
 int KBDD_DELAYTIME ;
 int KBDS_ANY_BUFFER_FULL ;
 int read_status (struct atkbdc_softc*) ;

__attribute__((used)) static int
wait_for_data(struct atkbdc_softc *kbdc)
{
    int retry;
    int f;


    retry = kbdc->retry * 2;

    while ((f = read_status(kbdc) & KBDS_ANY_BUFFER_FULL) == 0) {
        DELAY(KBDC_DELAYTIME);
        if (--retry < 0)
         return 0;
    }
    DELAY(KBDD_DELAYTIME);
    return f;
}
