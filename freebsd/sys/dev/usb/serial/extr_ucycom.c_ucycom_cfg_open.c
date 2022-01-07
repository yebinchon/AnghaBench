
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucycom_softc {int dummy; } ;
struct ucom_softc {struct ucycom_softc* sc_parent; } ;


 int UCYCOM_DEFAULT_CFG ;
 int UCYCOM_DEFAULT_RATE ;
 int ucycom_cfg_write (struct ucycom_softc*,int ,int ) ;

__attribute__((used)) static void
ucycom_cfg_open(struct ucom_softc *ucom)
{
 struct ucycom_softc *sc = ucom->sc_parent;


 ucycom_cfg_write(sc, UCYCOM_DEFAULT_RATE, UCYCOM_DEFAULT_CFG);
}
