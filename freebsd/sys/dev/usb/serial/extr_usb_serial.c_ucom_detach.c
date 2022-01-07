
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_super_softc {int sc_flag; int sc_subunits; int sc_tq; int * sc_sysctl_ttyports; int * sc_sysctl_ttyname; } ;
struct ucom_softc {int sc_flag; } ;


 int UCOM_FLAG_ATTACHED ;
 int UCOM_FLAG_WAIT_REFS ;
 int sysctl_remove_oid (int *,int,int ) ;
 int ucom_detach_tty (struct ucom_super_softc*,struct ucom_softc*) ;
 int ucom_drain (struct ucom_super_softc*) ;
 int ucom_unref (struct ucom_super_softc*) ;
 int usb_proc_drain (int *) ;
 int usb_proc_free (int *) ;

void
ucom_detach(struct ucom_super_softc *ssc, struct ucom_softc *sc)
{
 int subunit;

 if (!(ssc->sc_flag & UCOM_FLAG_ATTACHED))
  return;

 if (ssc->sc_sysctl_ttyname != ((void*)0)) {
  sysctl_remove_oid(ssc->sc_sysctl_ttyname, 1, 0);
  ssc->sc_sysctl_ttyname = ((void*)0);
 }

 if (ssc->sc_sysctl_ttyports != ((void*)0)) {
  sysctl_remove_oid(ssc->sc_sysctl_ttyports, 1, 0);
  ssc->sc_sysctl_ttyports = ((void*)0);
 }

 usb_proc_drain(&ssc->sc_tq);

 for (subunit = 0; subunit < ssc->sc_subunits; subunit++) {
  if (sc[subunit].sc_flag & UCOM_FLAG_ATTACHED) {

   ucom_detach_tty(ssc, &sc[subunit]);


   sc[subunit].sc_flag &= ~UCOM_FLAG_ATTACHED;
  }
 }
 usb_proc_free(&ssc->sc_tq);

 ucom_unref(ssc);

 if (ssc->sc_flag & UCOM_FLAG_WAIT_REFS)
  ucom_drain(ssc);


 ssc->sc_flag &= ~UCOM_FLAG_ATTACHED;
}
