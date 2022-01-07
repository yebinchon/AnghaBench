
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct label_spec_entry {char* regexstr; char* mactext; char* modestr; int mode; int flags; int regex; } ;


 int F_DONTLABEL ;
 int REG_EXTENDED ;
 int REG_NOSUB ;
 int S_IFBLK ;
 int S_IFCHR ;
 int S_IFDIR ;
 int S_IFIFO ;
 int S_IFLNK ;
 int S_IFREG ;
 int S_IFSOCK ;
 int asprintf (char**,char*,char*) ;
 int err (int,char*,...) ;
 int errx (int,char*,char const*,...) ;
 char* malloc (size_t) ;
 int regcomp (int *,char*,int) ;
 size_t regerror (int,int *,char*,size_t) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 int strlen (char*) ;
 char* strtok (char*,char*) ;

void
add_spec_line(const char *file, int is_sebsd, struct label_spec_entry *entry,
    char *line)
{
 char *regexstr, *modestr, *macstr, *regerrorstr;
 size_t size;
 int error;

 regexstr = strtok(line, " \t");
 if (regexstr == ((void*)0))
  errx(1, "%s: need regular expression", file);
 modestr = strtok(((void*)0), " \t");
 if (modestr == ((void*)0))
  errx(1, "%s: need a label", file);
 macstr = strtok(((void*)0), " \t");
 if (macstr == ((void*)0)) {
  macstr = modestr;
  modestr = ((void*)0);
 }
 if (strtok(((void*)0), " \t") != ((void*)0))
  errx(1, "%s: extraneous fields at end of line", file);

 if (asprintf(&regexstr, "^%s$", regexstr) == -1)
  err(1, "%s: processing regular expression", file);
 entry->regexstr = regexstr;
 error = regcomp(&entry->regex, regexstr, REG_EXTENDED | REG_NOSUB);
 if (error) {
  size = regerror(error, &entry->regex, ((void*)0), 0);
  regerrorstr = malloc(size);
  if (regerrorstr == ((void*)0))
   err(1, "malloc");
  (void)regerror(error, &entry->regex, regerrorstr, size);
  errx(1, "%s: %s: %s", file, entry->regexstr, regerrorstr);
 }
 if (!is_sebsd) {
  entry->mactext = strdup(macstr);
  if (entry->mactext == ((void*)0))
   err(1, "strdup");
 } else {
  if (asprintf(&entry->mactext, "sebsd/%s", macstr) == -1)
   err(1, "asprintf");
  if (strcmp(macstr, "<<none>>") == 0)
   entry->flags |= F_DONTLABEL;
 }
 if (modestr != ((void*)0)) {
  if (strlen(modestr) != 2 || modestr[0] != '-')
   errx(1, "%s: invalid mode string: %s", file, modestr);
  switch (modestr[1]) {
  case 'b':
   entry->mode = S_IFBLK;
   entry->modestr = ",-b";
   break;
  case 'c':
   entry->mode = S_IFCHR;
   entry->modestr = ",-c";
   break;
  case 'd':
   entry->mode = S_IFDIR;
   entry->modestr = ",-d";
   break;
  case 'p':
   entry->mode = S_IFIFO;
   entry->modestr = ",-p";
   break;
  case 'l':
   entry->mode = S_IFLNK;
   entry->modestr = ",-l";
   break;
  case 's':
   entry->mode = S_IFSOCK;
   entry->modestr = ",-s";
   break;
  case '-':
   entry->mode = S_IFREG;
   entry->modestr = ",--";
   break;
  default:
   errx(1, "%s: invalid mode string: %s", file, modestr);
  }
 } else {
  entry->modestr = "";
 }
}
