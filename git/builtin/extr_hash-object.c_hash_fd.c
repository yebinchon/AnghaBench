
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct stat {int dummy; } ;
struct object_id {int dummy; } ;
struct TYPE_2__ {int index; } ;


 unsigned int HASH_WRITE_OBJECT ;
 int die (char*,char const*) ;
 scalar_t__ fstat (int,struct stat*) ;
 scalar_t__ hash_literally (struct object_id*,int,char const*,unsigned int) ;
 scalar_t__ index_fd (int ,struct object_id*,int,struct stat*,int ,char const*,unsigned int) ;
 int maybe_flush_or_die (int ,char*) ;
 char* oid_to_hex (struct object_id*) ;
 int printf (char*,char*) ;
 int stdout ;
 TYPE_1__* the_repository ;
 int type_from_string (char const*) ;

__attribute__((used)) static void hash_fd(int fd, const char *type, const char *path, unsigned flags,
      int literally)
{
 struct stat st;
 struct object_id oid;

 if (fstat(fd, &st) < 0 ||
     (literally
      ? hash_literally(&oid, fd, type, flags)
      : index_fd(the_repository->index, &oid, fd, &st,
   type_from_string(type), path, flags)))
  die((flags & HASH_WRITE_OBJECT)
      ? "Unable to add %s to database"
      : "Unable to hash %s", path);
 printf("%s\n", oid_to_hex(&oid));
 maybe_flush_or_die(stdout, "hash to stdout");
}
