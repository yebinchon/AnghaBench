
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;


 int PRUNE_PACKED_DRY_RUN ;
 int has_object_pack (struct object_id const*) ;
 int printf (char*,char const*) ;
 int unlink_or_warn (char const*) ;

__attribute__((used)) static int prune_object(const struct object_id *oid, const char *path,
    void *data)
{
 int *opts = data;

 if (!has_object_pack(oid))
  return 0;

 if (*opts & PRUNE_PACKED_DRY_RUN)
  printf("rm -f %s\n", path);
 else
  unlink_or_warn(path);
 return 0;
}
