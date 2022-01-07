
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sec_softc {int dummy; } ;
struct sec_session {int dummy; } ;
struct cryptoini {int cri_alg; } ;


 scalar_t__ sec_mdeu_can_handle (int ) ;

__attribute__((used)) static int
sec_mdeu_newsession(struct sec_softc *sc, struct sec_session *ses,
    struct cryptoini *enc, struct cryptoini *mac)
{

 if (mac && sec_mdeu_can_handle(mac->cri_alg))
  return (0);

 return (-1);
}
