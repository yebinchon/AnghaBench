
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct socks {int dummy; } ;
typedef scalar_t__ ssize_t ;
typedef int buf ;


 int LOG_NOTICE ;
 int LOG_PERROR ;
 int LOG_PID ;
 int LOG_USER ;
 int MAXHOSTNAMELEN ;
 int PF_INET ;
 int PF_INET6 ;
 int _IONBF ;
 int bcopy (int ,char*,size_t) ;
 int ctime_r (int *,char*) ;
 int err (int,char*,void*) ;
 int errx (int,char*) ;
 int exit (int ) ;
 int family ;
 int fclose (int ) ;
 int * fgets (char*,int,int ) ;
 int * freopen (void*,char*,int ) ;
 int gethostname (char*,int) ;
 char* getlogin () ;
 int getopt (int,char**,char*) ;
 int logmessage (int,char*,char*,char*,struct socks*,scalar_t__,char*) ;
 int openlog (char*,int,int ) ;
 void* optarg ;
 scalar_t__ optind ;
 int pencode (void*) ;
 int send_to_all ;
 int setvbuf (int ,int ,int ,int ) ;
 scalar_t__ socksetup (char const*,char*,char const*,struct socks**) ;
 int stdin ;
 int stdout ;
 char* strchrnul (char*,char) ;
 size_t strlen (char*) ;
 int time (int *) ;
 int unsetenv (char*) ;
 int usage () ;

int
main(int argc, char *argv[])
{
 struct socks *socks;
 ssize_t nsock;
 time_t now;
 int ch, logflags, pri;
 char *tag, *host, buf[1024], *timestamp, tbuf[26],
     *hostname, hbuf[MAXHOSTNAMELEN];
 const char *svcname, *src;

 tag = ((void*)0);
 host = ((void*)0);
 hostname = ((void*)0);
 svcname = "syslog";
 src = ((void*)0);
 socks = ((void*)0);
 pri = LOG_USER | LOG_NOTICE;
 logflags = 0;
 unsetenv("TZ");
 while ((ch = getopt(argc, argv, "46Af:H:h:iP:p:S:st:")) != -1)
  switch((char)ch) {
  case '4':
   family = PF_INET;
   break;





  case 'A':
   send_to_all++;
   break;
  case 'f':
   if (freopen(optarg, "r", stdin) == ((void*)0))
    err(1, "%s", optarg);
   setvbuf(stdin, 0, _IONBF, 0);
   break;
  case 'H':
   hostname = optarg;
   break;
  case 'h':
   host = optarg;
   break;
  case 'i':
   logflags |= LOG_PID;
   break;
  case 'P':
   svcname = optarg;
   break;
  case 'p':
   pri = pencode(optarg);
   break;
  case 's':
   logflags |= LOG_PERROR;
   break;
  case 'S':
   src = optarg;
   break;
  case 't':
   tag = optarg;
   break;
  case '?':
  default:
   usage();
  }
 argc -= optind;
 argv += optind;

 if (host) {
  nsock = socksetup(src, host, svcname, &socks);
  if (nsock <= 0)
   errx(1, "socket");
 } else {
  if (src)
   errx(1, "-h option is missing.");
  nsock = 0;
 }

 if (tag == ((void*)0))
  tag = getlogin();

 if (host == ((void*)0))
  openlog(tag, logflags, 0);
 (void) fclose(stdout);

 (void )time(&now);
 (void )ctime_r(&now, tbuf);
 tbuf[19] = '\0';
 timestamp = tbuf + 4;

 if (hostname == ((void*)0)) {
  hostname = hbuf;
  (void )gethostname(hbuf, MAXHOSTNAMELEN);
  *strchrnul(hostname, '.') = '\0';
 }


 if (argc > 0) {
  char *p, *endp;
  size_t len;

  for (p = buf, endp = buf + sizeof(buf) - 2; *argv;) {
   len = strlen(*argv);
   if (p + len > endp && p > buf) {
    logmessage(pri, timestamp, hostname, tag,
        socks, nsock, buf);
    p = buf;
   }
   if (len > sizeof(buf) - 1)
    logmessage(pri, timestamp, hostname, tag,
        socks, nsock, *argv++);
   else {
    if (p != buf)
     *p++ = ' ';
    bcopy(*argv++, p, len);
    *(p += len) = '\0';
   }
  }
  if (p != buf)
   logmessage(pri, timestamp, hostname, tag, socks, nsock,
       buf);
 } else
  while (fgets(buf, sizeof(buf), stdin) != ((void*)0))
   logmessage(pri, timestamp, hostname, tag, socks, nsock,
       buf);
 exit(0);
}
