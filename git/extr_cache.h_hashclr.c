
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int rawsz; } ;


 int memset (unsigned char*,int ,int ) ;
 TYPE_1__* the_hash_algo ;

__attribute__((used)) static inline void hashclr(unsigned char *hash)
{
 memset(hash, 0, the_hash_algo->rawsz);
}
