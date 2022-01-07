
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int AR_IMR ;
 int AR_IMR_S0 ;
 int AR_IMR_S1 ;
 int AR_IMR_S2 ;
 int AR_IMR_S3 ;
 int AR_IMR_S4 ;
 int AR_ISR ;
 int AR_ISR_S0 ;
 int AR_ISR_S1 ;
 int AR_ISR_S2 ;
 int AR_ISR_S3 ;
 int AR_ISR_S4 ;
 int OS_REG_READ (int ,int ) ;
 int ah ;
 int fprintf (int *,char*,int,int,int,int,int,int) ;

__attribute__((used)) static void
ath_hal_dumpint(FILE *fd, int what)
{
 int i;


 fprintf(fd, "IMR: %08x S0 %08x S1 %08x S2 %08x S3 %08x S4 %08x\n"
  , OS_REG_READ(ah, AR_IMR)
  , OS_REG_READ(ah, AR_IMR_S0)
  , OS_REG_READ(ah, AR_IMR_S1)
  , OS_REG_READ(ah, AR_IMR_S2)
  , OS_REG_READ(ah, AR_IMR_S3)
  , OS_REG_READ(ah, AR_IMR_S4)
 );
 fprintf(fd, "ISR: %08x S0 %08x S1 %08x S2 %08x S3 %08x S4 %08x\n"
  , OS_REG_READ(ah, AR_ISR)
  , OS_REG_READ(ah, AR_ISR_S0)
  , OS_REG_READ(ah, AR_ISR_S1)
  , OS_REG_READ(ah, AR_ISR_S2)
  , OS_REG_READ(ah, AR_ISR_S3)
  , OS_REG_READ(ah, AR_ISR_S4)
 );
}
