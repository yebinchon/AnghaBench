
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {int dummy; } ;


 int display (char const*,struct passwd*) ;
 int fflush (int ) ;
 char* fgetln (int ,size_t*) ;
 int free (struct passwd*) ;
 int printf (char*) ;
 struct passwd* pw_dup (struct passwd*) ;
 int pw_edit (int) ;
 int stdin ;
 int stdout ;
 struct passwd* verify (char const*,struct passwd*) ;
 int warn (char*) ;

struct passwd *
edit(const char *tfn, struct passwd *pw)
{
 struct passwd *npw;
 char *line;
 size_t len;

 if (display(tfn, pw) == -1)
  return (((void*)0));
 for (;;) {
  switch (pw_edit(1)) {
  case -1:
   return (((void*)0));
  case 0:
   return (pw_dup(pw));
  default:
   break;
  }
  if ((npw = verify(tfn, pw)) != ((void*)0))
   return (npw);
  free(npw);
  printf("re-edit the password file? ");
  fflush(stdout);
  if ((line = fgetln(stdin, &len)) == ((void*)0)) {
   warn("fgetln()");
   return (((void*)0));
  }
  if (len > 0 && (*line == 'N' || *line == 'n'))
   return (((void*)0));
 }
}
