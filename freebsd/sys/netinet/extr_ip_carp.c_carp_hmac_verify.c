
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct carp_softc {int dummy; } ;
typedef int md2 ;


 int CARP_LOCK_ASSERT (struct carp_softc*) ;
 int bcmp (unsigned char*,unsigned char*,int) ;
 int carp_hmac_generate (struct carp_softc*,int *,unsigned char*) ;

__attribute__((used)) static int
carp_hmac_verify(struct carp_softc *sc, uint32_t counter[2],
    unsigned char md[20])
{
 unsigned char md2[20];

 CARP_LOCK_ASSERT(sc);

 carp_hmac_generate(sc, counter, md2);

 return (bcmp(md, md2, sizeof(md2)));
}
