
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int hash; } ;
struct TYPE_2__ {int rawsz; } ;


 int memcpy (int ,unsigned char const*,int ) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static inline void oidread(struct object_id *oid, const unsigned char *hash)
{
 memcpy(oid->hash, hash, the_hash_algo->rawsz);
}
