
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (int) ;
 int strncat (char*,char const*,int) ;
 char* strpbrk (char const*,char*) ;

__attribute__((used)) static char *
capdb_canonical_name(const char *bp)
{
 char *retval;
 const char *nameend;

 nameend = strpbrk(bp, "|:");
 if (nameend == ((void*)0))
  nameend = bp + 1;
 if ((retval = malloc(nameend - bp + 1)) != ((void*)0)) {
  retval[0] = '\0';
  strncat(retval, bp, nameend - bp);
 }
 return retval;
}
