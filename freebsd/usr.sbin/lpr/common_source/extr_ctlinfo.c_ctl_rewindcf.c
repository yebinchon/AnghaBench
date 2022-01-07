
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {struct cjprivate* cji_priv; } ;
struct cjprivate {int cji_fstream; TYPE_1__ pub; } ;
struct cjobinfo {struct cjprivate* cji_priv; } ;


 int LOG_ERR ;
 int rewind (int ) ;
 int syslog (int ,char*,void*,void*) ;

void
ctl_rewindcf(struct cjobinfo *cjinf)
{
 struct cjprivate *cpriv;

 if (cjinf == ((void*)0))
  return;
 cpriv = cjinf->cji_priv;
 if ((cpriv == ((void*)0)) || (cpriv != cpriv->pub.cji_priv)) {
  syslog(LOG_ERR, "in ctl_rewindcf(%p): invalid cjinf (cpriv %p)",
      (void *)cjinf, (void *)cpriv);
  return;
 }

 rewind(cpriv->cji_fstream);
}
