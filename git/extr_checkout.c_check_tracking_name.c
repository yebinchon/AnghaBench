
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tracking_name_data {int dst_ref; struct object_id* default_dst_oid; int dst_oid; int default_dst_ref; scalar_t__ default_remote; int num_matches; int src_ref; } ;
struct remote {int name; } ;
struct refspec_item {int dst; int src; } ;
struct object_id {int dummy; } ;


 int free (int ) ;
 scalar_t__ get_oid (int ,int ) ;
 int memset (struct refspec_item*,int ,int) ;
 int oidcpy (struct object_id*,int ) ;
 scalar_t__ remote_find_tracking (struct remote*,struct refspec_item*) ;
 int strcmp (int ,scalar_t__) ;
 struct object_id* xmalloc (int) ;
 int xstrdup (int ) ;

__attribute__((used)) static int check_tracking_name(struct remote *remote, void *cb_data)
{
 struct tracking_name_data *cb = cb_data;
 struct refspec_item query;
 memset(&query, 0, sizeof(struct refspec_item));
 query.src = cb->src_ref;
 if (remote_find_tracking(remote, &query) ||
     get_oid(query.dst, cb->dst_oid)) {
  free(query.dst);
  return 0;
 }
 cb->num_matches++;
 if (cb->default_remote && !strcmp(remote->name, cb->default_remote)) {
  struct object_id *dst = xmalloc(sizeof(*cb->default_dst_oid));
  cb->default_dst_ref = xstrdup(query.dst);
  oidcpy(dst, cb->dst_oid);
  cb->default_dst_oid = dst;
 }
 if (cb->dst_ref) {
  free(query.dst);
  return 0;
 }
 cb->dst_ref = query.dst;
 return 0;
}
