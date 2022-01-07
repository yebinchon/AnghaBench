
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xformsw {int dummy; } ;
struct secasvar {int tdb_cryptoid; } ;
struct cryptoini {int dummy; } ;


 int V_crypto_support ;
 int ah_init0 (struct secasvar*,struct xformsw*,struct cryptoini*) ;
 int crypto_newsession (int *,struct cryptoini*,int ) ;

__attribute__((used)) static int
ah_init(struct secasvar *sav, struct xformsw *xsp)
{
 struct cryptoini cria;
 int error;

 error = ah_init0(sav, xsp, &cria);
 return error ? error :
   crypto_newsession(&sav->tdb_cryptoid, &cria, V_crypto_support);
}
