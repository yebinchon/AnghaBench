
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int flags; } ;
struct fsck_options {int dummy; } ;


 int USED ;

__attribute__((used)) static int mark_used(struct object *obj, int type, void *data, struct fsck_options *options)
{
 if (!obj)
  return 1;
 obj->flags |= USED;
 return 0;
}
