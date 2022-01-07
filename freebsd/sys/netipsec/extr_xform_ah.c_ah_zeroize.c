
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct secasvar {int * tdb_xform; int * tdb_authalgxform; int * tdb_cryptoid; TYPE_1__* key_auth; } ;
struct TYPE_2__ {int key_data; } ;


 int _KEYLEN (TYPE_1__*) ;
 int bzero (int ,int ) ;
 int crypto_freesession (int *) ;

int
ah_zeroize(struct secasvar *sav)
{

 if (sav->key_auth)
  bzero(sav->key_auth->key_data, _KEYLEN(sav->key_auth));

 crypto_freesession(sav->tdb_cryptoid);
 sav->tdb_cryptoid = ((void*)0);
 sav->tdb_authalgxform = ((void*)0);
 sav->tdb_xform = ((void*)0);
 return 0;
}
