
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {int dummy; } ;


 struct cache_entry** active_cache ;
 int cache_name_pos (char const*,int ) ;
 scalar_t__ chmod_cache_entry (struct cache_entry*,char) ;
 int die (char*,char,char const*) ;
 int report (char*,char,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static void chmod_path(char flip, const char *path)
{
 int pos;
 struct cache_entry *ce;

 pos = cache_name_pos(path, strlen(path));
 if (pos < 0)
  goto fail;
 ce = active_cache[pos];
 if (chmod_cache_entry(ce, flip) < 0)
  goto fail;

 report("chmod %cx '%s'", flip, path);
 return;
 fail:
 die("git update-index: cannot chmod %cx '%s'", flip, path);
}
