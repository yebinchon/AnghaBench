
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct label_specs {int dummy; } ;
struct TYPE_5__ {int fts_info; char* fts_path; } ;
typedef TYPE_1__ FTSENT ;
typedef int FTS ;
 int FTS_LOGICAL ;

 int FTS_PHYSICAL ;
 int FTS_SKIP ;



 int FTS_XDEV ;
 int add_setfmac_specs (struct label_specs*,char*) ;
 int add_specs (struct label_specs*,int ,int) ;
 int apply_specs (struct label_specs*,TYPE_1__*,int,int) ;
 char* basename (char*) ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 int exit (int ) ;
 int fts_close (int *) ;
 int * fts_open (char**,int,int *) ;
 TYPE_1__* fts_read (int *) ;
 int fts_set (int *,TYPE_1__*,int ) ;
 int getopt (int,char**,char*) ;
 struct label_specs* new_specs () ;
 int optarg ;
 scalar_t__ optind ;
 int qflag ;
 scalar_t__ specs_empty (struct label_specs*) ;
 scalar_t__ strcmp (char*,char*) ;
 int usage (int) ;
 int warnx (char*,char*) ;

int
main(int argc, char **argv)
{
 FTSENT *ftsent;
 FTS *fts;
 struct label_specs *specs;
 int eflag = 0, xflag = 0, vflag = 0, Rflag = 0, hflag;
 int ch, is_setfmac;
 char *bn;

 bn = basename(argv[0]);
 if (bn == ((void*)0))
  err(1, "basename");
 is_setfmac = strcmp(bn, "setfmac") == 0;
 hflag = is_setfmac ? FTS_LOGICAL : FTS_PHYSICAL;
 specs = new_specs();
 while ((ch = getopt(argc, argv, is_setfmac ? "Rhq" : "ef:qs:vx")) !=
     -1) {
  switch (ch) {
  case 'R':
   Rflag = 1;
   break;
  case 'e':
   eflag = 1;
   break;
  case 'f':
   add_specs(specs, optarg, 0);
   break;
  case 'h':
   hflag = FTS_PHYSICAL;
   break;
  case 'q':
   qflag = 1;
   break;
  case 's':
   add_specs(specs, optarg, 1);
   break;
  case 'v':
   vflag++;
   break;
  case 'x':
   xflag = FTS_XDEV;
   break;
  default:
   usage(is_setfmac);
  }
 }
 argc -= optind;
 argv += optind;

 if (is_setfmac) {
  if (argc <= 1)
   usage(is_setfmac);
  add_setfmac_specs(specs, *argv);
  argc--;
  argv++;
 } else {
  if (argc == 0 || specs_empty(specs))
   usage(is_setfmac);
 }
 fts = fts_open(argv, hflag | xflag, ((void*)0));
 if (fts == ((void*)0))
  err(1, "cannot traverse filesystem%s", argc ? "s" : "");
 while ((ftsent = fts_read(fts)) != ((void*)0)) {
  switch (ftsent->fts_info) {
  case 134:
   break;
  case 138:
  case 137:

   if (is_setfmac && !Rflag)
    fts_set(fts, ftsent, FTS_SKIP);
  case 136:
  case 132:
  case 130:
  case 129:
  case 128:
   if (apply_specs(specs, ftsent, hflag, vflag)) {
    if (eflag) {
     errx(1, "labeling not supported in %s",
         ftsent->fts_path);
    }
    if (!qflag)
     warnx("labeling not supported in %s",
         ftsent->fts_path);
    fts_set(fts, ftsent, FTS_SKIP);
   }
   break;
  case 135:
  case 133:
  case 131:
   err(1, "traversing %s", ftsent->fts_path);
  default:
   errx(1, "CANNOT HAPPEN (%d) traversing %s",
       ftsent->fts_info, ftsent->fts_path);
  }
 }
 fts_close(fts);
 exit(0);
}
