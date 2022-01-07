
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tr_sendrecv ;
typedef int thishost ;
struct printer {char* stat_send; char* stat_recv; char* lp; char* tr_timestr; char* printer; char* jobnum; int jobdfnum; int tr_start; int tr_done; } ;


 double DIFFTIME_TS (int ,int ) ;
 int MAXHOSTNAMELEN ;
 int O_APPEND ;
 int O_WRONLY ;
 int STATLINE_SIZE ;



 int UPD_EOSTAT (char*) ;
 char* _PATH_DEFDEVLP ;
 int close (int) ;
 char* from_ip ;
 int gethostname (char*,int) ;
 int lpd_gettime (int *,int *,size_t) ;
 int open (char const*,int,int) ;
 int snprintf (char*,size_t,char*,...) ;
 scalar_t__ strcmp (char const*,char const*) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;
 int write (int,char*,int) ;

void
trstat_write(struct printer *pp, tr_sendrecv sendrecv, size_t bytecnt,
    const char *userid, const char *otherhost, const char *orighost)
{

 double trtime;
 size_t remspace;
 int statfile;
 char thishost[MAXHOSTNAMELEN], statline[1024];
 char *eostat;
 const char *lprhost, *recvdev, *recvhost, *rectype;
 const char *sendhost, *statfname;





 lpd_gettime(&pp->tr_done, ((void*)0), (size_t)0);
 trtime = DIFFTIME_TS(pp->tr_done, pp->tr_start);

 gethostname(thishost, sizeof(thishost));
 lprhost = sendhost = recvhost = recvdev = ((void*)0);
 switch (sendrecv) {
     case 128:
  rectype = "send";
  statfname = pp->stat_send;
  sendhost = thishost;
  recvhost = otherhost;
  break;
     case 129:
  rectype = "recv";
  statfname = pp->stat_recv;
  sendhost = otherhost;
  recvhost = thishost;
  break;
     case 130:





  rectype = "prnt";
  statfname = pp->stat_send;
  sendhost = thishost;
  recvdev = _PATH_DEFDEVLP;
  if (pp->lp) recvdev = pp->lp;
  break;
     default:

  return;
 }
 if (statfname == ((void*)0))
  return;
 if (orighost && (*orighost != '\0'))
  lprhost = orighost;
 else
  lprhost = ".na.";
 if (*userid == '\0')
  userid = ((void*)0);
 snprintf(statline, 1024, "%s %s %s %s %03ld %s",
     pp->tr_timestr, pp->printer, lprhost, pp->jobnum,
     pp->jobdfnum, rectype);
 do { eostat = strchr(statline, '\0'); remspace = eostat - statline; } while(0);

 if (userid != ((void*)0)) {
  snprintf(eostat, remspace, " user=%s", userid);
  do { eostat = strchr(statline, '\0'); remspace = eostat - statline; } while(0);
 }
 snprintf(eostat, remspace, " secs=%#.2f bytes=%lu", trtime,
     (unsigned long)bytecnt);
 do { eostat = strchr(statline, '\0'); remspace = eostat - statline; } while(0);





 if ((bytecnt > 25000) && (trtime > 1.1)) {
  snprintf(eostat, remspace, " bps=%#.2e",
      ((double)bytecnt/trtime));
  do { eostat = strchr(statline, '\0'); remspace = eostat - statline; } while(0);
 }

 if (sendrecv == 129) {
  if (remspace > 5+strlen(from_ip) ) {
   snprintf(eostat, remspace, " sip=%s", from_ip);
   do { eostat = strchr(statline, '\0'); remspace = eostat - statline; } while(0);
  }
 }
 if (0 != strcmp(lprhost, sendhost)) {
  if (remspace > 7+strlen(sendhost) ) {
   snprintf(eostat, remspace, " shost=%s", sendhost);
   do { eostat = strchr(statline, '\0'); remspace = eostat - statline; } while(0);
  }
 }
 if (recvhost) {
  if (remspace > 7+strlen(recvhost) ) {
   snprintf(eostat, remspace, " rhost=%s", recvhost);
   do { eostat = strchr(statline, '\0'); remspace = eostat - statline; } while(0);
  }
 }
 if (recvdev) {
  if (remspace > 6+strlen(recvdev) ) {
   snprintf(eostat, remspace, " rdev=%s", recvdev);
   do { eostat = strchr(statline, '\0'); remspace = eostat - statline; } while(0);
  }
 }
 if (remspace > 1) {
  strcpy(eostat, "\n");
 } else {

  strcpy(statline+1024 -2, "\n");
 }
 statfile = open(statfname, O_WRONLY|O_APPEND, 0664);
 if (statfile < 0) {


  return;
 }
 write(statfile, statline, strlen(statline));
 close(statfile);

 return;

}
