
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct blame_origin {int refcnt; } ;



__attribute__((used)) static inline struct blame_origin *blame_origin_incref(struct blame_origin *o)
{
 if (o)
  o->refcnt++;
 return o;
}
