
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sec_softc {int dummy; } ;


 int SEC_EUASR ;
 int SEC_EUASR_AESU (int ) ;
 int SEC_EUASR_AFEU (int ) ;
 int SEC_EUASR_CRCU (int ) ;
 int SEC_EUASR_DEU (int ) ;
 int SEC_EUASR_KEU (int ) ;
 int SEC_EUASR_MDEU (int ) ;
 int SEC_EUASR_PKEU (int ) ;
 int SEC_EUASR_RNGU (int ) ;
 int SEC_LOCK_ASSERT (struct sec_softc*,int ) ;
 int SEC_READ (struct sec_softc*,int ) ;
 int controller ;

__attribute__((used)) static int
sec_eu_channel(struct sec_softc *sc, int eu)
{
 uint64_t reg;
 int channel = 0;

 SEC_LOCK_ASSERT(sc, controller);

 reg = SEC_READ(sc, SEC_EUASR);

 switch (eu) {
 case 135:
  channel = SEC_EUASR_AFEU(reg);
  break;
 case 133:
  channel = SEC_EUASR_DEU(reg);
  break;
 case 131:
 case 130:
  channel = SEC_EUASR_MDEU(reg);
  break;
 case 128:
  channel = SEC_EUASR_RNGU(reg);
  break;
 case 129:
  channel = SEC_EUASR_PKEU(reg);
  break;
 case 136:
  channel = SEC_EUASR_AESU(reg);
  break;
 case 132:
  channel = SEC_EUASR_KEU(reg);
  break;
 case 134:
  channel = SEC_EUASR_CRCU(reg);
  break;
 }

 return (channel - 1);
}
