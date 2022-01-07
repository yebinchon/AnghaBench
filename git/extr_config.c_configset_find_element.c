
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_set_element {char* key; int ent; } ;
struct config_set {int config_hash; } ;


 int ent ;
 int free (char*) ;
 scalar_t__ git_config_parse_key (char const*,char**,int *) ;
 int hashmap_entry_init (int *,int ) ;
 struct config_set_element* hashmap_get_entry (int *,struct config_set_element*,int ,int *) ;
 int strhash (char*) ;

__attribute__((used)) static struct config_set_element *configset_find_element(struct config_set *cs, const char *key)
{
 struct config_set_element k;
 struct config_set_element *found_entry;
 char *normalized_key;




 if (git_config_parse_key(key, &normalized_key, ((void*)0)))
  return ((void*)0);

 hashmap_entry_init(&k.ent, strhash(normalized_key));
 k.key = normalized_key;
 found_entry = hashmap_get_entry(&cs->config_hash, &k, ent, ((void*)0));
 free(normalized_key);
 return found_entry;
}
