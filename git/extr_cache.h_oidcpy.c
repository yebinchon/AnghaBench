
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int hash; } ;


 int GIT_MAX_RAWSZ ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static inline void oidcpy(struct object_id *dst, const struct object_id *src)
{
 memcpy(dst->hash, src->hash, GIT_MAX_RAWSZ);
}
