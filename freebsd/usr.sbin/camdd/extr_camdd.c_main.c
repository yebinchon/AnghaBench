
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct camdd_io_opts {scalar_t__ dev_type; } ;
typedef int camdd_argmask ;


 int CAMDD_ARG_ERR_RECOVER ;
 int CAMDD_ARG_NONE ;
 int CAMDD_ARG_RETRIES ;
 int CAMDD_ARG_TIMEOUT ;
 int CAMDD_ARG_VERBOSE ;
 scalar_t__ CAMDD_DEV_NONE ;
 int CAMDD_PASS_RW_TIMEOUT ;
 struct camdd_io_opts* calloc (int,int) ;
 int camdd_parse_io_opts (int ,int,struct camdd_io_opts*) ;
 int camdd_rw (struct camdd_io_opts*,int,int ,int,int) ;
 int errx (int,char*,...) ;
 int exit (int) ;
 int expand_number (int ,int *) ;
 int free (struct camdd_io_opts*) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 int strtol (int ,int *,int ) ;
 int usage () ;
 int warn (char*,...) ;

int
main(int argc, char **argv)
{
 int c;
 camdd_argmask arglist = CAMDD_ARG_NONE;
 int timeout = 0, retry_count = 1;
 int error = 0;
 uint64_t max_io = 0;
 struct camdd_io_opts *opt_list = ((void*)0);

 if (argc == 1) {
  usage();
  exit(1);
 }

 opt_list = calloc(2, sizeof(struct camdd_io_opts));
 if (opt_list == ((void*)0)) {
  warn("Unable to allocate option list");
  error = 1;
  goto bailout;
 }

 while ((c = getopt(argc, argv, "C:Ehi:m:o:t:v")) != -1){
  switch (c) {
  case 'C':
   retry_count = strtol(optarg, ((void*)0), 0);
   if (retry_count < 0)
    errx(1, "retry count %d is < 0",
         retry_count);
   arglist |= CAMDD_ARG_RETRIES;
   break;
  case 'E':
   arglist |= CAMDD_ARG_ERR_RECOVER;
   break;
  case 'i':
  case 'o':
   if (((c == 'i')
     && (opt_list[0].dev_type != CAMDD_DEV_NONE))
    || ((c == 'o')
     && (opt_list[1].dev_type != CAMDD_DEV_NONE))) {
    errx(1, "Only one input and output path "
        "allowed");
   }
   error = camdd_parse_io_opts(optarg, (c == 'o') ? 1 : 0,
       (c == 'o') ? &opt_list[1] : &opt_list[0]);
   if (error != 0)
    goto bailout;
   break;
  case 'm':
   error = expand_number(optarg, &max_io);
   if (error == -1) {
    warn("invalid maximum I/O amount %s", optarg);
    error = 1;
    goto bailout;
   }
   break;
  case 't':
   timeout = strtol(optarg, ((void*)0), 0);
   if (timeout < 0)
    errx(1, "invalid timeout %d", timeout);

   timeout *= 1000;
   arglist |= CAMDD_ARG_TIMEOUT;
   break;
  case 'v':
   arglist |= CAMDD_ARG_VERBOSE;
   break;
  case 'h':
  default:
   usage();
   exit(1);
   break;
  }
 }

 if ((opt_list[0].dev_type == CAMDD_DEV_NONE)
  || (opt_list[1].dev_type == CAMDD_DEV_NONE))
  errx(1, "Must specify both -i and -o");




 if (timeout == 0)
  timeout = CAMDD_PASS_RW_TIMEOUT;

 error = camdd_rw(opt_list, 2, max_io, retry_count, timeout);

bailout:
 free(opt_list);

 exit(error);
}
