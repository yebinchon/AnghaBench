
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EX_OSERR ;
 int asprintf (int *,char*,char const*) ;
 int cb_exit (int *,int) ;
 int err (int ,char*) ;
 int explicit_loader ;
 int free (int ) ;
 int jb ;
 int loader ;
 int longjmp (int ,int) ;
 int need_reinit ;
 int perror (char*) ;

__attribute__((used)) static void
cb_swap_interpreter(void *arg, const char *interp_req)
{





 free(loader);
 if (explicit_loader == 1) {
  perror("requested loader interpreter does not match guest userboot");
  cb_exit(((void*)0), 1);
 }
 if (interp_req == ((void*)0) || *interp_req == '\0') {
  perror("guest failed to request an interpreter");
  cb_exit(((void*)0), 1);
 }

 if (asprintf(&loader, "/boot/userboot_%s.so", interp_req) == -1)
  err(EX_OSERR, "malloc");
 need_reinit = 1;
 longjmp(jb, 1);
}
