
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wd ;
typedef int time_t ;
struct TYPE_3__ {void* out_time; } ;
struct whoent {TYPE_1__ we_utmp; void* we_idle; } ;
struct whod {scalar_t__ wd_vers; scalar_t__ wd_type; char* wd_hostname; int wd_recvtime; struct whoent* wd_we; void* wd_boottime; void** wd_loadav; void* wd_sendtime; } ;
struct stat {int st_size; } ;
struct sockaddr_in {scalar_t__ sin_port; int sin_addr; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int path ;
typedef int from ;
typedef int cap_rights_t ;
struct TYPE_4__ {scalar_t__ s_port; } ;


 int CAP_CREATE ;
 int CAP_FSTAT ;
 int CAP_FTRUNCATE ;
 int CAP_LOOKUP ;
 int CAP_SEEK ;
 int CAP_WRITE ;
 scalar_t__ EINTR ;
 int LOG_ERR ;
 int LOG_WARNING ;
 int O_CREAT ;
 int O_DIRECTORY ;
 int O_RDONLY ;
 int O_WRONLY ;
 int WHDRSIZE ;
 scalar_t__ WHODTYPE_STATUS ;
 scalar_t__ WHODVERSION ;
 int _PATH_RWHODIR ;
 int _time_to_int (int ) ;
 int cap_rights_init (int *,int ,int ,int ,...) ;
 scalar_t__ caph_enter () ;
 scalar_t__ caph_rights_limit (int,int *) ;
 int close (int) ;
 scalar_t__ errno ;
 int exit (int) ;
 scalar_t__ fstat (int,struct stat*) ;
 int ftruncate (int,int) ;
 int inet_ntoa (int ) ;
 int insecure_mode ;
 void* ntohl (void*) ;
 int ntohs (scalar_t__) ;
 int open (char*,int) ;
 int openat (int,char*,int,int) ;
 int recvfrom (int ,struct whod*,int,int ,struct sockaddr*,int*) ;
 int s ;
 int snprintf (char*,int,char*,char*) ;
 TYPE_2__* sp ;
 int syslog (int ,char*,...) ;
 int time (int *) ;
 int verify (char*,int) ;
 int write (int,char*,int) ;

void
receiver_process(void)
{
 struct sockaddr_in from;
 struct stat st;
 cap_rights_t rights;
 char path[64];
 int dirfd;
 struct whod wd;
 socklen_t len;
 int cc, whod;
 time_t t;

 len = sizeof(from);
 dirfd = open(".", O_RDONLY | O_DIRECTORY);
 if (dirfd < 0) {
  syslog(LOG_WARNING, "%s: %m", _PATH_RWHODIR);
  exit(1);
 }
 cap_rights_init(&rights, CAP_CREATE, CAP_FSTAT, CAP_FTRUNCATE,
     CAP_LOOKUP, CAP_SEEK, CAP_WRITE);
 if (caph_rights_limit(dirfd, &rights) < 0) {
  syslog(LOG_WARNING, "cap_rights_limit: %m");
  exit(1);
 }
 if (caph_enter() < 0) {
  syslog(LOG_ERR, "cap_enter: %m");
  exit(1);
 }
 for (;;) {
  cc = recvfrom(s, &wd, sizeof(wd), 0, (struct sockaddr *)&from,
      &len);
  if (cc <= 0) {
   if (cc < 0 && errno != EINTR)
    syslog(LOG_WARNING, "recv: %m");
   continue;
  }
  if (from.sin_port != sp->s_port && !insecure_mode) {
   syslog(LOG_WARNING, "%d: bad source port from %s",
       ntohs(from.sin_port), inet_ntoa(from.sin_addr));
   continue;
  }
  if (cc < WHDRSIZE) {
   syslog(LOG_WARNING, "short packet from %s",
       inet_ntoa(from.sin_addr));
   continue;
  }
  if (wd.wd_vers != WHODVERSION)
   continue;
  if (wd.wd_type != WHODTYPE_STATUS)
   continue;
  if (!verify(wd.wd_hostname, sizeof(wd.wd_hostname))) {
   syslog(LOG_WARNING, "malformed host name from %s",
       inet_ntoa(from.sin_addr));
   continue;
  }
  (void) snprintf(path, sizeof(path), "whod.%s", wd.wd_hostname);




  whod = openat(dirfd, path, O_WRONLY | O_CREAT, 0644);
  if (whod < 0) {
   syslog(LOG_WARNING, "%s: %m", path);
   continue;
  }
  cap_rights_init(&rights, CAP_FSTAT, CAP_FTRUNCATE, CAP_WRITE);
  if (caph_rights_limit(whod, &rights) < 0) {
   syslog(LOG_WARNING, "cap_rights_limit: %m");
   exit(1);
  }
  (void) time(&t);
  wd.wd_recvtime = _time_to_int(t);
  (void) write(whod, (char *)&wd, cc);
  if (fstat(whod, &st) < 0 || st.st_size > cc)
   ftruncate(whod, cc);
  (void) close(whod);
 }
 (void) close(dirfd);
}
