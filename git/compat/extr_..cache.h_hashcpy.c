
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rawsz; } ;


 int memcpy (unsigned char*,unsigned char const*,int ) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static inline void hashcpy(unsigned char *sha_dst, const unsigned char *sha_src)
{
 memcpy(sha_dst, sha_src, the_hash_algo->rawsz);
}
