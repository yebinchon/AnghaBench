
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uchcom_softc {int dummy; } ;


 int UCHCOM_REQ_SET_DTRRTS ;
 int uchcom_ctrl_write (struct uchcom_softc*,int ,int ,int ) ;

__attribute__((used)) static void
uchcom_set_dtr_rts_20(struct uchcom_softc *sc, uint8_t val)
{
 uchcom_ctrl_write(sc, UCHCOM_REQ_SET_DTRRTS, val, 0);
}
