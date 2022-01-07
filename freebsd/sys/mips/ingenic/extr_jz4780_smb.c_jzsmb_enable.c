
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jzsmb_softc {int dummy; } ;


 int SMBENB ;
 int SMBENBST ;
 int SMBENBST_SMBEN ;
 int SMBENB_SMBENB ;
 int SMB_ASSERT_LOCKED (struct jzsmb_softc*) ;
 int SMB_READ (struct jzsmb_softc*,int ) ;
 int SMB_WRITE (struct jzsmb_softc*,int ,int ) ;

__attribute__((used)) static int
jzsmb_enable(struct jzsmb_softc *sc, int enable)
{
 SMB_ASSERT_LOCKED(sc);

 if (enable) {
  SMB_WRITE(sc, SMBENB, SMBENB_SMBENB);
  while ((SMB_READ(sc, SMBENBST) & SMBENBST_SMBEN) == 0)
   ;
 } else {
  SMB_WRITE(sc, SMBENB, 0);
  while ((SMB_READ(sc, SMBENBST) & SMBENBST_SMBEN) != 0)
   ;
 }

 return (0);
}
