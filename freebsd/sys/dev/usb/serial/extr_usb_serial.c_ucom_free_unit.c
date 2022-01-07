
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucom_super_softc {int sc_flag; int sc_unit; } ;


 int UCOM_FLAG_FREE_UNIT ;
 int ucom_unit_free (int ) ;

__attribute__((used)) static void
ucom_free_unit(struct ucom_super_softc *ssc)
{
 if (!(ssc->sc_flag & UCOM_FLAG_FREE_UNIT))
  return;

 ucom_unit_free(ssc->sc_unit);

 ssc->sc_flag &= ~UCOM_FLAG_FREE_UNIT;
}
