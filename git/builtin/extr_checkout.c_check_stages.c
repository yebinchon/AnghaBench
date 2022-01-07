
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cache_entry {char* name; } ;


 int _ (char*) ;
 struct cache_entry** active_cache ;
 int active_nr ;
 int ce_stage (struct cache_entry const*) ;
 int error (int ,char const*) ;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int check_stages(unsigned stages, const struct cache_entry *ce, int pos)
{
 unsigned seen = 0;
 const char *name = ce->name;

 while (pos < active_nr) {
  ce = active_cache[pos];
  if (strcmp(name, ce->name))
   break;
  seen |= (1 << ce_stage(ce));
  pos++;
 }
 if ((stages & seen) != stages)
  return error(_("path '%s' does not have all necessary versions"),
        name);
 return 0;
}
