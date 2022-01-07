
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct flock {int l_type; int l_whence; scalar_t__ l_len; scalar_t__ l_start; } ;
typedef scalar_t__ off_t ;


 int ENOMEM ;
 int F_SETLKW ;
 int F_UNLCK ;
 int F_WRLCK ;
 int SEEK_SET ;
 int VIS_CSTYLE ;
 int VIS_OCTAL ;
 char const* destdir ;
 char* digest ;
 scalar_t__ dopreserve ;
 int fcntl (int ,int ,struct flock*) ;
 char* fflags ;
 int fflush (int ) ;
 int fileno (int ) ;
 int fprintf (int ,char*,...) ;
 int fputc (char,int ) ;
 int free (char*) ;
 char* group ;
 scalar_t__ malloc (int) ;
 int metafile ;
 int metafp ;
 int mode ;
 char* owner ;
 int strerror (int ) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;
 int strsvis (char*,char const*,int ,char const*) ;
 char* tags ;
 int warn (char*,int ) ;
 int warnx (char*,int ) ;

__attribute__((used)) static void
metadata_log(const char *path, const char *type, struct timespec *ts,
 const char *slink, const char *digestresult, off_t size)
{
 static const char extra[] = { ' ', '\t', '\n', '\\', '#', '\0' };
 const char *p;
 char *buf;
 size_t destlen;
 struct flock metalog_lock;

 if (!metafp)
  return;

 buf = (char *)malloc(4 * strlen(path) + 1);
 if (buf == ((void*)0)) {
  warnx("%s", strerror(ENOMEM));
  return;
 }


 metalog_lock.l_start = 0;
 metalog_lock.l_len = 0;
 metalog_lock.l_whence = SEEK_SET;
 metalog_lock.l_type = F_WRLCK;
 if (fcntl(fileno(metafp), F_SETLKW, &metalog_lock) == -1) {
  warn("can't lock %s", metafile);
  free(buf);
  return;
 }


 p = path;
 if (destdir) {
  destlen = strlen(destdir);
  if (strncmp(p, destdir, destlen) == 0 &&
      (p[destlen] == '/' || p[destlen] == '\0'))
   p += destlen;
 }
 while (*p && *p == '/')
  p++;
 strsvis(buf, p, VIS_OCTAL, extra);
 p = buf;

 fprintf(metafp, ".%s%s type=%s", *p ? "/" : "", p, type);
 if (owner)
  fprintf(metafp, " uname=%s", owner);
 if (group)
  fprintf(metafp, " gname=%s", group);
 fprintf(metafp, " mode=%#o", mode);
 if (slink) {
  strsvis(buf, slink, VIS_CSTYLE, extra);
  fprintf(metafp, " link=%s", buf);
 }
 if (*type == 'f')
  fprintf(metafp, " size=%lld", (long long)size);
 if (ts != ((void*)0) && dopreserve)
  fprintf(metafp, " time=%lld.%09ld",
   (long long)ts[1].tv_sec, ts[1].tv_nsec);
 if (digestresult && digest)
  fprintf(metafp, " %s=%s", digest, digestresult);
 if (fflags)
  fprintf(metafp, " flags=%s", fflags);
 if (tags)
  fprintf(metafp, " tags=%s", tags);
 fputc('\n', metafp);

 fflush(metafp);


 metalog_lock.l_type = F_UNLCK;
 if (fcntl(fileno(metafp), F_SETLKW, &metalog_lock) == -1)
  warn("can't unlock %s", metafile);
 free(buf);
}
