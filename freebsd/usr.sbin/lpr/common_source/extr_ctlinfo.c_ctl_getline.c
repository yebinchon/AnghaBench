
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* cji_fname; int cji_curqueue; struct cjprivate* cji_priv; } ;
struct cjprivate {char* cji_buff; TYPE_1__ pub; int cji_dumpit; int cji_fstream; int cji_buffsize; } ;
struct cjobinfo {struct cjprivate* cji_priv; } ;


 int LOG_ERR ;
 int * ctl_dbgfile ;
 scalar_t__ errno ;
 char* fgets (char*,int ,int ) ;
 int fprintf (int *,char*,char*,int,char*) ;
 char* strchr (char*,char) ;
 int strerror (scalar_t__) ;
 int syslog (int ,char*,void*,char*,...) ;

__attribute__((used)) static char *
ctl_getline(struct cjobinfo *cjinf)
{
 char *strp, *nl;
 struct cjprivate *cpriv;

 if (cjinf == ((void*)0))
  return ((void*)0);
 cpriv = cjinf->cji_priv;
 if ((cpriv == ((void*)0)) || (cpriv != cpriv->pub.cji_priv)) {
  syslog(LOG_ERR, "in ctl_getline(%p): invalid cjinf (cpriv %p)",
      (void *)cjinf, (void *)cpriv);
  return ((void*)0);
 }

 errno = 0;
 strp = fgets(cpriv->cji_buff, cpriv->cji_buffsize, cpriv->cji_fstream);
 if (strp == ((void*)0)) {
  if (errno != 0)
   syslog(LOG_ERR, "%s: ctl_getline error fgets(%s): %s",
       cpriv->pub.cji_curqueue, cpriv->pub.cji_fname,
       strerror(errno));
  return ((void*)0);
 }
 nl = strchr(strp, '\n');
 if (nl != ((void*)0))
  *nl = '\0';
 return strp;
}
