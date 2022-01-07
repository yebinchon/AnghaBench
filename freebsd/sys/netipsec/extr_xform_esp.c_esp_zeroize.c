
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct secasvar {int * tdb_xform; int * tdb_encalgxform; TYPE_1__* key_enc; } ;
struct TYPE_2__ {int key_data; } ;


 int _KEYLEN (TYPE_1__*) ;
 int ah_zeroize (struct secasvar*) ;
 int bzero (int ,int ) ;

__attribute__((used)) static int
esp_zeroize(struct secasvar *sav)
{

 int error = ah_zeroize(sav);

 if (sav->key_enc)
  bzero(sav->key_enc->key_data, _KEYLEN(sav->key_enc));
 sav->tdb_encalgxform = ((void*)0);
 sav->tdb_xform = ((void*)0);
 return error;
}
