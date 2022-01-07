
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbmount {int sm_share; } ;


 int ENAMETOOLONG ;
 int ENOENT ;
 int LOOKUP ;
 scalar_t__ SMB_DIALECT (int ) ;
 scalar_t__ SMB_DIALECT_LANMAN2_0 ;
 int SSTOVC (int ) ;
 char* strchr (char const*,char const) ;

__attribute__((used)) static int
smbfs_pathcheck(struct smbmount *smp, const char *name, int nmlen, int nameiop)
{
 static const char *badchars = "*/:<>?";
 static const char *badchars83 = " +|,[]=;";
 const char *cp;
 int i, error;





 if (strchr(name, '\\') != ((void*)0))
  return ENOENT;

 if (nameiop == LOOKUP)
  return 0;
 error = ENOENT;
 if (SMB_DIALECT(SSTOVC(smp->sm_share)) < SMB_DIALECT_LANMAN2_0) {



  if (nmlen > 12)
   return ENAMETOOLONG;
  cp = strchr(name, '.');
  if (cp == ((void*)0))
   return error;
  if (cp == name || (cp - name) > 8)
   return error;
  cp = strchr(cp + 1, '.');
  if (cp != ((void*)0))
   return error;
  for (cp = name, i = 0; i < nmlen; i++, cp++)
   if (strchr(badchars83, *cp) != ((void*)0))
    return error;
 }
 for (cp = name, i = 0; i < nmlen; i++, cp++)
  if (strchr(badchars, *cp) != ((void*)0))
   return error;
 return 0;
}
