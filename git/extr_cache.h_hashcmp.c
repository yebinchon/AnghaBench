
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ rawsz; } ;


 scalar_t__ GIT_MAX_RAWSZ ;
 scalar_t__ GIT_SHA1_RAWSZ ;
 int memcmp (unsigned char const*,unsigned char const*,scalar_t__) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static inline int hashcmp(const unsigned char *sha1, const unsigned char *sha2)
{




 if (the_hash_algo->rawsz == GIT_MAX_RAWSZ)
  return memcmp(sha1, sha2, GIT_MAX_RAWSZ);
 return memcmp(sha1, sha2, GIT_SHA1_RAWSZ);
}
