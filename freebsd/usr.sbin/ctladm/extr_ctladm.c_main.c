
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ctladm_optret ;
typedef int ctladm_cmdfunction ;
typedef int ctladm_cmdargs ;


 scalar_t__ CC_OR_AMBIGUOUS ;
 scalar_t__ CC_OR_NOT_FOUND ;
 int CTLADM_ARG_DEVICE ;
 int CTLADM_ARG_INITIATOR ;
 int CTLADM_ARG_NEED_TL ;
 int CTLADM_ARG_NONE ;
 int CTLADM_ARG_RETRIES ;
 int CTLADM_ARG_TARG_LUN ;
 char* CTL_DEFAULT_DEV ;
 int ENOENT ;
 int O_RDWR ;
 int cctl_create_lun (int,int,char**,char*) ;
 int cctl_delay (int,int,int,char**,char*) ;
 int cctl_devlist (int,int,char**,char*) ;
 int cctl_dump_ooa (int,int,char**) ;
 int cctl_dump_structs (int,int) ;
 int cctl_error_inject (int,int,int,char**,char*) ;
 int cctl_inquiry (int,int,int,int) ;
 int cctl_inquiry_vpd_devid (int,int,int) ;
 int cctl_islist (int,int,char**,char*) ;
 int cctl_islogout (int,int,char**,char*) ;
 int cctl_isterminate (int,int,char**,char*) ;
 int cctl_lunlist (int) ;
 int cctl_lunmap (int,int,char**,char*) ;
 int cctl_mode_sense (int,int,int,int,int,char**,char*) ;
 int cctl_modify_lun (int,int,char**,char*) ;
 int cctl_persistent_reserve_in (int,int,int,int,char**,char*,int) ;
 int cctl_persistent_reserve_out (int,int,int,int,char**,char*,int) ;
 int cctl_port (int,int,char**,char*) ;
 int cctl_portlist (int,int,char**,char*) ;
 int cctl_read_capacity (int,int,int,int,int,char**,char*) ;
 int cctl_read_write (int,int,int,int,int,char**,char*,int) ;
 int cctl_report_luns (int,int,int,int) ;
 int cctl_report_target_port_group (int,int,int) ;
 int cctl_req_sense (int,int,int,int) ;
 int cctl_rm_lun (int,int,char**,char*) ;
 int cctl_start_stop (int,int,int,int,int,int,char**,char*) ;
 int cctl_sync_cache (int,int,int,int,int,char**,char*) ;
 int cctl_tur (int,int,int,int) ;
 int close (int) ;
 int errno ;
 int exit (int) ;
 int fprintf (int ,char*,char*,...) ;
 int getopt (int,char**,char*) ;
 scalar_t__ getoption (int ,char*,int*,int*,char const**) ;
 int isdigit (char) ;
 int kldload (char*) ;
 int modfind (char*) ;
 int open (char*,int ) ;
 char* optarg ;
 int optind ;
 int option_table ;
 int optreset ;
 int sprintf (char*,char*,char const*,...) ;
 int stderr ;
 char* strdup (char*) ;
 char* strerror (int) ;
 int strtol (char*,int *,int ) ;
 int usage (int) ;
 int warn (char*) ;
 int warnx (char*,char*) ;

int
main(int argc, char **argv)
{
 int c;
 ctladm_cmdfunction command;
 ctladm_cmdargs cmdargs;
 ctladm_optret optreturn;
 char *device;
 const char *mainopt = "C:D:I:";
 const char *subopt = ((void*)0);
 char combinedopt[256];
 int lun;
 int optstart = 2;
 int retval, fd;
 int retries;
 int initid;
 int saved_errno;

 retval = 0;
 cmdargs = CTLADM_ARG_NONE;
 command = 152;
 device = ((void*)0);
 fd = -1;
 retries = 0;
 lun = 0;
 initid = 7;

 if (argc < 2) {
  usage(1);
  retval = 1;
  goto bailout;
 }




 optreturn = getoption(option_table,argv[1], &command, &cmdargs,&subopt);

 if (optreturn == CC_OR_AMBIGUOUS) {
  warnx("ambiguous option %s", argv[1]);
  usage(0);
  exit(1);
 } else if (optreturn == CC_OR_NOT_FOUND) {
  warnx("option %s not found", argv[1]);
  usage(0);
  exit(1);
 }

 if (cmdargs & CTLADM_ARG_NEED_TL) {
  if ((argc < 3) || (!isdigit(argv[2][0]))) {
   warnx("option %s requires a lun argument",
         argv[1]);
   usage(0);
   exit(1);
  }
  lun = strtol(argv[2], ((void*)0), 0);

  cmdargs |= CTLADM_ARG_TARG_LUN;
  optstart++;
 }
 if (subopt != ((void*)0))
  sprintf(combinedopt, "%s%s", mainopt, subopt);
 else
  sprintf(combinedopt, "%s", mainopt);






 optind = optstart;






 while ((c = getopt(argc, argv, combinedopt))!= -1){
  switch (c) {
  case 'C':
   cmdargs |= CTLADM_ARG_RETRIES;
   retries = strtol(optarg, ((void*)0), 0);
   break;
  case 'D':
   device = strdup(optarg);
   cmdargs |= CTLADM_ARG_DEVICE;
   break;
  case 'I':
   cmdargs |= CTLADM_ARG_INITIATOR;
   initid = strtol(optarg, ((void*)0), 0);
   break;
  default:
   break;
  }
 }

 if ((cmdargs & CTLADM_ARG_INITIATOR) == 0)
  initid = 7;

 optind = optstart;
 optreset = 1;




 if (((cmdargs & CTLADM_ARG_DEVICE) == 0)
  && (command != 152)) {
  device = strdup(CTL_DEFAULT_DEV);
  cmdargs |= CTLADM_ARG_DEVICE;
 }

 if ((cmdargs & CTLADM_ARG_DEVICE)
  && (command != 152)) {
  fd = open(device, O_RDWR);
  if (fd == -1 && errno == ENOENT) {
   saved_errno = errno;
   retval = kldload("ctl");
   if (retval != -1)
    fd = open(device, O_RDWR);
   else
    errno = saved_errno;
  }
  if (fd == -1) {
   fprintf(stderr, "%s: error opening %s: %s\n",
    argv[0], device, strerror(errno));
   retval = 1;
   goto bailout;
  }







 } else if ((command != 152)
  && ((cmdargs & CTLADM_ARG_DEVICE) == 0)) {
  fprintf(stderr, "%s: you must specify a device with the "
   "--device argument for this command\n", argv[0]);
  command = 152;
  retval = 1;
 }

 switch (command) {
 case 129:
  retval = cctl_tur(fd, lun, initid, retries);
  break;
 case 151:
  retval = cctl_inquiry(fd, lun, initid, retries);
  break;
 case 135:
  retval = cctl_req_sense(fd, lun, initid, retries);
  break;
 case 136:
  retval = cctl_report_luns(fd, lun, initid, retries);
  break;
 case 158:
  retval = cctl_create_lun(fd, argc, argv, combinedopt);
  break;
 case 134:
  retval = cctl_rm_lun(fd, argc, argv, combinedopt);
  break;
 case 156:
  retval = cctl_devlist(fd, argc, argv, combinedopt);
  break;
 case 138:
 case 128:
  retval = cctl_read_write(fd, lun, initid, retries,
      argc, argv, combinedopt, command);
  break;
 case 142:
  retval = cctl_port(fd, argc, argv, combinedopt);
  break;
 case 141:
  retval = cctl_portlist(fd, argc, argv, combinedopt);
  break;
 case 145:
  retval = cctl_lunmap(fd, argc, argv, combinedopt);
  break;
 case 137:
  retval = cctl_read_capacity(fd, lun, initid, retries,
         argc, argv, combinedopt);
  break;
 case 144:
  retval = cctl_mode_sense(fd, lun, initid, retries,
      argc, argv, combinedopt);
  break;
 case 132:
 case 131:
  retval = cctl_start_stop(fd, lun, initid, retries,
      (command == 132) ? 1 : 0,
      argc, argv, combinedopt);
  break;
 case 130:
  retval = cctl_sync_cache(fd, lun, initid, retries,
      argc, argv, combinedopt);
  break;
 case 146:
  retval = cctl_lunlist(fd);
  break;
 case 157:
  retval = cctl_delay(fd, lun, argc, argv, combinedopt);
  break;
 case 153:
  retval = cctl_error_inject(fd, lun, argc, argv,
        combinedopt);
  break;
 case 155:
  retval = cctl_dump_ooa(fd, argc, argv);
  break;
 case 154:
  retval = cctl_dump_structs(fd, cmdargs);
  break;
 case 140:
  retval = cctl_persistent_reserve_in(fd, lun, initid,
                                      argc, argv, combinedopt,
          retries);
  break;
 case 139:
  retval = cctl_persistent_reserve_out(fd, lun, initid,
           argc, argv, combinedopt,
           retries);
  break;
 case 150:
         retval = cctl_inquiry_vpd_devid(fd, lun, initid);
  break;
 case 133:
         retval = cctl_report_target_port_group(fd, lun, initid);
  break;
 case 143:
         retval = cctl_modify_lun(fd, argc, argv, combinedopt);
  break;
 case 149:
         retval = cctl_islist(fd, argc, argv, combinedopt);
  break;
 case 148:
         retval = cctl_islogout(fd, argc, argv, combinedopt);
  break;
 case 147:
         retval = cctl_isterminate(fd, argc, argv, combinedopt);
  break;
 case 152:
 default:
  usage(retval);
  break;
 }
bailout:

 if (fd != -1)
  close(fd);

 exit (retval);
}
