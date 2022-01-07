
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fhashentry6 {int dummy; } ;
struct fhashentry4 {int dummy; } ;
struct fhashentry {scalar_t__ af; } ;


 scalar_t__ AF_INET ;
 int hash_flow4 (struct fhashentry4*,int ) ;
 int hash_flow6 (struct fhashentry6*,int ) ;

__attribute__((used)) static uint32_t
hash_flow_ent(struct fhashentry *ent, uint32_t size)
{
 uint32_t hash;

 if (ent->af == AF_INET) {
  hash = hash_flow4((struct fhashentry4 *)ent, size);
 } else {
  hash = hash_flow6((struct fhashentry6 *)ent, size);
 }

 return (hash);
}
