
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct umoscom_softc {int dummy; } ;
struct ucom_softc {struct umoscom_softc* sc_parent; } ;


 int DPRINTFN (int,char*) ;
 int SER_CTS ;
 int SER_DCD ;
 int SER_DSR ;
 int SER_RI ;
 int UMOSCOM_LSR ;
 int UMOSCOM_MSR ;
 int UMOSCOM_MSR_CD ;
 int UMOSCOM_MSR_CTS ;
 int UMOSCOM_MSR_RI ;
 int UMOSCOM_MSR_RTS ;
 int umoscom_cfg_read (struct umoscom_softc*,int ) ;

__attribute__((used)) static void
umoscom_cfg_get_status(struct ucom_softc *ucom, uint8_t *p_lsr, uint8_t *p_msr)
{
 struct umoscom_softc *sc = ucom->sc_parent;
 uint8_t msr;

 DPRINTFN(5, "\n");






 *p_lsr = umoscom_cfg_read(sc, UMOSCOM_LSR);
 msr = umoscom_cfg_read(sc, UMOSCOM_MSR);



 if (msr & UMOSCOM_MSR_CTS)
  *p_msr |= SER_CTS;

 if (msr & UMOSCOM_MSR_CD)
  *p_msr |= SER_DCD;

 if (msr & UMOSCOM_MSR_RI)
  *p_msr |= SER_RI;

 if (msr & UMOSCOM_MSR_RTS)
  *p_msr |= SER_DSR;
}
