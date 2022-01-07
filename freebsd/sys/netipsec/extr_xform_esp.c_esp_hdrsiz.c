
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct secasvar {int flags; scalar_t__ replay; int * tdb_authalgxform; TYPE_1__* tdb_encalgxform; } ;
struct newesp {int dummy; } ;
struct esp {int dummy; } ;
struct TYPE_2__ {scalar_t__ blocksize; } ;


 int EALG_MAX_BLOCK_LEN ;
 int IPSEC_ASSERT (int ,char*) ;
 int SADB_X_EXT_OLD ;
 scalar_t__ ah_hdrsiz (struct secasvar*) ;

size_t
esp_hdrsiz(struct secasvar *sav)
{
 size_t size;

 if (sav != ((void*)0)) {

  IPSEC_ASSERT(sav->tdb_encalgxform != ((void*)0),
   ("SA with null xform"));
  if (sav->flags & SADB_X_EXT_OLD)
   size = sizeof (struct esp);
  else
   size = sizeof (struct newesp);
  size += sav->tdb_encalgxform->blocksize + 9;

  if (sav->tdb_authalgxform != ((void*)0) && sav->replay)
   size += ah_hdrsiz(sav);
 } else {
  size = sizeof (struct newesp) + EALG_MAX_BLOCK_LEN + 9 + 16;
 }
 return size;
}
