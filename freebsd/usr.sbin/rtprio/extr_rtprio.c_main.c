
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rtprio {int type; void* prio; } ;
typedef void* pid_t ;


 int RTP_LOOKUP ;




 int RTP_SET ;
 void* abs (void*) ;
 int err (int,char*,...) ;
 int errx (int,char*,...) ;
 int execvp (char*,char**) ;
 int exit (int ) ;
 char* getprogname () ;
 int isdigit (char) ;
 void* parseint (char*,char*) ;
 int rtprio (int ,void*,struct rtprio*) ;
 scalar_t__ strcmp (char const*,char*) ;
 int usage () ;
 int warnx (char*,...) ;

int
main(int argc, char *argv[])
{
 struct rtprio rtp;
 const char *progname;
 pid_t proc = 0;

 progname = getprogname();

 if (strcmp(progname, "rtprio") == 0)
  rtp.type = 128;
 else if (strcmp(progname, "idprio") == 0)
  rtp.type = 130;
 else
  errx(1, "invalid progname");

 switch (argc) {
 case 2:
  proc = parseint(argv[1], "pid");
  proc = abs(proc);

 case 1:
  if (rtprio(RTP_LOOKUP, proc, &rtp) != 0)
   err(1, "RTP_LOOKUP");
  switch (rtp.type) {
  case 128:
  case 131:
   warnx("realtime priority %d", rtp.prio);
   break;
  case 129:
   warnx("normal priority");
   break;
  case 130:
   warnx("idle priority %d", rtp.prio);
   break;
  default:
   errx(1, "invalid priority type %d", rtp.type);
   break;
  }
  exit(0);
 default:
  if (argv[1][0] == '-' || isdigit(argv[1][0])) {
   if (argv[1][0] == '-') {
    if (strcmp(argv[1], "-t") == 0) {
     rtp.type = 129;
     rtp.prio = 0;
    } else {
     usage();
     break;
    }
   } else
    rtp.prio = parseint(argv[1], "priority");
  } else {
   usage();
   break;
  }

  if (argv[2][0] == '-') {
   proc = parseint(argv[2], "pid");
   proc = abs(proc);
  }

  if (rtprio(RTP_SET, proc, &rtp) != 0)
   err(1, "RTP_SET");

  if (proc == 0) {
   execvp(argv[2], &argv[2]);
   err(1, "execvp: %s", argv[2]);
  }
  exit(0);
 }

}
