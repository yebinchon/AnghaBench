
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_softc {int dummy; } ;


 int INB (struct ipmi_softc*,int ) ;
 int OUTB (struct ipmi_softc*,int ,int) ;
 int SMIC_FLAGS ;
 int SMIC_STATUS_BUSY ;
 int SMIC_STATUS_RESERVED ;

__attribute__((used)) static void
smic_set_busy(struct ipmi_softc *sc)
{
 int flags;

 flags = INB(sc, SMIC_FLAGS);
 flags |= SMIC_STATUS_BUSY;
 flags &= ~SMIC_STATUS_RESERVED;
 OUTB(sc, SMIC_FLAGS, flags);
}
