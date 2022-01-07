
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int free (char*) ;
 int kldload (char*) ;
 char* malloc (size_t) ;
 int strcpy (char*,char*) ;
 int strncpy (char*,int const*,size_t) ;

__attribute__((used)) static int
ngtype_load(const u_char *name, size_t namelen)
{
 char *mod;
 int ret;

 if ((mod = malloc(namelen + 4)) == ((void*)0))
  return (-1);
 strcpy(mod, "ng_");
 strncpy(mod + 3, name, namelen);
 mod[namelen + 3] = '\0';

 ret = kldload(mod);
 free(mod);
 return (ret);
}
