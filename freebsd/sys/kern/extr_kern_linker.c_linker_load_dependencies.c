
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct mod_version {int mv_version; } ;
struct mod_metadata {scalar_t__ md_type; char* md_cval; struct mod_depend* md_data; } ;
struct mod_depend {int dummy; } ;
typedef TYPE_1__* modlist_t ;
typedef TYPE_2__* linker_file_t ;
struct TYPE_13__ {char* filename; int refs; } ;
struct TYPE_12__ {TYPE_2__* container; } ;


 int EEXIST ;
 scalar_t__ MDT_DEPEND ;
 int MDT_SETNAME ;
 scalar_t__ MDT_VERSION ;
 int SA_XLOCKED ;
 int kld_sx ;
 int linker_addmodules (TYPE_2__*,struct mod_metadata**,struct mod_metadata**,int ) ;
 int linker_file_add_dependency (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ linker_file_lookup_set (TYPE_2__*,int ,struct mod_metadata***,struct mod_metadata***,int *) ;
 TYPE_2__* linker_kernel_file ;
 int linker_load_module (int *,char const*,TYPE_2__*,struct mod_depend const*,int *) ;
 TYPE_1__* modlist_lookup (char const*,int) ;
 TYPE_1__* modlist_lookup2 (char const*,struct mod_depend const*) ;
 int printf (char*,char const*,...) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int sx_assert (int *,int ) ;

int
linker_load_dependencies(linker_file_t lf)
{
 linker_file_t lfdep;
 struct mod_metadata **start, **stop, **mdp, **nmdp;
 struct mod_metadata *mp, *nmp;
 const struct mod_depend *verinfo;
 modlist_t mod;
 const char *modname, *nmodname;
 int ver, error = 0;




 sx_assert(&kld_sx, SA_XLOCKED);
 if (linker_kernel_file) {
  linker_kernel_file->refs++;
  error = linker_file_add_dependency(lf, linker_kernel_file);
  if (error)
   return (error);
 }
 if (linker_file_lookup_set(lf, MDT_SETNAME, &start, &stop,
     ((void*)0)) != 0)
  return (0);
 for (mdp = start; mdp < stop; mdp++) {
  mp = *mdp;
  if (mp->md_type != MDT_VERSION)
   continue;
  modname = mp->md_cval;
  ver = ((const struct mod_version *)mp->md_data)->mv_version;
  mod = modlist_lookup(modname, ver);
  if (mod != ((void*)0)) {
   printf("interface %s.%d already present in the KLD"
       " '%s'!\n", modname, ver,
       mod->container->filename);
   return (EEXIST);
  }
 }

 for (mdp = start; mdp < stop; mdp++) {
  mp = *mdp;
  if (mp->md_type != MDT_DEPEND)
   continue;
  modname = mp->md_cval;
  verinfo = mp->md_data;
  nmodname = ((void*)0);
  for (nmdp = start; nmdp < stop; nmdp++) {
   nmp = *nmdp;
   if (nmp->md_type != MDT_VERSION)
    continue;
   nmodname = nmp->md_cval;
   if (strcmp(modname, nmodname) == 0)
    break;
  }
  if (nmdp < stop)
   continue;
  mod = modlist_lookup2(modname, verinfo);
  if (mod) {
   lfdep = mod->container;
   lfdep->refs++;
   error = linker_file_add_dependency(lf, lfdep);
   if (error)
    break;
   continue;
  }
  error = linker_load_module(((void*)0), modname, lf, verinfo, ((void*)0));
  if (error) {
   printf("KLD %s: depends on %s - not available or"
       " version mismatch\n", lf->filename, modname);
   break;
  }
 }

 if (error)
  return (error);
 linker_addmodules(lf, start, stop, 0);
 return (error);
}
