
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int oidcpy (struct object_id*,struct object_id const*) ;
 struct object_id* xmalloc (int) ;

__attribute__((used)) static inline struct object_id *oiddup(const struct object_id *src)
{
 struct object_id *dst = xmalloc(sizeof(struct object_id));
 oidcpy(dst, src);
 return dst;
}
