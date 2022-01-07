
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_mesg {int dummy; } ;


 int EFBIG ;
 int ENOMEM ;
 int EWOULDBLOCK ;
 size_t LEAF_begemotNgMsgReadErrs ;
 size_t LEAF_begemotNgNoMems ;
 size_t LEAF_begemotNgTooLargeMsgs ;
 int LOG_CRIT ;
 int LOG_DEBUG ;
 int LOG_WARNING ;
 int NgRecvMsg (int ,struct ng_mesg*,int,char*) ;
 int csock ;
 int errno ;
 int exit (int ) ;
 int free (struct ng_mesg*) ;
 struct ng_mesg* malloc (int) ;
 int resbufsiz ;
 int * stats ;
 int syslog (int ,char*) ;

__attribute__((used)) static struct ng_mesg *
csock_read(char *path)
{
 struct ng_mesg *mesg;
 int ret, err;

 if ((mesg = malloc(resbufsiz + 1)) == ((void*)0)) {
  stats[LEAF_begemotNgNoMems]++;
  syslog(LOG_CRIT, "out of memory");
  errno = ENOMEM;
  return (((void*)0));
 }
 if ((ret = NgRecvMsg(csock, mesg, resbufsiz + 1, path)) < 0) {
  err = errno;
  free(mesg);
  if (errno == EWOULDBLOCK) {
   errno = err;
   return (((void*)0));
  }
  stats[LEAF_begemotNgMsgReadErrs]++;
  syslog(LOG_WARNING, "read from csock: %m");
  errno = err;
  return (((void*)0));
 }
 if (ret == 0) {
  syslog(LOG_DEBUG, "node closed -- exiting");
  exit(0);
 }
 if ((size_t)ret > resbufsiz) {
  stats[LEAF_begemotNgTooLargeMsgs]++;
  syslog(LOG_WARNING, "ng message too large");
  free(mesg);
  errno = EFBIG;
  return (((void*)0));
 }
 return (mesg);
}
