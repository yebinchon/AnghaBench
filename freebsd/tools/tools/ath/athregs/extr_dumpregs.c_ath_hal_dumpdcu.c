
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int AR_DCHNTIME (int) ;
 int AR_DLCL_IFS (int) ;
 int AR_DMISC (int) ;
 int AR_DQCUMASK (int) ;
 int AR_DRETRY_LIMIT (int) ;
 int OS_REG_READ (int ,int ) ;
 int ah ;
 int fprintf (int *,char*,int,int,int,int,int,int) ;

__attribute__((used)) static void
ath_hal_dumpdcu(FILE *fd, int what)
{
 int i;


 for (i = 0; i < 10; i++)
  fprintf(fd, "D[%u] MASK %08x IFS %08x RTRY %08x CHNT %08x MISC %06x\n"
   , i
   , OS_REG_READ(ah, AR_DQCUMASK(i))
   , OS_REG_READ(ah, AR_DLCL_IFS(i))
   , OS_REG_READ(ah, AR_DRETRY_LIMIT(i))
   , OS_REG_READ(ah, AR_DCHNTIME(i))
   , OS_REG_READ(ah, AR_DMISC(i))
  );
}
