
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mod_version {int mv_version; } ;
struct mod_metadata {scalar_t__ md_type; char* md_cval; scalar_t__ md_data; } ;
typedef int linker_file_t ;


 scalar_t__ MDT_VERSION ;
 int * modlist_lookup (char const*,int) ;
 int modlist_newmodule (char const*,int,int ) ;
 int printf (char*,char const*) ;

__attribute__((used)) static void
linker_addmodules(linker_file_t lf, struct mod_metadata **start,
    struct mod_metadata **stop, int preload)
{
 struct mod_metadata *mp, **mdp;
 const char *modname;
 int ver;

 for (mdp = start; mdp < stop; mdp++) {
  mp = *mdp;
  if (mp->md_type != MDT_VERSION)
   continue;
  modname = mp->md_cval;
  ver = ((const struct mod_version *)mp->md_data)->mv_version;
  if (modlist_lookup(modname, ver) != ((void*)0)) {
   printf("module %s already present!\n", modname);

   continue;
  }
  modlist_newmodule(modname, ver, lf);
 }
}
