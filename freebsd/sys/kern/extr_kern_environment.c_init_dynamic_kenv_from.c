
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KENV_MNAMELEN ;
 int KENV_MVALLEN ;
 int KENV_SIZE ;
 int M_KENV ;
 int M_WAITOK ;
 char* _getenv_dynamic_locked (char*,int *) ;
 int explicit_bzero (char*,size_t) ;
 int * kenvp ;
 char* kernenv_next (char*) ;
 int malloc (size_t,int ,int ) ;
 int printf (char*,char*) ;
 char* strchr (char*,char) ;
 int strcpy (int ,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
init_dynamic_kenv_from(char *init_env, int *curpos)
{
 char *cp, *cpnext, *eqpos, *found;
 size_t len;
 int i;

 if (init_env && *init_env != '\0') {
  found = ((void*)0);
  i = *curpos;
  for (cp = init_env; cp != ((void*)0); cp = cpnext) {
   cpnext = kernenv_next(cp);
   len = strlen(cp) + 1;
   if (len > KENV_MNAMELEN + 1 + KENV_MVALLEN + 1) {
    printf(
    "WARNING: too long kenv string, ignoring %s\n",
        cp);
    goto sanitize;
   }
   eqpos = strchr(cp, '=');
   if (eqpos == ((void*)0)) {
    printf(
    "WARNING: malformed static env value, ignoring %s\n",
        cp);
    goto sanitize;
   }
   *eqpos = 0;







   found = _getenv_dynamic_locked(cp, ((void*)0));
   *eqpos = '=';
   if (found != ((void*)0))
    goto sanitize;
   if (i > KENV_SIZE) {
    printf(
    "WARNING: too many kenv strings, ignoring %s\n",
        cp);
    goto sanitize;
   }

   kenvp[i] = malloc(len, M_KENV, M_WAITOK);
   strcpy(kenvp[i++], cp);
sanitize:
   explicit_bzero(cp, len - 1);
  }
  *curpos = i;
 }
}
