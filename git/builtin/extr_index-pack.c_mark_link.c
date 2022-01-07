
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int type; int flags; int oid; } ;
struct fsck_options {int dummy; } ;


 int FLAG_LINK ;
 int OBJ_ANY ;
 int _ (char*) ;
 int die (int ,int ) ;
 int oid_to_hex (int *) ;

__attribute__((used)) static int mark_link(struct object *obj, int type, void *data, struct fsck_options *options)
{
 if (!obj)
  return -1;

 if (type != OBJ_ANY && obj->type != type)
  die(_("object type mismatch at %s"), oid_to_hex(&obj->oid));

 obj->flags |= FLAG_LINK;
 return 0;
}
