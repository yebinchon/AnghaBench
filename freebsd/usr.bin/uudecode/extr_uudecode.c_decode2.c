
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct passwd {char* pw_dir; } ;
typedef int buf ;


 int EEXIST ;
 int EISDIR ;
 scalar_t__ ENOENT ;
 int EOF ;
 int MAXPATHLEN ;
 int O_CREAT ;
 int O_EXCL ;
 int O_WRONLY ;


 int S_IFMT ;

 int base64 ;
 int base64_decode () ;
 scalar_t__ errno ;
 int * fdopen (int,char*) ;
 int * fgets (char*,int,int ) ;
 int free (void*) ;
 int getmode (void*,int ) ;
 struct passwd* getpwnam (char*) ;
 scalar_t__ iflag ;
 int infile ;
 int infp ;
 scalar_t__ lstat (char*,struct stat*) ;
 char* memcpy (char*,char*,size_t) ;
 char* memmove (char*,char*,size_t) ;
 scalar_t__ oflag ;
 int open (char*,int,int) ;
 char* outfile ;
 int * outfp ;
 scalar_t__ pflag ;
 void* setmode (char*) ;
 scalar_t__ sflag ;
 int * stdout ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 char* strrchr (char*,char) ;
 int unlink (char*) ;
 int uu_decode () ;
 int warn (char*,int ,char*) ;
 int warnc (int ,char*,int ,char*) ;
 int warnx (char*,int ) ;

__attribute__((used)) static int
decode2(void)
{
 int flags, fd, mode;
 size_t n, m;
 char *p, *q;
 void *handle;
 struct passwd *pw;
 struct stat st;
 char buf[MAXPATHLEN + 1];

 base64 = 0;

 for (;;) {
  if (fgets(buf, sizeof(buf), infp) == ((void*)0))
   return (EOF);
  p = buf;
  if (strncmp(p, "begin-base64 ", 13) == 0) {
   base64 = 1;
   p += 13;
  } else if (strncmp(p, "begin ", 6) == 0)
   p += 6;
  else
   continue;

  q = strchr(p, ' ');
  if (q == ((void*)0))
   continue;
  *q++ = '\0';

  n = strlen(q);
  while (n > 0 && (q[n-1] == '\n' || q[n-1] == '\r'))
   q[--n] = '\0';

  if (n > 0)
   break;
 }

 handle = setmode(p);
 if (handle == ((void*)0)) {
  warnx("%s: unable to parse file mode", infile);
  return (1);
 }
 mode = getmode(handle, 0) & 0666;
 free(handle);

 if (sflag) {

  p = ((void*)0);
  pw = ((void*)0);
  if (*q == '~')
   p = strchr(q, '/');
  if (p != ((void*)0)) {
   *p = '\0';
   pw = getpwnam(q + 1);
   *p = '/';
  }
  if (pw != ((void*)0)) {
   n = strlen(pw->pw_dir);
   if (buf + n > p) {

    m = strlen(p);
    if (sizeof(buf) < n + m) {
     warnx("%s: bad output filename",
         infile);
     return (1);
    }
    p = memmove(buf + n, p, m);
   }
   q = memcpy(p - n, pw->pw_dir, n);
  }
 } else {

  p = strrchr(q, '/');
  if (p != ((void*)0))
   q = p + 1;
 }
 if (!oflag)
  outfile = q;


 if (pflag || strcmp(outfile, "/dev/stdout") == 0)
  outfp = stdout;
 else {
  flags = O_WRONLY | O_CREAT | O_EXCL;
  if (lstat(outfile, &st) == 0) {
   if (iflag) {
    warnc(EEXIST, "%s: %s", infile, outfile);
    return (0);
   }
   switch (st.st_mode & S_IFMT) {
   case 128:
   case 129:

    if (unlink(outfile) == 0 || errno == ENOENT)
     break;
    warn("%s: unlink %s", infile, outfile);
    return (1);
   case 130:
    warnc(EISDIR, "%s: %s", infile, outfile);
    return (1);
   default:
    if (oflag) {

     flags &= ~O_EXCL;
     break;
    }
    warnc(EEXIST, "%s: %s", infile, outfile);
    return (1);
   }
  } else if (errno != ENOENT) {
   warn("%s: %s", infile, outfile);
   return (1);
  }
  if ((fd = open(outfile, flags, mode)) < 0 ||
      (outfp = fdopen(fd, "w")) == ((void*)0)) {
   warn("%s: %s", infile, outfile);
   return (1);
  }
 }

 if (base64)
  return (base64_decode());
 else
  return (uu_decode());
}
