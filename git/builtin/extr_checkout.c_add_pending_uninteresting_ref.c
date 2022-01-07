
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int UNINTERESTING ;
 int add_pending_oid (void*,char const*,struct object_id const*,int ) ;

__attribute__((used)) static int add_pending_uninteresting_ref(const char *refname,
      const struct object_id *oid,
      int flags, void *cb_data)
{
 add_pending_oid(cb_data, refname, oid, UNINTERESTING);
 return 0;
}
