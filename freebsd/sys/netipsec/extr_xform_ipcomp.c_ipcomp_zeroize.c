
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct secasvar {int * tdb_cryptoid; } ;


 int crypto_freesession (int *) ;

__attribute__((used)) static int
ipcomp_zeroize(struct secasvar *sav)
{

 crypto_freesession(sav->tdb_cryptoid);
 sav->tdb_cryptoid = ((void*)0);
 return 0;
}
