
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sig_cert {int siglen; int cert; void* certlen; void* sig; } ;
struct sbuf {int dummy; } ;
typedef int ssize_t ;
typedef int FILE ;


 void* calloc (int,int) ;
 int close (int) ;
 int dup (int) ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int getline (char**,size_t*,int *) ;
 int lseek (int,int ,int ) ;
 int memcpy (void*,int ,int) ;
 int sbuf_bcat (struct sbuf*,char*,int ) ;
 int sbuf_data (struct sbuf*) ;
 int sbuf_delete (struct sbuf*) ;
 int sbuf_finish (struct sbuf*) ;
 void* sbuf_len (struct sbuf*) ;
 struct sbuf* sbuf_new_auto () ;
 int sbuf_setpos (struct sbuf*,void*) ;
 scalar_t__ strcmp (char*,char*) ;
 int strdup (int ) ;
 int warn (char*) ;
 int warnx (char*) ;

__attribute__((used)) static struct sig_cert *
parse_cert(int fd) {
 int my_fd;
 struct sig_cert *sc;
 FILE *fp;
 struct sbuf *buf, *sig, *cert;
 char *line;
 size_t linecap;
 ssize_t linelen;

 buf = ((void*)0);
 my_fd = -1;
 sc = ((void*)0);
 line = ((void*)0);
 linecap = 0;

 if (lseek(fd, 0, 0) == -1) {
  warn("lseek");
  return (((void*)0));
 }


 if ((my_fd = dup(fd)) == -1) {
  warnx("dup");
  return (((void*)0));
 }

 if ((fp = fdopen(my_fd, "rb")) == ((void*)0)) {
  warn("fdopen");
  close(my_fd);
  return (((void*)0));
 }

 sig = sbuf_new_auto();
 cert = sbuf_new_auto();

 while ((linelen = getline(&line, &linecap, fp)) > 0) {
  if (strcmp(line, "SIGNATURE\n") == 0) {
   buf = sig;
   continue;
  } else if (strcmp(line, "CERT\n") == 0) {
   buf = cert;
   continue;
  } else if (strcmp(line, "END\n") == 0) {
   break;
  }
  if (buf != ((void*)0))
   sbuf_bcat(buf, line, linelen);
 }

 fclose(fp);


 sbuf_setpos(sig, sbuf_len(sig) - 1);

 sbuf_finish(sig);
 sbuf_finish(cert);

 sc = calloc(1, sizeof(struct sig_cert));
 sc->siglen = sbuf_len(sig);
 sc->sig = calloc(1, sc->siglen);
 memcpy(sc->sig, sbuf_data(sig), sc->siglen);

 sc->certlen = sbuf_len(cert);
 sc->cert = strdup(sbuf_data(cert));

 sbuf_delete(sig);
 sbuf_delete(cert);

 return (sc);
}
