
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_tape_errors {int io_resid; int* io_cdb; int* io_sense; int ctl_resid; int* ctl_cdb; int* ctl_sense; } ;
union mterrstat {struct scsi_tape_errors scsi_errstat; } ;
typedef int u_int32_t ;
struct mtrblim {int mt_op; int mt_count; int min_block_length; int max_block_length; int granularity; } ;
struct mtop {int mt_op; int mt_count; int min_block_length; int max_block_length; int granularity; } ;
struct mtget {int mt_op; int mt_count; int min_block_length; int max_block_length; int granularity; } ;
struct commands {int c_flags; int c_code; int * c_name; scalar_t__ c_ronly; } ;
typedef int rblim ;
typedef int mt_com ;
typedef struct mtrblim* caddr_t ;


 char* DEFTAPE ;
 int DISABLE_THIS ;
 int IS_COMP ;
 int IS_DENSITY ;



 int const MTIOCGET ;
 int const MTIOCTOP ;
 int MTNOP ;


 char* MT_PLURAL (int) ;
 int NEED_2ARGS ;
 int O_RDONLY ;
 int O_RDWR ;
 int USE_GETOPT ;
 int ZERO_ALLOWED ;
 int bzero (struct mtrblim*,int) ;
 struct commands* com ;
 char* denstostring (int) ;
 int err (int,char*,...) ;
 int errx (int,char*,char const*) ;
 int exit (int) ;
 char* getenv (char*) ;
 int getopt (int,char**,char*) ;
 scalar_t__ ioctl (int,int const,struct mtrblim*) ;
 int isdigit (char) ;
 int mt_density_num (char*) ;
 int mt_locate (int,char**,int,char const*) ;
 int mt_xml_cmd (int const,int,char**,int,char const*) ;
 int open (char const*,int ) ;
 char* optarg ;
 scalar_t__ optind ;
 int printf (char*,...) ;
 int status (struct mtrblim*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int stringtocomp (char*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char const*,int *,int) ;
 int strtol (char*,char**,int ) ;
 int usage () ;
 int warn_eof () ;

int
main(int argc, char *argv[])
{
 const struct commands *comp;
 struct mtget mt_status;
 struct mtop mt_com;
 int ch, len, mtfd;
 const char *p, *tape;

 bzero(&mt_com, sizeof(mt_com));

 if ((tape = getenv("TAPE")) == ((void*)0))
  tape = DEFTAPE;

 while ((ch = getopt(argc, argv, "f:t:")) != -1)
  switch(ch) {
  case 'f':
  case 't':
   tape = optarg;
   break;
  case '?':
   usage();
   break;
  default:
   break;
  }
 argc -= optind;
 argv += optind;

 if (argc < 1)
  usage();

 len = strlen(p = *argv++);
 for (comp = com;; comp++) {
  if (comp->c_name == ((void*)0))
   errx(1, "%s: unknown command", p);
  if (strncmp(p, comp->c_name, len) == 0)
   break;
 }
 if((comp->c_flags & NEED_2ARGS) && argc != 2)
  usage();
 if(comp->c_flags & DISABLE_THIS) {
  warn_eof();
 }
 if (comp->c_flags & USE_GETOPT) {
  argc--;
  optind = 0;
 }

 if ((mtfd = open(tape, comp->c_ronly ? O_RDONLY : O_RDWR)) < 0)
  err(1, "%s", tape);
 if (comp->c_code != MTNOP) {
  mt_com.mt_op = comp->c_code;
  if (*argv) {
   if (!isdigit(**argv) &&
       (comp->c_flags & IS_DENSITY)) {
    const char *dcanon;
    mt_com.mt_count = mt_density_num(*argv);
    if (mt_com.mt_count == 0)
     errx(1, "%s: unknown density", *argv);
    dcanon = denstostring(mt_com.mt_count);
    if (strcmp(dcanon, *argv) != 0)
     printf(
     "Using \"%s\" as an alias for %s\n",
            *argv, dcanon);
    p = "";
   } else if (!isdigit(**argv) &&
       (comp->c_flags & IS_COMP)) {

    mt_com.mt_count = stringtocomp(*argv);
    if ((u_int32_t)mt_com.mt_count == 0xf0f0f0f0)
     errx(1, "%s: unknown compression",
          *argv);
    p = "";
   } else if ((comp->c_flags & USE_GETOPT) == 0) {
    char *q;

    mt_com.mt_count = strtol(*argv, &q, 0);
    p = q;
   }
   if (((comp->c_flags & USE_GETOPT) == 0)
    && (((mt_com.mt_count <=
        ((comp->c_flags & ZERO_ALLOWED)? -1: 0))
      && ((comp->c_flags & IS_COMP) == 0))
     || *p))
    errx(1, "%s: illegal count", *argv);
  }
  else
   mt_com.mt_count = 1;
  switch (comp->c_code) {
  case 140:
  {
   unsigned int i;
   union mterrstat umn;
   struct scsi_tape_errors *s = &umn.scsi_errstat;

   if (ioctl(mtfd, comp->c_code, (caddr_t)&umn) < 0)
    err(2, "%s", tape);
   (void)printf("Last I/O Residual: %u\n", s->io_resid);
   (void)printf(" Last I/O Command:");
   for (i = 0; i < sizeof (s->io_cdb); i++)
    (void)printf(" %02X", s->io_cdb[i]);
   (void)printf("\n");
   (void)printf("   Last I/O Sense:\n\n\t");
   for (i = 0; i < sizeof (s->io_sense); i++) {
    (void)printf(" %02X", s->io_sense[i]);
    if (((i + 1) & 0xf) == 0) {
     (void)printf("\n\t");
    }
   }
   (void)printf("\n");
   (void)printf("Last Control Residual: %u\n",
       s->ctl_resid);
   (void)printf(" Last Control Command:");
   for (i = 0; i < sizeof (s->ctl_cdb); i++)
    (void)printf(" %02X", s->ctl_cdb[i]);
   (void)printf("\n");
   (void)printf("   Last Control Sense:\n\n\t");
   for (i = 0; i < sizeof (s->ctl_sense); i++) {
    (void)printf(" %02X", s->ctl_sense[i]);
    if (((i + 1) & 0xf) == 0) {
     (void)printf("\n\t");
    }
   }
   (void)printf("\n\n");
   exit(0);

  }
  case 133:
  case 132:
  {
   u_int32_t block;
   if (ioctl(mtfd, comp->c_code, (caddr_t)&block) < 0)
    err(2, "%s", tape);
   (void)printf("%s: %s block location %u\n", tape,
       (comp->c_code == 133)? "hardware" :
       "logical", block);
   exit(0);

  }
  case 130:
  case 136:
  {
   u_int32_t block = (u_int32_t)mt_com.mt_count;
   if (ioctl(mtfd, comp->c_code, (caddr_t)&block) < 0)
    err(2, "%s", tape);
   exit(0);

  }
  case 137:
  {
   u_int32_t om;
   if (ioctl(mtfd, 137, (caddr_t)&om) < 0)
    err(2, "%s", tape);
   (void)printf("%s: the model is %u filemar%s at EOT\n",
       tape, om, (om > 1)? "ks" : "k");
   exit(0);

  }
  case 131:
  {
   u_int32_t om, nm = (u_int32_t)mt_com.mt_count;
   if (ioctl(mtfd, 137, (caddr_t)&om) < 0)
    err(2, "%s", tape);
   if (ioctl(mtfd, comp->c_code, (caddr_t)&nm) < 0)
    err(2, "%s", tape);
   (void)printf("%s: old model was %u filemar%s at EOT\n",
       tape, om, (om > 1)? "ks" : "k");
   (void)printf("%s: new model  is %u filemar%s at EOT\n",
       tape, nm, (nm > 1)? "ks" : "k");
   exit(0);

  }
  case 134:
  {
   struct mtrblim rblim;

   bzero(&rblim, sizeof(rblim));

   if (ioctl(mtfd, 134, (caddr_t)&rblim) < 0)
    err(2, "%s", tape);
   (void)printf("%s:\n"
       "    min blocksize %u byte%s\n"
       "    max blocksize %u byte%s\n"
       "    granularity %u byte%s\n",
       tape, rblim.min_block_length,
       MT_PLURAL(rblim.min_block_length),
       rblim.max_block_length,
       MT_PLURAL(rblim.max_block_length),
       (1 << rblim.granularity),
       MT_PLURAL((1 << rblim.granularity)));
   exit(0);

  }
  case 135:
  case 139:
  case 128:
  case 129:
  {
   int retval = 0;

   retval = mt_xml_cmd(comp->c_code, argc, argv, mtfd,
       tape);

   exit(retval);
  }
  case 138:
  {
   int retval = 0;

   retval = mt_locate(argc, argv, mtfd, tape);

   exit(retval);
  }
  default:
   break;
  }
  if (ioctl(mtfd, MTIOCTOP, &mt_com) < 0)
   err(1, "%s: %s", tape, comp->c_name);
 } else {
  if (ioctl(mtfd, MTIOCGET, &mt_status) < 0)
   err(1, ((void*)0));
  status(&mt_status);
 }
 exit(0);

}
