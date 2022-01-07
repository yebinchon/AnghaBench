
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int cji_headruser; int cji_mailto; int cji_jobname; int cji_curqueue; int cji_class; int cji_acctuser; int cji_accthost; struct cjprivate* cji_priv; } ;
struct cjprivate {int * cji_fstream; TYPE_1__ pub; } ;
struct cjobinfo {struct cjprivate* cji_priv; } ;


 int FREESTR (int ) ;
 int LOG_ERR ;
 int fclose (int *) ;
 int free (struct cjprivate*) ;
 int syslog (int ,char*,void*,void*) ;

void
ctl_freeinf(struct cjobinfo *cjinf)
{






 struct cjprivate *cpriv;

 if (cjinf == ((void*)0))
  return;
 cpriv = cjinf->cji_priv;
 if ((cpriv == ((void*)0)) || (cpriv != cpriv->pub.cji_priv)) {
  syslog(LOG_ERR, "in ctl_freeinf(%p): invalid cjinf (cpriv %p)",
      (void *)cjinf, (void *)cpriv);
  return;
 }

 if (cpriv->pub.cji_accthost != ((void*)0)) { free(cpriv->pub.cji_accthost); cpriv->pub.cji_accthost = ((void*)0); };
 if (cpriv->pub.cji_acctuser != ((void*)0)) { free(cpriv->pub.cji_acctuser); cpriv->pub.cji_acctuser = ((void*)0); };
 if (cpriv->pub.cji_class != ((void*)0)) { free(cpriv->pub.cji_class); cpriv->pub.cji_class = ((void*)0); };
 if (cpriv->pub.cji_curqueue != ((void*)0)) { free(cpriv->pub.cji_curqueue); cpriv->pub.cji_curqueue = ((void*)0); };

 if (cpriv->pub.cji_jobname != ((void*)0)) { free(cpriv->pub.cji_jobname); cpriv->pub.cji_jobname = ((void*)0); };
 if (cpriv->pub.cji_mailto != ((void*)0)) { free(cpriv->pub.cji_mailto); cpriv->pub.cji_mailto = ((void*)0); };
 if (cpriv->pub.cji_headruser != ((void*)0)) { free(cpriv->pub.cji_headruser); cpriv->pub.cji_headruser = ((void*)0); };

 if (cpriv->cji_fstream != ((void*)0)) {
  fclose(cpriv->cji_fstream);
  cpriv->cji_fstream = ((void*)0);
 }

 cjinf->cji_priv = ((void*)0);
 free(cpriv);

}
