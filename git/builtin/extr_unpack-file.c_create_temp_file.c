
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
typedef int path ;
typedef enum object_type { ____Placeholder_object_type } object_type ;


 int OBJ_BLOB ;
 int close (int) ;
 int die (char*,int ) ;
 int die_errno (char*) ;
 int oid_to_hex (struct object_id*) ;
 void* read_object_file (struct object_id*,int*,unsigned long*) ;
 scalar_t__ write_in_full (int,void*,unsigned long) ;
 int xmkstemp (char*) ;
 int xsnprintf (char*,int,char*) ;

__attribute__((used)) static char *create_temp_file(struct object_id *oid)
{
 static char path[50];
 void *buf;
 enum object_type type;
 unsigned long size;
 int fd;

 buf = read_object_file(oid, &type, &size);
 if (!buf || type != OBJ_BLOB)
  die("unable to read blob object %s", oid_to_hex(oid));

 xsnprintf(path, sizeof(path), ".merge_file_XXXXXX");
 fd = xmkstemp(path);
 if (write_in_full(fd, buf, size) < 0)
  die_errno("unable to write temp-file");
 close(fd);
 return path;
}
