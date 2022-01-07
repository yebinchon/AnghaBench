
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct treeent {unsigned int mode; size_t len; int oid; } ;
struct object_id {int dummy; } ;


 int ALLOC_GROW (struct treeent**,scalar_t__,int ) ;
 int FLEX_ALLOC_MEM (struct treeent*,int ,char*,size_t) ;
 int alloc ;
 int die (char*,char*) ;
 struct treeent** entries ;
 int name ;
 int oidcpy (int *,struct object_id*) ;
 scalar_t__ strchr (char*,char) ;
 size_t strlen (char*) ;
 scalar_t__ used ;

__attribute__((used)) static void append_to_tree(unsigned mode, struct object_id *oid, char *path)
{
 struct treeent *ent;
 size_t len = strlen(path);
 if (strchr(path, '/'))
  die("path %s contains slash", path);

 FLEX_ALLOC_MEM(ent, name, path, len);
 ent->mode = mode;
 ent->len = len;
 oidcpy(&ent->oid, oid);

 ALLOC_GROW(entries, used + 1, alloc);
 entries[used++] = ent;
}
