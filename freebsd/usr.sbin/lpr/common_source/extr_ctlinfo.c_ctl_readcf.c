
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cjobinfo {char* cji_fname; int * cji_acctuser; int * cji_accthost; int cji_dfcount; void* cji_mailto; void* cji_headruser; void* cji_jobname; void* cji_class; void* cji_curqueue; struct cjprivate* cji_priv; } ;
struct cjprivate {char* cji_buff; int cji_buffsize; char* cji_eobuff; struct cjobinfo pub; scalar_t__ cji_dumpit; int * cji_fstream; } ;
typedef int FILE ;


 size_t CTI_LINEMAX ;
 char const* DEBUGREADCF_FNAME ;
 int LOG_ERR ;
 int * ctl_dbgfile ;
 scalar_t__ ctl_dbgline ;
 int ctl_dbgstat ;
 int ctl_dumpcji (int *,char*,struct cjobinfo*) ;
 char* ctl_getline (struct cjobinfo*) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*,char const*,void*,long,char*,char*,char*) ;
 int islower (int) ;
 void* malloc (size_t) ;
 int memset (void*,int ,size_t) ;
 size_t roundup (size_t,int) ;
 int stat (char const*,int *) ;
 int strcpy (char*,char const*) ;
 void* strdup (char const*) ;
 int strerror (int ) ;
 size_t strlen (char const*) ;
 int syslog (int ,char*,char const*,char const*,int ) ;

struct cjobinfo *
ctl_readcf(const char *ptrname, const char *cfname)
{
 int id;
 char *lbuff;
 void *cstart;
 FILE *cfile;
 struct cjprivate *cpriv;
 struct cjobinfo *cjinf;
 size_t msize, sroom, sroom2;

 cfile = fopen(cfname, "r");
 if (cfile == ((void*)0)) {
  syslog(LOG_ERR, "%s: ctl_readcf error fopen(%s): %s",
      ptrname, cfname, strerror(errno));
  return ((void*)0);
 }

 sroom = roundup(sizeof(struct cjprivate), 8);
 sroom2 = sroom + strlen(cfname) + 1;
 sroom2 = roundup(sroom2, 8);
 msize = sroom2 + CTI_LINEMAX;
 msize = roundup(msize, 8);
 cstart = malloc(msize);
 if (cstart == ((void*)0)) {
  fclose(cfile);
  return ((void*)0);
 }
 memset(cstart, 0, msize);
 cpriv = (struct cjprivate *)cstart;
 cpriv->pub.cji_priv = cpriv;

 cpriv->pub.cji_fname = (char *)cstart + sroom;
 strcpy(cpriv->pub.cji_fname, cfname);
 cpriv->cji_buff = (char *)cstart + sroom2;
 cpriv->cji_buffsize = (int)(msize - sroom2);
 cpriv->cji_eobuff = (char *)cstart + msize - 1;

 cpriv->cji_fstream = cfile;
 cpriv->pub.cji_curqueue = strdup(ptrname);

 ctl_dbgline = 0;
 cjinf = &(cpriv->pub);
 lbuff = ctl_getline(cjinf);
 while (lbuff != ((void*)0)) {
  id = *lbuff++;
  switch (id) {
  case 'C':
   cpriv->pub.cji_class = strdup(lbuff);
   break;
  case 'H':
   if (*lbuff == '\0')
    break;
   cpriv->pub.cji_accthost = strdup(lbuff);
   break;
  case 'J':
   cpriv->pub.cji_jobname = strdup(lbuff);
   break;
  case 'L':
   cpriv->pub.cji_headruser = strdup(lbuff);
   break;
  case 'M':





   if (*lbuff == '-')
    break;
   if (*lbuff == '\0')
    break;
   cpriv->pub.cji_mailto = strdup(lbuff);
   break;
  case 'P':
   if (*lbuff == '\0')
    break;

   if (*lbuff == '-')
    *lbuff = '_';
   cpriv->pub.cji_acctuser = strdup(lbuff);
   break;
  default:
   if (islower(id)) {
    cpriv->pub.cji_dfcount++;
   }
   break;
  }
  lbuff = ctl_getline(cjinf);
 }


 if (cpriv->pub.cji_accthost == ((void*)0))
  cpriv->pub.cji_accthost = strdup(".na.");
 if (cpriv->pub.cji_acctuser == ((void*)0))
  cpriv->pub.cji_acctuser = strdup(".na.");
 return &(cpriv->pub);
}
