
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int null_oid ;
 int oideq (struct object_id const*,int *) ;

__attribute__((used)) static inline int is_null_oid(const struct object_id *oid)
{
 return oideq(oid, &null_oid);
}
