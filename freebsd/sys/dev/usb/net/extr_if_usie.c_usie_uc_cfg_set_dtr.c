
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct ucom_softc {int dummy; } ;


 scalar_t__ USIE_LS_DTR ;
 int usie_uc_update_line_state (struct ucom_softc*,scalar_t__) ;

__attribute__((used)) static void
usie_uc_cfg_set_dtr(struct ucom_softc *ucom, uint8_t flag)
{
 uint8_t dtr;

 dtr = flag ? USIE_LS_DTR : 0;
 usie_uc_update_line_state(ucom, dtr);
}
