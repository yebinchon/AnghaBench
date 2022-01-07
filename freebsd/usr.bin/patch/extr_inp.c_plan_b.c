
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int FILE ;


 size_t BUFFERSIZE ;
 int O_CREAT ;
 int O_EXCL ;
 int O_RDONLY ;
 int O_WRONLY ;
 int SEEK_SET ;
 char const* TMPINNAME ;
 int ask (char*,int *) ;
 scalar_t__ batch ;
 char* buf ;
 int close (int ) ;
 int fatal (char*,...) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 char* fgetln (int *,size_t*) ;
 int * fgets (char*,size_t,int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ force ;
 int free (char*) ;
 int fseek (int *,long,int ) ;
 size_t input_lines ;
 int last_line_missing_eol ;
 size_t lines_per_buf ;
 void* malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 int open (char const*,int,...) ;
 int pfatal (char*,...) ;
 scalar_t__ rev_in_string (char*) ;
 int * revision ;
 int say (char*,int *) ;
 size_t strlen (char*) ;
 char** tibuf ;
 size_t tibuflen ;
 int tifd ;
 size_t tireclen ;
 int unlink (char const*) ;
 int using_plan_a ;
 scalar_t__ verbose ;
 scalar_t__ write (int ,char*,size_t) ;

__attribute__((used)) static void
plan_b(const char *filename)
{
 FILE *ifp;
 size_t i = 0, j, len, maxlen = 1;
 char *lbuf = ((void*)0), *p;
 bool found_revision = (revision == ((void*)0));

 using_plan_a = 0;
 if ((ifp = fopen(filename, "r")) == ((void*)0))
  pfatal("can't open file %s", filename);
 unlink(TMPINNAME);
 if ((tifd = open(TMPINNAME, O_EXCL | O_CREAT | O_WRONLY, 0666)) < 0)
  pfatal("can't open file %s", TMPINNAME);
 while ((p = fgetln(ifp, &len)) != ((void*)0)) {
  if (p[len - 1] == '\n')
   p[len - 1] = '\0';
  else {

   if ((lbuf = malloc(len + 1)) == ((void*)0))
    fatal("out of memory\n");
   memcpy(lbuf, p, len);
   lbuf[len] = '\0';
   p = lbuf;

   last_line_missing_eol = 1;
   len++;
  }
  if (revision != ((void*)0) && !found_revision && rev_in_string(p))
   found_revision = 1;
  if (len > maxlen)
   maxlen = len;
 }
 free(lbuf);
 if (ferror(ifp))
  pfatal("can't read file %s", filename);

 if (revision != ((void*)0)) {
  if (!found_revision) {
   if (force) {
    if (verbose)
     say("Warning: this file doesn't appear "
         "to be the %s version--patching anyway.\n",
         revision);
   } else if (batch) {
    fatal("this file doesn't appear to be the "
        "%s version--aborting.\n",
        revision);
   } else {
    ask("This file doesn't appear to be the %s "
        "version--patch anyway? [n] ",
        revision);
    if (*buf != 'y')
     fatal("aborted\n");
   }
  } else if (verbose)
   say("Good.  This file appears to be the %s version.\n",
       revision);
 }
 fseek(ifp, 0L, SEEK_SET);
 tireclen = maxlen;
 tibuflen = maxlen > BUFFERSIZE ? maxlen : BUFFERSIZE;
 lines_per_buf = tibuflen / maxlen;
 tibuf[0] = malloc(tibuflen + 1);
 if (tibuf[0] == ((void*)0))
  fatal("out of memory\n");
 tibuf[1] = malloc(tibuflen + 1);
 if (tibuf[1] == ((void*)0))
  fatal("out of memory\n");
 for (i = 1;; i++) {
  p = tibuf[0] + maxlen * (i % lines_per_buf);
  if (i % lines_per_buf == 0)
   if (write(tifd, tibuf[0], tibuflen) !=
       (ssize_t) tibuflen)
    pfatal("can't write temp file");
  if (fgets(p, maxlen + 1, ifp) == ((void*)0)) {
   input_lines = i - 1;
   if (i % lines_per_buf != 0)
    if (write(tifd, tibuf[0], tibuflen) !=
        (ssize_t) tibuflen)
     pfatal("can't write temp file");
   break;
  }
  j = strlen(p);

  if (j == 0 || p[j - 1] != '\n')
   p[j] = '\n';
 }
 fclose(ifp);
 close(tifd);
 if ((tifd = open(TMPINNAME, O_RDONLY)) < 0)
  pfatal("can't reopen file %s", TMPINNAME);
}
