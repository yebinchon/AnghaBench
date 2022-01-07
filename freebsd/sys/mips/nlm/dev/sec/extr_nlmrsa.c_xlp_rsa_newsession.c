
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xlp_rsa_softc {int dummy; } ;
struct cryptoini {int dummy; } ;
typedef int device_t ;
typedef int crypto_session_t ;


 int EINVAL ;
 struct xlp_rsa_softc* device_get_softc (int ) ;

__attribute__((used)) static int
xlp_rsa_newsession(device_t dev, crypto_session_t cses, struct cryptoini *cri)
{
 struct xlp_rsa_softc *sc = device_get_softc(dev);

 if (cri == ((void*)0) || sc == ((void*)0))
  return (EINVAL);

 return (0);
}
