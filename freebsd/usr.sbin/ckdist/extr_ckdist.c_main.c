
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct stat {int st_mode; } ;
struct TYPE_4__ {int fts_info; char* fts_path; size_t fts_errno; int fts_name; int fts_level; } ;
typedef TYPE_1__ FTSENT ;
typedef int FTS ;







 int FTS_LOGICAL ;

 int FTS_ROOTLEVEL ;
 int FTS_SKIP ;
 int S_ISDIR (int ) ;
 scalar_t__ S_ISREG (int ) ;
 int ckdist (char*,int) ;
 int distfile (int ) ;
 int disttype (void*) ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 int errx (int,char*,char*) ;
 int fail (char*,char*) ;
 scalar_t__ fts_close (int *) ;
 int * fts_open (char**,int ,int *) ;
 TYPE_1__* fts_read (int *) ;
 int fts_set (int *,TYPE_1__*,int ) ;
 int getopt (int,char**,char*) ;
 scalar_t__ isstdin (char*) ;
 int opt_all ;
 char* opt_dir ;
 int opt_exist ;
 int opt_ignore ;
 void* opt_name ;
 int opt_recurse ;
 int opt_silent ;
 int opt_type ;
 void* optarg ;
 scalar_t__ optind ;
 scalar_t__ stat (char*,struct stat*) ;
 char** sys_errlist ;
 int usage () ;
 int warnx (char*) ;

int
main(int argc, char *argv[])
{
    static char *arg[2];
    struct stat sb;
    FTS *ftsp;
    FTSENT *f;
    int rval, c, type;

    while ((c = getopt(argc, argv, "ad:in:rst:x")) != -1)
 switch (c) {
 case 'a':
     opt_all = 1;
     break;
 case 'd':
     opt_dir = optarg;
     break;
 case 'i':
     opt_ignore = 1;
     break;
 case 'n':
     opt_name = optarg;
     break;
 case 'r':
     opt_recurse = 1;
     break;
 case 's':
     opt_silent = 1;
     break;
 case 't':
     if ((opt_type = disttype(optarg)) == 0) {
  warnx("illegal argument to -t option");
  usage();
     }
     break;
 case 'x':
     opt_exist = 1;
     break;
 default:
     usage();
 }
    argc -= optind;
    argv += optind;
    if (argc < 1)
 usage();
    if (opt_dir) {
 if (stat(opt_dir, &sb))
     err(2, "%s", opt_dir);
 if (!S_ISDIR(sb.st_mode))
     errx(2, "%s: not a directory", opt_dir);
    }
    rval = 0;
    do {
 if (isstdin(*argv))
     rval |= ckdist(*argv, opt_type);
 else if (stat(*argv, &sb))
     rval |= fail(*argv, ((void*)0));
 else if (S_ISREG(sb.st_mode))
     rval |= ckdist(*argv, opt_type);
 else {
     arg[0] = *argv;
     if ((ftsp = fts_open(arg, FTS_LOGICAL, ((void*)0))) == ((void*)0))
  err(2, "fts_open");
     while ((f = fts_read(ftsp)) != ((void*)0))
  switch (f->fts_info) {
  case 132:
      rval = fail(f->fts_path, "Directory causes a cycle");
      break;
  case 131:
  case 130:
  case 128:
      rval = fail(f->fts_path, sys_errlist[f->fts_errno]);
      break;
  case 133:
      if (!opt_recurse && f->fts_level > FTS_ROOTLEVEL &&
   fts_set(ftsp, f, FTS_SKIP))
   err(2, "fts_set");
      break;
  case 129:
      if ((type = distfile(f->fts_name)) != 0 &&
   (!opt_type || type == opt_type))
   rval |= ckdist(f->fts_path, type);
      break;
                default: ;
  }
     if (errno)
  err(2, "fts_read");
     if (fts_close(ftsp))
  err(2, "fts_close");
 }
    } while (*++argv);
    return rval;
}
