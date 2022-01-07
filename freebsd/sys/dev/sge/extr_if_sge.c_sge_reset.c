
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sge_softc {int dummy; } ;


 int CSR_READ_4 (struct sge_softc*,int ) ;
 int CSR_WRITE_4 (struct sge_softc*,int ,int) ;
 int DELAY (int) ;
 int GMIIControl ;
 int IntrControl ;
 int IntrMask ;
 int IntrStatus ;
 int RX_CTL ;
 int TX_CTL ;

__attribute__((used)) static void
sge_reset(struct sge_softc *sc)
{

 CSR_WRITE_4(sc, IntrMask, 0);
 CSR_WRITE_4(sc, IntrStatus, 0xffffffff);


 CSR_WRITE_4(sc, IntrControl, 0x8000);
 CSR_READ_4(sc, IntrControl);
 DELAY(100);
 CSR_WRITE_4(sc, IntrControl, 0);

 CSR_WRITE_4(sc, TX_CTL, 0x1a00);
 CSR_WRITE_4(sc, RX_CTL, 0x1a00);

 CSR_WRITE_4(sc, IntrMask, 0);
 CSR_WRITE_4(sc, IntrStatus, 0xffffffff);

 CSR_WRITE_4(sc, GMIIControl, 0);
}
