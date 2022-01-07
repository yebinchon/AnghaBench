
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tmpf ;
struct entry {int dummy; } ;
typedef int FILE ;


 scalar_t__ EOF ;
 int FATAL (char*,char*,char*) ;
 int FNBUFF ;
 int F_OK ;
 int LNBUFF ;
 int MAXPATHLEN ;
 int R_OK ;
 int TMPNAME ;
 char* _PATH_TMP ;
 int access (char*,int) ;
 int asmparse (int *) ;
 int asprintf (char**,char*,char*,int ) ;
 scalar_t__ atof (char*) ;
 int bzero (char*,int) ;
 int cparse (int *) ;
 int entry_acqref (struct entry*) ;
 struct entry* entry_create (char*,uintptr_t,uintptr_t,uintptr_t) ;
 scalar_t__ fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fqueue_compact (float) ;
 int fqueue_getall (char*,char*,int) ;
 int fqueue_insertgen () ;
 struct entry* general_findent (uintptr_t) ;
 int general_insertent (struct entry*) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ isspace (char) ;
 int mkstemp (char*) ;
 char* optarg ;
 scalar_t__ optind ;
 int remove (char*) ;
 int snprintf (char*,int,char*,char*,char*,...) ;
 int sscanf (char*,char*,void**,char*,void**,void**) ;
 scalar_t__ system (char*) ;
 int totalsamples ;
 int usage (char*) ;

int
main(int argc, char *argv[])
{
 char buffer[LNBUFF], fname[FNBUFF];
 char *tbfl, *tofl, *tmpdir;
 char tmpf[MAXPATHLEN * 2 + 50];
 float limit;
 char *bin, *exec, *kfile, *ofile;
 struct entry *obj;
 FILE *gfp, *bfp;
 void *ptr, *hstart, *hend;
 uintptr_t tmppc, ostart, oend;
 int cget, asmsrc;

 exec = argv[0];
 ofile = ((void*)0);
 bin = ((void*)0);
 kfile = ((void*)0);
 asmsrc = 0;
 limit = 0.5;
 while ((cget = getopt(argc, argv, "ahl:k:")) != -1)
  switch(cget) {
  case 'a':
   asmsrc = 1;
   break;
  case 'k':
   kfile = optarg;
   break;
  case 'l':
   limit = (float)atof(optarg);
   break;
  case 'h':
  case '?':
  default:
   usage(exec);
  }
 argc -= optind;
 argv += optind;
 if (argc != 2)
  usage(exec);
 ofile = argv[0];
 bin = argv[1];

 if (access(bin, R_OK | F_OK) == -1)
  FATAL(exec, "%s: Impossible to locate the binary file\n",
      exec);
 if (access(ofile, R_OK | F_OK) == -1)
  FATAL(exec, "%s: Impossible to locate the pmcstat file\n",
      exec);
 if (kfile != ((void*)0) && access(kfile, R_OK | F_OK) == -1)
  FATAL(exec, "%s: Impossible to locate the kernel file\n",
      exec);

 bzero(tmpf, sizeof(tmpf));
 tmpdir = getenv("TMPDIR");
 if (tmpdir == ((void*)0)) {
  asprintf(&tbfl, "%s/%s", _PATH_TMP, TMPNAME);
  asprintf(&tofl, "%s/%s", _PATH_TMP, TMPNAME);
 } else {
  asprintf(&tbfl, "%s/%s", tmpdir, TMPNAME);
  asprintf(&tofl, "%s/%s", tmpdir, TMPNAME);
 }
 if (tofl == ((void*)0) || tbfl == ((void*)0))
  FATAL(exec, "%s: Cannot create tempfile templates\n",
      exec);
 if (mkstemp(tofl) == -1)
  FATAL(exec, "%s: Impossible to create the tmp file\n",
      exec);
 if (kfile != ((void*)0))
  snprintf(tmpf, sizeof(tmpf), "pmcstat -k %s -R %s -m %s",
      kfile, ofile, tofl);
 else
  snprintf(tmpf, sizeof(tmpf), "pmcstat -R %s -m %s", ofile,
      tofl);
 if (system(tmpf) != 0)
  FATAL(exec, "%s: Impossible to create the tmp file\n",
      exec);

 gfp = fopen(tofl, "r");
 if (gfp == ((void*)0))
  FATAL(exec, "%s: Impossible to open the map file\n",
      exec);






 while (fgets(buffer, LNBUFF, gfp) != ((void*)0)) {
  if (isspace(buffer[0]))
   continue;
  if (sscanf(buffer, "%p %s %p %p\n", &ptr, fname,
      &hstart, &hend) != 4)
   FATAL(((void*)0),
       "%s: Invalid scan of function in the map file\n",
       exec);
  ostart = (uintptr_t)hstart;
  oend = (uintptr_t)hend;
  tmppc = (uintptr_t)ptr;
  totalsamples++;
  obj = general_findent(tmppc);
  if (obj != ((void*)0)) {
   entry_acqref(obj);
   continue;
  }
  obj = entry_create(fname, tmppc, ostart, oend);
  if (obj == ((void*)0))
   FATAL(exec,
       "%s: Impossible to create a new object\n", exec);
  general_insertent(obj);
 }
 if (fclose(gfp) == EOF)
  FATAL(exec, "%s: Impossible to close the filedesc\n",
      exec);
 if (remove(tofl) == -1)
                FATAL(exec, "%s: Impossible to remove the tmpfile\n",
                    exec);





 if (fqueue_insertgen() == -1)
  FATAL(exec, "%s: Impossible to generate an analysis\n",
      exec);
 fqueue_compact(limit);
 if (fqueue_getall(bin, tbfl, asmsrc) == -1)
  FATAL(exec, "%s: Impossible to create the tmp file\n",
      exec);

 bfp = fopen(tbfl, "r");
 if (bfp == ((void*)0))
  FATAL(exec, "%s: Impossible to open the binary file\n",
      exec);

 if (asmsrc != 0)
  asmparse(bfp);
 else if (cparse(bfp) == -1)
  FATAL(((void*)0), "%s: Invalid format for the C file\n", exec);
 if (fclose(bfp) == EOF)
                FATAL(exec, "%s: Impossible to close the filedesc\n",
                    exec);
 if (remove(tbfl) == -1)
                FATAL(exec, "%s: Impossible to remove the tmpfile\n",
                    exec);
 return (0);
}
