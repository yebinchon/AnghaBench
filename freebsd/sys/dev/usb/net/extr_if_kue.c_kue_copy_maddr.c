
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
struct sockaddr_dl {int dummy; } ;
struct kue_softc {int dummy; } ;


 int ETHER_ADDR_LEN ;
 int KUE_MCFILT (struct kue_softc*,scalar_t__) ;
 scalar_t__ KUE_MCFILTCNT (struct kue_softc*) ;
 int LLADDR (struct sockaddr_dl*) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static u_int
kue_copy_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct kue_softc *sc = arg;

 if (cnt >= KUE_MCFILTCNT(sc))
  return (1);

 memcpy(KUE_MCFILT(sc, cnt), LLADDR(sdl), ETHER_ADDR_LEN);

 return (1);
}
