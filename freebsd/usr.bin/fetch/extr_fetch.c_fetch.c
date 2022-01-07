
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct xferstat {int dummy; } ;
struct url_stat {int size; scalar_t__ mtime; scalar_t__ atime; } ;
struct url {char const* scheme; scalar_t__ ims_time; size_t offset; int doc; int * host; } ;
struct timeval {long tv_sec; scalar_t__ tv_usec; } ;
struct stat {scalar_t__ st_mtime; int st_size; int st_mode; scalar_t__ st_dev; scalar_t__ st_ino; int st_gid; int st_uid; } ;
typedef size_t off_t ;
typedef int intmax_t ;
typedef int FILE ;


 int ALLPERMS ;
 scalar_t__ A_flag ;
 size_t B_size ;
 scalar_t__ EINTR ;
 scalar_t__ ENOENT ;
 scalar_t__ ETIMEDOUT ;
 scalar_t__ FETCH_OK ;
 int F_flag ;


 scalar_t__ R_flag ;
 char* SCHEME_FILE ;
 char* SCHEME_FTP ;
 char* SCHEME_HTTP ;
 char* SCHEME_HTTPS ;
 int SEEK_SET ;
 int SIGINFO ;
 int SIG_DFL ;
 int S_IFREG ;
 scalar_t__ S_ISREG (int) ;
 int S_size ;
 int T_secs ;
 scalar_t__ U_flag ;
 int _IOFBF ;
 int alarm (unsigned int) ;
 int asprintf (char**,char*,int,char const*,char const*) ;
 char* buf ;
 int chmod (char*,int) ;
 int chown (char*,int ,int ) ;
 int clearerr (int *) ;
 scalar_t__ d_flag ;
 scalar_t__ errno ;
 int family ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int fetchDebug ;
 int fetchFreeURL (struct url*) ;
 scalar_t__ fetchLastErrCode ;
 char const* fetchLastErrString ;
 struct url* fetchParseURL (char*) ;
 int fetchStat (struct url*,struct url_stat*,char*) ;
 unsigned int fetchTimeout ;
 int * fetchXGet (struct url*,struct url_stat*,char*) ;
 int fflush (int *) ;
 int fileno (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,int ,long) ;
 size_t fread (char*,int,size_t,int *) ;
 int free (char*) ;
 scalar_t__ fseeko (int *,size_t,int ) ;
 int fstat (int ,struct stat*) ;
 int ftp_timeout ;
 size_t fwrite (char*,int,size_t,int *) ;
 int http_timeout ;
 char const* i_filename ;
 scalar_t__ i_flag ;
 scalar_t__ l_flag ;
 scalar_t__ m_flag ;
 int mkstemps (char*,scalar_t__) ;
 int n_flag ;
 scalar_t__ o_stdout ;
 scalar_t__ p_flag ;
 int printf (char*,...) ;
 scalar_t__ r_flag ;
 int rename (char*,char const*) ;
 scalar_t__ s_flag ;
 int setvbuf (int *,int *,int ,size_t) ;
 int sig_handler ;
 int sigalrm ;
 int siginfo ;
 int sigint ;
 int signal (int ,int ) ;
 int stat (char const*,struct stat*) ;
 int stat_end (struct xferstat*) ;
 int stat_start (struct xferstat*,char const*,int,size_t) ;
 int stat_update (struct xferstat*,size_t) ;
 int stderr ;
 int * stdout ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strcpy (char const*,char*) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ strncasecmp (int *,char*,int) ;
 char* strrchr (char const*,char) ;
 int symlink (int ,char const*) ;
 int unlink (char*) ;
 scalar_t__ utimes (char*,struct timeval*) ;
 int v_level ;
 int warn (char*,char const*) ;
 int warnx (char*,...) ;

__attribute__((used)) static int
fetch(char *URL, const char *path)
{
 struct url *url;
 struct url_stat us;
 struct stat sb, nsb;
 struct xferstat xs;
 FILE *f, *of;
 size_t size, readcnt, wr;
 off_t count;
 char flags[8];
 const char *slash;
 char *tmppath;
 int r;
 unsigned timeout;
 char *ptr;

 f = of = ((void*)0);
 tmppath = ((void*)0);

 timeout = 0;
 *flags = 0;
 count = 0;


 if (v_level > 1)
  strcat(flags, "v");
 if (v_level > 2)
  fetchDebug = 1;


 url = ((void*)0);
 if (*URL == '\0') {
  warnx("empty URL");
  goto failure;
 }
 if ((url = fetchParseURL(URL)) == ((void*)0)) {
  warnx("%s: parse error", URL);
  goto failure;
 }


 if (!*url->scheme) {
  if (!*url->host)
   strcpy(url->scheme, SCHEME_FILE);
  else if (strncasecmp(url->host, "ftp.", 4) == 0)
   strcpy(url->scheme, SCHEME_FTP);
  else if (strncasecmp(url->host, "www.", 4) == 0)
   strcpy(url->scheme, SCHEME_HTTP);
 }


 switch (family) {
 case 129:
  strcat(flags, "4");
  break;
 case 128:
  strcat(flags, "6");
  break;
 }


 if (strcmp(url->scheme, SCHEME_FTP) == 0) {
  if (p_flag)
   strcat(flags, "p");
  if (d_flag)
   strcat(flags, "d");
  if (U_flag)
   strcat(flags, "l");
  timeout = T_secs ? T_secs : ftp_timeout;
 }


 if (strcmp(url->scheme, SCHEME_HTTP) == 0 ||
     strcmp(url->scheme, SCHEME_HTTPS) == 0) {
  if (d_flag)
   strcat(flags, "d");
  if (A_flag)
   strcat(flags, "A");
  timeout = T_secs ? T_secs : http_timeout;
  if (i_flag) {
   if (stat(i_filename, &sb)) {
    warn("%s: stat()", i_filename);
    goto failure;
   }
   url->ims_time = sb.st_mtime;
   strcat(flags, "i");
  }
 }


 fetchTimeout = timeout;


 if (s_flag) {
  if (timeout)
   alarm(timeout);
  r = fetchStat(url, &us, flags);
  if (timeout)
   alarm(0);
  if (sigalrm || sigint)
   goto signal;
  if (r == -1) {
   warnx("%s", fetchLastErrString);
   goto failure;
  }
  if (us.size == -1)
   printf("Unknown\n");
  else
   printf("%jd\n", (intmax_t)us.size);
  goto success;
 }
 sb.st_size = -1;
 if (!o_stdout) {
  r = stat(path, &sb);
  if (r == 0 && r_flag && S_ISREG(sb.st_mode)) {
   url->offset = sb.st_size;
  } else if (r == -1 || !S_ISREG(sb.st_mode)) {





   sb.st_size = -1;
  }
  if (r == -1 && errno != ENOENT) {
   warnx("%s: stat()", path);
   goto failure;
  }
 }


 if (timeout)
  alarm(timeout);
 f = fetchXGet(url, &us, flags);
 if (timeout)
  alarm(0);
 if (sigalrm || sigint)
  goto signal;
 if (f == ((void*)0)) {
  warnx("%s: %s", URL, fetchLastErrString);
  if (i_flag && (strcmp(url->scheme, SCHEME_HTTP) == 0 ||
      strcmp(url->scheme, SCHEME_HTTPS) == 0) &&
      fetchLastErrCode == FETCH_OK &&
      strcmp(fetchLastErrString, "Not Modified") == 0) {

   r = 0;
   goto done;
  } else
   goto failure;
 }
 if (sigint)
  goto signal;


 if (S_size) {
  if (us.size == -1) {
   warnx("%s: size unknown", URL);
  } else if (us.size != S_size) {
   warnx("%s: size mismatch: expected %jd, actual %jd",
       URL, (intmax_t)S_size, (intmax_t)us.size);
   goto failure;
  }
 }


 if (l_flag && strcmp(url->scheme, "file") == 0 && !o_stdout) {
  if (symlink(url->doc, path) == -1) {
   warn("%s: symlink()", path);
   goto failure;
  }
  goto success;
 }

 if (us.size == -1 && !o_stdout && v_level > 0)
  warnx("%s: size of remote file is not known", URL);
 if (v_level > 1) {
  if (sb.st_size != -1)
   fprintf(stderr, "local size / mtime: %jd / %ld\n",
       (intmax_t)sb.st_size, (long)sb.st_mtime);
  if (us.size != -1)
   fprintf(stderr, "remote size / mtime: %jd / %ld\n",
       (intmax_t)us.size, (long)us.mtime);
 }


 if (o_stdout) {

  of = stdout;
 } else if (r_flag && sb.st_size != -1) {

  if (!F_flag && us.mtime && sb.st_mtime != us.mtime) {

   fclose(f);

   if (R_flag) {
    warnx("%s: local modification time "
        "does not match remote", path);
    goto failure_keep;
   }
  } else if (url->offset > sb.st_size) {

   warnx("%s: gap in resume mode", URL);
   fclose(of);
   of = ((void*)0);

  } else if (us.size != -1) {
   if (us.size == sb.st_size)

    goto success;
   if (sb.st_size > us.size) {

    warnx("%s: local file (%jd bytes) is longer "
        "than remote file (%jd bytes)", path,
        (intmax_t)sb.st_size, (intmax_t)us.size);
    goto failure;
   }

   if ((of = fopen(path, "r+")) == ((void*)0)) {
    warn("%s: fopen()", path);
    goto failure;
   }

   if (fstat(fileno(of), &nsb) == -1) {

    warn("%s: fstat()", path);
    goto failure;
   }
   if (nsb.st_dev != sb.st_dev ||
       nsb.st_ino != sb.st_ino ||
       nsb.st_size != sb.st_size) {
    warnx("%s: file has changed", URL);
    fclose(of);
    of = ((void*)0);
    sb = nsb;

   }
  }

  if (of != ((void*)0) && fseeko(of, url->offset, SEEK_SET) != 0) {
   warn("%s: fseeko()", path);
   fclose(of);
   of = ((void*)0);

  }
 } else if (m_flag && sb.st_size != -1) {

  if (sb.st_size == us.size && sb.st_mtime == us.mtime)
   goto success;
 }

 if (of == ((void*)0)) {






  if (url->offset > 0) {





   url->offset = 0;
   if ((f = fetchXGet(url, &us, flags)) == ((void*)0)) {
    warnx("%s: %s", URL, fetchLastErrString);
    goto failure;
   }
   if (sigint)
    goto signal;
  }


  if (sb.st_size != -1 && S_ISREG(sb.st_mode)) {
   if ((slash = strrchr(path, '/')) == ((void*)0))
    slash = path;
   else
    ++slash;
   asprintf(&tmppath, "%.*s.fetch.XXXXXX.%s",
       (int)(slash - path), path, slash);
   if (tmppath != ((void*)0)) {
    if (mkstemps(tmppath, strlen(slash) + 1) == -1) {
     warn("%s: mkstemps()", path);
     goto failure;
    }
    of = fopen(tmppath, "w");
    chown(tmppath, sb.st_uid, sb.st_gid);
    chmod(tmppath, sb.st_mode & ALLPERMS);
   }
  }
  if (of == ((void*)0))
   of = fopen(path, "w");
  if (of == ((void*)0)) {
   warn("%s: open()", path);
   goto failure;
  }
 }
 count = url->offset;


 stat_start(&xs, path, us.size, count);

 sigalrm = siginfo = sigint = 0;


 setvbuf(f, ((void*)0), _IOFBF, B_size);
 signal(SIGINFO, sig_handler);
 while (!sigint) {
  if (us.size != -1 && us.size - count < B_size &&
      us.size - count >= 0)
   size = us.size - count;
  else
   size = B_size;
  if (siginfo) {
   stat_end(&xs);
   siginfo = 0;
  }

  if (size == 0)
   break;

  if ((readcnt = fread(buf, 1, size, f)) < size) {
   if (ferror(f) && errno == EINTR && !sigint)
    clearerr(f);
   else if (readcnt == 0)
    break;
  }

  stat_update(&xs, count += readcnt);
  for (ptr = buf; readcnt > 0; ptr += wr, readcnt -= wr)
   if ((wr = fwrite(ptr, 1, readcnt, of)) < readcnt) {
    if (ferror(of) && errno == EINTR && !sigint)
     clearerr(of);
    else
     break;
   }
  if (readcnt != 0)
   break;
 }
 if (!sigalrm)
  sigalrm = ferror(f) && errno == ETIMEDOUT;
 signal(SIGINFO, SIG_DFL);

 stat_end(&xs);






 signal:

 if (!n_flag && us.mtime && !o_stdout && of != ((void*)0) &&
     (stat(path, &sb) != -1) && sb.st_mode & S_IFREG) {
  struct timeval tv[2];

  fflush(of);
  tv[0].tv_sec = (long)(us.atime ? us.atime : us.mtime);
  tv[1].tv_sec = (long)us.mtime;
  tv[0].tv_usec = tv[1].tv_usec = 0;
  if (utimes(tmppath ? tmppath : path, tv))
   warn("%s: utimes()", tmppath ? tmppath : path);
 }


 if (sigalrm)
  warnx("transfer timed out");
 if (sigint) {
  warnx("transfer interrupted");
  goto failure;
 }


 if (f == ((void*)0))
  goto failure;

 if (!sigalrm) {

  if (ferror(f))
   warn("%s", URL);
  if (ferror(of))
   warn("%s", path);
  if (ferror(f) || ferror(of))
   goto failure;
 }


 if (us.size != -1 && count < us.size) {
  warnx("%s appears to be truncated: %jd/%jd bytes",
      path, (intmax_t)count, (intmax_t)us.size);
  goto failure_keep;
 }





 if (sigalrm && us.size == -1) {
  warnx("%s may be truncated", path);
  goto failure_keep;
 }

 success:
 r = 0;
 if (tmppath != ((void*)0) && rename(tmppath, path) == -1) {
  warn("%s: rename()", path);
  goto failure_keep;
 }
 goto done;
 failure:
 if (of && of != stdout && !R_flag && !r_flag)
  if (stat(path, &sb) != -1 && (sb.st_mode & S_IFREG))
   unlink(tmppath ? tmppath : path);
 if (R_flag && tmppath != ((void*)0) && sb.st_size == -1)
  rename(tmppath, path);
 failure_keep:
 r = -1;
 goto done;
 done:
 if (f)
  fclose(f);
 if (of && of != stdout)
  fclose(of);
 if (url)
  fetchFreeURL(url);
 if (tmppath != ((void*)0))
  free(tmppath);
 return (r);
}
