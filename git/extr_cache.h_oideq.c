
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int hash; } ;


 int hasheq (int ,int ) ;

__attribute__((used)) static inline int oideq(const struct object_id *oid1, const struct object_id *oid2)
{
 return hasheq(oid1->hash, oid2->hash);
}
