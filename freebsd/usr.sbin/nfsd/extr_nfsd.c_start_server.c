
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nfsd_nfsd_args {char* principal; scalar_t__ minthreads; scalar_t__ maxthreads; } ;
struct addrinfo {char* ai_canonname; int ai_flags; } ;
typedef int principal ;
typedef int hostname ;
typedef int hints ;


 int AI_CANONNAME ;
 scalar_t__ EAUTH ;
 scalar_t__ ENXIO ;
 int LOG_ERR ;
 int MAXHOSTNAMELEN ;
 int SIGUSR1 ;
 scalar_t__ errno ;
 int exit (int) ;
 int freeaddrinfo (struct addrinfo*) ;
 scalar_t__ get_tuned_nfsdcount () ;
 int getaddrinfo (char*,int *,struct addrinfo*,struct addrinfo**) ;
 int gethostname (char*,int) ;
 int kill (scalar_t__,int ) ;
 scalar_t__ masterpid ;
 scalar_t__ maxthreads ;
 scalar_t__ maxthreads_set ;
 int memset (void*,int ,int) ;
 scalar_t__ minthreads ;
 scalar_t__ minthreads_set ;
 int nfsd_exit (int) ;
 scalar_t__ nfsdcnt ;
 scalar_t__ nfsdcnt_set ;
 int nfssvc (int ,struct nfsd_nfsd_args*) ;
 int nfssvc_nfsd ;
 int snprintf (char*,int,char*,char*) ;
 char* strchr (char*,char) ;
 int strlcpy (char*,char const*,int) ;
 int syslog (int ,char*) ;

__attribute__((used)) static void
start_server(int master, struct nfsd_nfsd_args *nfsdargp, const char *vhost)
{
 char principal[MAXHOSTNAMELEN + 5];
 int status, error;
 char hostname[MAXHOSTNAMELEN + 1], *cp;
 struct addrinfo *aip, hints;

 status = 0;
 if (vhost == ((void*)0))
  gethostname(hostname, sizeof (hostname));
 else
  strlcpy(hostname, vhost, sizeof (hostname));
 snprintf(principal, sizeof (principal), "nfs@%s", hostname);
 if ((cp = strchr(hostname, '.')) == ((void*)0) ||
     *(cp + 1) == '\0') {

  memset((void *)&hints, 0, sizeof (hints));
  hints.ai_flags = AI_CANONNAME;
  error = getaddrinfo(hostname, ((void*)0), &hints, &aip);
  if (error == 0) {
   if (aip->ai_canonname != ((void*)0) &&
       (cp = strchr(aip->ai_canonname, '.')) !=
       ((void*)0) && *(cp + 1) != '\0')
    snprintf(principal, sizeof (principal),
        "nfs@%s", aip->ai_canonname);
   freeaddrinfo(aip);
  }
 }
 nfsdargp->principal = principal;

 if (nfsdcnt_set)
  nfsdargp->minthreads = nfsdargp->maxthreads = nfsdcnt;
 else {
  nfsdargp->minthreads = minthreads_set ? minthreads : get_tuned_nfsdcount();
  nfsdargp->maxthreads = maxthreads_set ? maxthreads : nfsdargp->minthreads;
  if (nfsdargp->maxthreads < nfsdargp->minthreads)
   nfsdargp->maxthreads = nfsdargp->minthreads;
 }
 error = nfssvc(nfssvc_nfsd, nfsdargp);
 if (error < 0 && errno == EAUTH) {






  syslog(LOG_ERR, "No gssd, using AUTH_SYS only");
  principal[0] = '\0';
  error = nfssvc(nfssvc_nfsd, nfsdargp);
 }
 if (error < 0) {
  if (errno == ENXIO) {
   syslog(LOG_ERR, "Bad -p option, cannot run");
   if (masterpid != 0 && master == 0)
    kill(masterpid, SIGUSR1);
  } else
   syslog(LOG_ERR, "nfssvc: %m");
  status = 1;
 }
 if (master)
  nfsd_exit(status);
 else
  exit(status);
}
