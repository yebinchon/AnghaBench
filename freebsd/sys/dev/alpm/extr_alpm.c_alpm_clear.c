
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct alpm_softc {int dummy; } ;


 int ALPM_SMBOUTB (struct alpm_softc*,int ,int) ;
 int DELAY (int) ;
 int SMBSTS ;

__attribute__((used)) static int
alpm_clear(struct alpm_softc *sc)
{
 ALPM_SMBOUTB(sc, SMBSTS, 0xff);
 DELAY(10);

 return (0);
}
