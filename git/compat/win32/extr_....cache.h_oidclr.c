
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int hash; } ;


 int GIT_MAX_RAWSZ ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static inline void oidclr(struct object_id *oid)
{
 memset(oid->hash, 0, GIT_MAX_RAWSZ);
}
