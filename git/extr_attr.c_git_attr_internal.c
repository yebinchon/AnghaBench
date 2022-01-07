
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef struct git_attr {int attr_nr; int name; } const git_attr ;
struct TYPE_6__ {int map; } ;


 int FLEX_ALLOC_MEM (struct git_attr const*,char const*,char const*,int) ;
 int assert (int) ;
 int attr_hashmap_add (TYPE_1__*,int ,int,struct git_attr const*) ;
 struct git_attr const* attr_hashmap_get (TYPE_1__*,char const*,int) ;
 int attr_name_valid (char const*,int) ;
 TYPE_1__ g_attr_hashmap ;
 int hashmap_get_size (int *) ;
 int hashmap_lock (TYPE_1__*) ;
 int hashmap_unlock (TYPE_1__*) ;

__attribute__((used)) static const struct git_attr *git_attr_internal(const char *name, int namelen)
{
 struct git_attr *a;

 if (!attr_name_valid(name, namelen))
  return ((void*)0);

 hashmap_lock(&g_attr_hashmap);

 a = attr_hashmap_get(&g_attr_hashmap, name, namelen);

 if (!a) {
  FLEX_ALLOC_MEM(a, name, name, namelen);
  a->attr_nr = hashmap_get_size(&g_attr_hashmap.map);

  attr_hashmap_add(&g_attr_hashmap, a->name, namelen, a);
  assert(a->attr_nr ==
         (hashmap_get_size(&g_attr_hashmap.map) - 1));
 }

 hashmap_unlock(&g_attr_hashmap);

 return a;
}
