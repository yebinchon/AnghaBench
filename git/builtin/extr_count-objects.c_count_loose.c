
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct object_id {int dummy; } ;


 int S_ISREG (int ) ;
 scalar_t__ has_object_pack (struct object_id const*) ;
 int loose ;
 int loose_garbage (char const*) ;
 int loose_size ;
 scalar_t__ lstat (char const*,struct stat*) ;
 scalar_t__ on_disk_bytes (struct stat) ;
 int packed_loose ;
 scalar_t__ verbose ;

__attribute__((used)) static int count_loose(const struct object_id *oid, const char *path, void *data)
{
 struct stat st;

 if (lstat(path, &st) || !S_ISREG(st.st_mode))
  loose_garbage(path);
 else {
  loose_size += on_disk_bytes(st);
  loose++;
  if (verbose && has_object_pack(oid))
   packed_loose++;
 }
 return 0;
}
