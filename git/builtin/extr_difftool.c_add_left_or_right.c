
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pair_entry {char* left; char* right; int entry; } ;
struct hashmap {int dummy; } ;


 int FLEX_ALLOC_STR (struct pair_entry*,char const*,char const*) ;
 int PATH_MAX ;
 int entry ;
 int free (struct pair_entry*) ;
 int hashmap_add (struct hashmap*,int *) ;
 int hashmap_entry_init (int *,int ) ;
 struct pair_entry* hashmap_get_entry (struct hashmap*,struct pair_entry*,int ,int *) ;
 int strhash (char const*) ;
 int strlcpy (char*,char const*,int ) ;

__attribute__((used)) static void add_left_or_right(struct hashmap *map, const char *path,
         const char *content, int is_right)
{
 struct pair_entry *e, *existing;

 FLEX_ALLOC_STR(e, path, path);
 hashmap_entry_init(&e->entry, strhash(path));
 existing = hashmap_get_entry(map, e, entry, ((void*)0));
 if (existing) {
  free(e);
  e = existing;
 } else {
  e->left[0] = e->right[0] = '\0';
  hashmap_add(map, &e->entry);
 }
 strlcpy(is_right ? e->right : e->left, content, PATH_MAX);
}
