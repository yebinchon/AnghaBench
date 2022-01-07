
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct repository {int dummy; } ;
struct blame_origin {int mode; int blob_oid; int path; TYPE_2__* commit; } ;
struct TYPE_3__ {int oid; } ;
struct TYPE_4__ {TYPE_1__ object; } ;


 scalar_t__ OBJ_BLOB ;
 int S_IFINVALID ;
 scalar_t__ get_tree_entry (struct repository*,int *,int ,int *,int *) ;
 int is_null_oid (int *) ;
 scalar_t__ oid_object_info (struct repository*,int *,int *) ;
 int oidclr (int *) ;

__attribute__((used)) static int fill_blob_sha1_and_mode(struct repository *r,
       struct blame_origin *origin)
{
 if (!is_null_oid(&origin->blob_oid))
  return 0;
 if (get_tree_entry(r, &origin->commit->object.oid, origin->path, &origin->blob_oid, &origin->mode))
  goto error_out;
 if (oid_object_info(r, &origin->blob_oid, ((void*)0)) != OBJ_BLOB)
  goto error_out;
 return 0;
 error_out:
 oidclr(&origin->blob_oid);
 origin->mode = S_IFINVALID;
 return -1;
}
