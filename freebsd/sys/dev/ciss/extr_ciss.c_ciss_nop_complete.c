
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ciss_softc {int dummy; } ;
struct ciss_request {struct ciss_softc* cr_sc; } ;


 int ciss_printf (struct ciss_softc*,char*) ;
 int ciss_release_request (struct ciss_request*) ;
 scalar_t__ ciss_report_request (struct ciss_request*,int *,int *) ;

__attribute__((used)) static void
ciss_nop_complete(struct ciss_request *cr)
{
    struct ciss_softc *sc;
    static int first_time = 1;

    sc = cr->cr_sc;
    if (ciss_report_request(cr, ((void*)0), ((void*)0)) != 0) {
 if (first_time == 1) {
     first_time = 0;
     ciss_printf(sc, "SENDING NOP MESSAGE FAILED (not logging anymore)\n");
 }
    }

    ciss_release_request(cr);
}
