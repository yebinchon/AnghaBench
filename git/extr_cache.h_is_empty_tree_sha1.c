
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* empty_tree; } ;
struct TYPE_3__ {int hash; } ;


 int hasheq (unsigned char const*,int ) ;
 TYPE_2__* the_hash_algo ;

__attribute__((used)) static inline int is_empty_tree_sha1(const unsigned char *sha1)
{
 return hasheq(sha1, the_hash_algo->empty_tree->hash);
}
