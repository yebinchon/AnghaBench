
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct pr {int dummy; } ;
typedef int cap_rights_t ;
struct TYPE_4__ {int st_size; int st_mode; } ;
typedef int FILE ;


 int CAP_FSTAT ;
 int CAP_READ ;
 int CAP_SEEK ;
 int D_BINARY ;
 int D_DIFFER ;
 int D_EMPTY1 ;
 int D_EMPTY2 ;
 int D_FORCEASCII ;
 int D_IGNORECASE ;
 int D_MISMATCH1 ;
 int D_MISMATCH2 ;
 int D_SAME ;
 int* J ;
 scalar_t__ STDIN_FILENO ;
 scalar_t__ S_ISDIR (int ) ;
 int S_ISREG (int ) ;
 char* _PATH_DEVNULL ;
 scalar_t__ anychange ;
 int asciifile (int *) ;
 int cap_rights_init (int *,int ,int ,int ) ;
 int caph_cache_catpages () ;
 int caph_cache_tzdata () ;
 scalar_t__ caph_enter () ;
 int caph_limit_stderr () ;
 int caph_limit_stdio () ;
 int caph_limit_stdout () ;
 scalar_t__ caph_rights_limit (scalar_t__,int *) ;
 int check (int *,int *,int) ;
 int chrtran ;
 int* class ;
 scalar_t__ clen ;
 int* clist ;
 int clistlen ;
 int clow2low ;
 scalar_t__ context_vec_ptr ;
 scalar_t__ context_vec_start ;
 int cup2low ;
 int equiv (int ,int,int ,int,int*) ;
 int err (int,char*,...) ;
 int fclose (int *) ;
 scalar_t__* file ;
 scalar_t__ fileno (int *) ;
 int files_differ (int *,int *,int) ;
 int * fopen (char*,char*) ;
 int free (int*) ;
 scalar_t__ fstat (scalar_t__,TYPE_1__*) ;
 int* ixnew ;
 int* ixold ;
 int* klist ;
 scalar_t__ lastline ;
 scalar_t__ lastmatchline ;
 int* len ;
 scalar_t__ lflag ;
 int* member ;
 int * opentemp (char*) ;
 int output (char*,int *,char*,int *,int) ;
 int prepare (int,int *,int ,int) ;
 int prune () ;
 int * sfile ;
 int* slen ;
 int sort (int ,int) ;
 struct pr* start_pr (char*,char*) ;
 int status ;
 TYPE_1__ stb1 ;
 TYPE_1__ stb2 ;
 int * stdin ;
 int stone (int*,int,int*,int*,int) ;
 int stop_pr (struct pr*) ;
 scalar_t__ strcmp (char*,char*) ;
 int unravel (int) ;
 int unsort (int ,int,int*) ;
 int warn (char*,char*) ;
 int* xcalloc (int,int) ;
 int* xreallocarray (int*,int,int) ;

int
diffreg(char *file1, char *file2, int flags, int capsicum)
{
 FILE *f1, *f2;
 int i, rval;
 struct pr *pr = ((void*)0);
 cap_rights_t rights_ro;

 f1 = f2 = ((void*)0);
 rval = D_SAME;
 anychange = 0;
 lastline = 0;
 lastmatchline = 0;
 context_vec_ptr = context_vec_start - 1;
 if (flags & D_IGNORECASE)
  chrtran = cup2low;
 else
  chrtran = clow2low;
 if (S_ISDIR(stb1.st_mode) != S_ISDIR(stb2.st_mode))
  return (S_ISDIR(stb1.st_mode) ? D_MISMATCH1 : D_MISMATCH2);
 if (strcmp(file1, "-") == 0 && strcmp(file2, "-") == 0)
  goto closem;

 if (flags & D_EMPTY1)
  f1 = fopen(_PATH_DEVNULL, "r");
 else {
  if (!S_ISREG(stb1.st_mode)) {
   if ((f1 = opentemp(file1)) == ((void*)0) ||
       fstat(fileno(f1), &stb1) < 0) {
    warn("%s", file1);
    status |= 2;
    goto closem;
   }
  } else if (strcmp(file1, "-") == 0)
   f1 = stdin;
  else
   f1 = fopen(file1, "r");
 }
 if (f1 == ((void*)0)) {
  warn("%s", file1);
  status |= 2;
  goto closem;
 }

 if (flags & D_EMPTY2)
  f2 = fopen(_PATH_DEVNULL, "r");
 else {
  if (!S_ISREG(stb2.st_mode)) {
   if ((f2 = opentemp(file2)) == ((void*)0) ||
       fstat(fileno(f2), &stb2) < 0) {
    warn("%s", file2);
    status |= 2;
    goto closem;
   }
  } else if (strcmp(file2, "-") == 0)
   f2 = stdin;
  else
   f2 = fopen(file2, "r");
 }
 if (f2 == ((void*)0)) {
  warn("%s", file2);
  status |= 2;
  goto closem;
 }

 if (lflag)
  pr = start_pr(file1, file2);

 if (capsicum) {
  cap_rights_init(&rights_ro, CAP_READ, CAP_FSTAT, CAP_SEEK);
  if (caph_rights_limit(fileno(f1), &rights_ro) < 0)
   err(2, "unable to limit rights on: %s", file1);
  if (caph_rights_limit(fileno(f2), &rights_ro) < 0)
   err(2, "unable to limit rights on: %s", file2);
  if (fileno(f1) == STDIN_FILENO || fileno(f2) == STDIN_FILENO) {

   if (caph_limit_stderr() == -1)
    err(2, "unable to limit stderr");
   if (caph_limit_stdout() == -1)
    err(2, "unable to limit stdout");
  } else if (caph_limit_stdio() == -1)
    err(2, "unable to limit stdio");

  caph_cache_catpages();
  caph_cache_tzdata();
  if (caph_enter() < 0)
   err(2, "unable to enter capability mode");
 }

 switch (files_differ(f1, f2, flags)) {
 case 0:
  goto closem;
 case 1:
  break;
 default:

  status |= 2;
  goto closem;
 }

 if ((flags & D_FORCEASCII) == 0 &&
     (!asciifile(f1) || !asciifile(f2))) {
  rval = D_BINARY;
  status |= 1;
  goto closem;
 }
 prepare(0, f1, stb1.st_size, flags);
 prepare(1, f2, stb2.st_size, flags);

 prune();
 sort(sfile[0], slen[0]);
 sort(sfile[1], slen[1]);

 member = (int *)file[1];
 equiv(sfile[0], slen[0], sfile[1], slen[1], member);
 member = xreallocarray(member, slen[1] + 2, sizeof(*member));

 class = (int *)file[0];
 unsort(sfile[0], slen[0], class);
 class = xreallocarray(class, slen[0] + 2, sizeof(*class));

 klist = xcalloc(slen[0] + 2, sizeof(*klist));
 clen = 0;
 clistlen = 100;
 clist = xcalloc(clistlen, sizeof(*clist));
 i = stone(class, slen[0], member, klist, flags);
 free(member);
 free(class);

 J = xreallocarray(J, len[0] + 2, sizeof(*J));
 unravel(klist[i]);
 free(clist);
 free(klist);

 ixold = xreallocarray(ixold, len[0] + 2, sizeof(*ixold));
 ixnew = xreallocarray(ixnew, len[1] + 2, sizeof(*ixnew));
 check(f1, f2, flags);
 output(file1, f1, file2, f2, flags);
 if (pr != ((void*)0))
  stop_pr(pr);

closem:
 if (anychange) {
  status |= 1;
  if (rval == D_SAME)
   rval = D_DIFFER;
 }
 if (f1 != ((void*)0))
  fclose(f1);
 if (f2 != ((void*)0))
  fclose(f2);

 return (rval);
}
