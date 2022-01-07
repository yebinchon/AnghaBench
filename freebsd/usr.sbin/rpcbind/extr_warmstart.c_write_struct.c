
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ (* xdrproc_t ) (int *,void*) ;
typedef int mode_t ;
typedef scalar_t__ bool_t ;
typedef int XDR ;
typedef int FILE ;


 scalar_t__ FALSE ;
 int LOG_ERR ;
 scalar_t__ TRUE ;
 int XDR_DESTROY (int *) ;
 int XDR_ENCODE ;
 int close (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int syslog (int ,char*,...) ;
 int umask (int) ;
 int xdrstdio_create (int *,int *,int ) ;

__attribute__((used)) static bool_t
write_struct(char *filename, xdrproc_t structproc, void *list)
{
 FILE *fp;
 XDR xdrs;
 mode_t omask;

 omask = umask(077);
 fp = fopen(filename, "w");
 if (fp == ((void*)0)) {
  int i;

  for (i = 0; i < 10; i++)
   close(i);
  fp = fopen(filename, "w");
  if (fp == ((void*)0)) {
   syslog(LOG_ERR,
    "cannot open file = %s for writing", filename);
   syslog(LOG_ERR, "cannot save any registration");
   return (FALSE);
  }
 }
 (void) umask(omask);
 xdrstdio_create(&xdrs, fp, XDR_ENCODE);

 if (structproc(&xdrs, list) == FALSE) {
  syslog(LOG_ERR, "rpcbind: xdr_%s: failed", filename);
  fclose(fp);
  return (FALSE);
 }
 XDR_DESTROY(&xdrs);
 fclose(fp);
 return (TRUE);
}
