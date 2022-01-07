
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int AR_QCBRCFG (int) ;
 int AR_QMISC (int) ;
 int AR_QRDYTIMECFG (int) ;
 int AR_QSTS (int) ;
 int AR_QTXDP (int) ;
 int AR_Q_ONESHOTARM_CC ;
 int AR_Q_ONESHOTARM_SC ;
 int AR_Q_RDYTIMESHDN ;
 int AR_Q_TXD ;
 int AR_Q_TXE ;
 int OS_REG_READ (int ,int ) ;
 int ah ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
ath_hal_dumpqcu(FILE *fd, int what)
{
 int i;


 fprintf(fd, "%-8s %08x  %-8s %08x  %-8s %08x\n"
  , "Q_TXE", OS_REG_READ(ah, AR_Q_TXE)
  , "Q_TXD", OS_REG_READ(ah, AR_Q_TXD)
  , "Q_RDYTIMSHD", OS_REG_READ(ah, AR_Q_RDYTIMESHDN)
 );
 fprintf(fd, "Q_ONESHOTARM_SC %08x  Q_ONESHOTARM_CC %08x\n"
  , OS_REG_READ(ah, AR_Q_ONESHOTARM_SC)
  , OS_REG_READ(ah, AR_Q_ONESHOTARM_CC)
 );
 for (i = 0; i < 10; i++)
  fprintf(fd, "Q[%u] TXDP %08x CBR %08x RDYT %08x MISC %08x STS %08x\n"
   , i
   , OS_REG_READ(ah, AR_QTXDP(i))
   , OS_REG_READ(ah, AR_QCBRCFG(i))
   , OS_REG_READ(ah, AR_QRDYTIMECFG(i))
   , OS_REG_READ(ah, AR_QMISC(i))
   , OS_REG_READ(ah, AR_QSTS(i))
  );
}
