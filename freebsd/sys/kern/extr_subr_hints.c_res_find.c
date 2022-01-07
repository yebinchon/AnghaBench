
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;



 int _res_checkenv (char*) ;
 scalar_t__ hintenv_merged ;
 int kenv_lock ;
 char** kenvp ;
 char* kern_envp ;
 char* md_envp ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int printf (char*,char const*) ;
 int sscanf (char const*,char*,char*,int*,char*,char*) ;
 char* static_hints ;
 int stenv_skip ;
 int sthints_skip ;
 void* strchr (char const*,char) ;
 scalar_t__ strcmp (char const*,char*) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int
res_find(char **hintp_cookie, int *line, int *startln,
    const char *name, int *unit, const char *resname, const char *value,
    const char **ret_name, int *ret_namelen, int *ret_unit,
    const char **ret_resname, int *ret_resnamelen, const char **ret_value)
{
 int fbacklvl = 130, i = 0, n = 0;
 char r_name[32];
 int r_unit;
 char r_resname[32];
 char r_value[128];
 const char *s, *cp;
 char *hintp, *p;
 bool dyn_used = 0;
 if (*hintp_cookie == ((void*)0)) {
  hintp = ((void*)0);
  if (hintenv_merged) {





   mtx_lock(&kenv_lock);
   cp = kenvp[0];
   for (i = 0; cp != ((void*)0); cp = kenvp[++i]) {
    if (!strncmp(cp, "hint.", 5)) {
     hintp = kenvp[0];
     break;
    }
   }
   mtx_unlock(&kenv_lock);
   dyn_used = 1;
  } else {
fallback:
   if (dyn_used || fbacklvl >= 129)
    return (ENOENT);

   switch (fbacklvl) {
   case 130:
    fbacklvl++;
    if (_res_checkenv(md_envp)) {
     hintp = md_envp;
     break;
    }


   case 128:
    fbacklvl++;
    if (!stenv_skip && _res_checkenv(kern_envp)) {
     hintp = kern_envp;
     break;
    } else
     stenv_skip = 1;


   case 129:
    fbacklvl++;

    if (!sthints_skip &&
        _res_checkenv(static_hints))
     hintp = static_hints;
    else
     sthints_skip = 1;

    break;
   default:
    return (ENOENT);
   }
  }

  if (hintp == ((void*)0))
   return (ENOENT);
  *hintp_cookie = hintp;
 } else {
  hintp = *hintp_cookie;
  if (hintenv_merged && hintp == kenvp[0])
   dyn_used = 1;
  else






   goto fallback;
 }

 if (dyn_used) {
  mtx_lock(&kenv_lock);
  i = 0;
 }

 cp = hintp;
 while (cp) {
  (*line)++;
  if (strncmp(cp, "hint.", 5) != 0)
   goto nexthint;
  n = sscanf(cp, "hint.%32[^.].%d.%32[^=]=%127s", r_name, &r_unit,
      r_resname, r_value);
  if (n != 4) {
   printf("CONFIG: invalid hint '%s'\n", cp);
   p = strchr(cp, 'h');
   *p = 'H';
   goto nexthint;
  }
  if (startln && *startln >= 0 && *line < *startln)
   goto nexthint;
  if (name && strcmp(name, r_name) != 0)
   goto nexthint;
  if (unit && *unit != r_unit)
   goto nexthint;
  if (resname && strcmp(resname, r_resname) != 0)
   goto nexthint;
  if (value && strcmp(value, r_value) != 0)
   goto nexthint;

  break;
nexthint:
  if (dyn_used) {
   cp = kenvp[++i];
   if (cp == ((void*)0))
    break;
  } else {
   while (*cp != '\0')
    cp++;
   cp++;
   if (*cp == '\0') {
    cp = ((void*)0);
    break;
   }
  }
 }
 if (dyn_used)
  mtx_unlock(&kenv_lock);
 if (cp == ((void*)0))
  goto fallback;

 s = cp;


 s = strchr(s, '.') + 1;
 if (ret_name)
  *ret_name = s;
 s = strchr(s, '.') + 1;
 if (ret_namelen && ret_name)
  *ret_namelen = s - *ret_name - 1;
 if (ret_unit)
  *ret_unit = r_unit;
 s = strchr(s, '.') + 1;
 if (ret_resname)
  *ret_resname = s;
 s = strchr(s, '=') + 1;
 if (ret_resnamelen && ret_resname)
  *ret_resnamelen = s - *ret_resname - 1;
 if (ret_value)
  *ret_value = s;
 if (startln)
  *startln = *line + 1;
 return 0;
}
