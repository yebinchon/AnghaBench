
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct passwd {char* pw_name; } ;
typedef int buf ;
typedef int FILE ;


 int BUFSIZ ;
 int MAXPATHLEN ;
 char* _PATH_MAILDIR ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char const*,char*) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 struct passwd* getpwuid (int ) ;
 int getuid () ;
 scalar_t__ match (char*,char*) ;
 void* optarg ;
 scalar_t__ optind ;
 int printf (char*,char*,...) ;
 int snprintf (char*,int,char*,char*,char const*) ;
 int * stdin ;
 scalar_t__ strcmp (char const*,char*) ;
 int strncmp (char*,char*,int) ;
 char tolower (char) ;
 int usage () ;

int
main(int argc, char **argv)
{
 FILE *mbox;
 struct passwd *pwd;
 int ch, count, newline;
 const char *file;
 char *sender, *p;



 char buf[BUFSIZ];


 file = sender = ((void*)0);
 count = -1;
 while ((ch = getopt(argc, argv, "cf:s:")) != -1)
  switch (ch) {
  case 'c':
   count = 0;
   break;
  case 'f':
   file = optarg;
   break;
  case 's':
   sender = optarg;
   for (p = sender; *p; ++p)
    *p = tolower(*p);
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (file == ((void*)0)) {
  if (argc) {
   (void)snprintf(buf, sizeof(buf), "%s/%s", _PATH_MAILDIR, *argv);
   file = buf;
  } else {
   if (!(file = getenv("MAIL"))) {
    if (!(pwd = getpwuid(getuid())))
     errx(1, "no password file entry for you");
    file = pwd->pw_name;
    (void)snprintf(buf, sizeof(buf),
        "%s/%s", _PATH_MAILDIR, file);
    file = buf;
   }
  }
 }


 if (strcmp(file, "-") == 0) {
  mbox = stdin;
 }
 else if ((mbox = fopen(file, "r")) == ((void*)0)) {
  errx(1, "can't read %s", file);
 }
 for (newline = 1; fgets(buf, sizeof(buf), mbox);) {
  if (*buf == '\n') {
   newline = 1;
   continue;
  }
  if (newline && !strncmp(buf, "From ", 5) &&
      (!sender || match(buf + 5, sender))) {
   if (count != -1)
    count++;
   else
    printf("%s", buf);
  }
  newline = 0;
 }
 if (count != -1)
  printf("There %s %d message%s in your incoming mailbox.\n",
      count == 1 ? "is" : "are", count, count == 1 ? "" : "s");
 fclose(mbox);
 exit(0);
}
