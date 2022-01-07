
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct secasvar {int * tdb_xform; TYPE_1__* key_auth; } ;
struct TYPE_2__ {int key_data; } ;


 int _KEYLEN (TYPE_1__*) ;
 int bzero (int ,int ) ;

__attribute__((used)) static int
tcpsignature_zeroize(struct secasvar *sav)
{

 if (sav->key_auth != ((void*)0))
  bzero(sav->key_auth->key_data, _KEYLEN(sav->key_auth));
 sav->tdb_xform = ((void*)0);
 return (0);
}
