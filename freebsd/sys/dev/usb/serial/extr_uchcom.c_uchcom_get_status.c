
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct uchcom_softc {int dummy; } ;


 int UCHCOM_REG_STAT1 ;
 int UCHCOM_REG_STAT2 ;
 int uchcom_read_reg (struct uchcom_softc*,int ,int *,int ,int *) ;

__attribute__((used)) static void
uchcom_get_status(struct uchcom_softc *sc, uint8_t *rval)
{
 uchcom_read_reg(sc, UCHCOM_REG_STAT1, rval, UCHCOM_REG_STAT2, ((void*)0));
}
