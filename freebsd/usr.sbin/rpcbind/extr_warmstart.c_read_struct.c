
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ (* xdrproc_t ) (int *,void*) ;
struct stat {scalar_t__ st_uid; int st_mode; } ;
typedef scalar_t__ bool_t ;
typedef int XDR ;
typedef int FILE ;


 scalar_t__ FALSE ;
 int S_IRWXG ;
 int S_IRWXO ;
 scalar_t__ TRUE ;
 int XDR_DECODE ;
 int XDR_DESTROY (int *) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ stat (char*,struct stat*) ;
 int stderr ;
 int xdrstdio_create (int *,int *,int ) ;

__attribute__((used)) static bool_t
read_struct(char *filename, xdrproc_t structproc, void *list)
{
 FILE *fp;
 XDR xdrs;
 struct stat sbuf;

 if (stat(filename, &sbuf) != 0) {
  fprintf(stderr,
  "rpcbind: cannot stat file = %s for reading\n", filename);
  goto error;
 }
 if ((sbuf.st_uid != 0) || (sbuf.st_mode & S_IRWXG) ||
     (sbuf.st_mode & S_IRWXO)) {
  fprintf(stderr,
  "rpcbind: invalid permissions on file = %s for reading\n",
   filename);
  goto error;
 }
 fp = fopen(filename, "r");
 if (fp == ((void*)0)) {
  fprintf(stderr,
  "rpcbind: cannot open file = %s for reading\n", filename);
  goto error;
 }
 xdrstdio_create(&xdrs, fp, XDR_DECODE);

 if (structproc(&xdrs, list) == FALSE) {
  fprintf(stderr, "rpcbind: xdr_%s: failed\n", filename);
  fclose(fp);
  goto error;
 }
 XDR_DESTROY(&xdrs);
 fclose(fp);
 return (TRUE);

error: fprintf(stderr, "rpcbind: will start from scratch\n");
 return (FALSE);
}
