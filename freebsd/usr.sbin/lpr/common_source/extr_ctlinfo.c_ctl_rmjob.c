
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cjobinfo {int dummy; } ;
typedef int errm ;


 int CTI_LINEMAX ;
 int ctl_freeinf (struct cjobinfo*) ;
 char* ctl_getline (struct cjobinfo*) ;
 struct cjobinfo* ctl_readcf (char const*,char const*) ;
 int ctl_rewindcf (struct cjobinfo*) ;
 int snprintf (char*,int,char*,char const*) ;
 char* strdup (char*) ;

char *
ctl_rmjob(const char *ptrname, const char *cfname)
{
 struct cjobinfo *cjinf;
 char *lbuff;
 char errm[CTI_LINEMAX];

 cjinf = ctl_readcf(ptrname, cfname);
 if (cjinf == ((void*)0)) {
  snprintf(errm, sizeof(errm),
      "ctl_renametf error cti_readcf(%s)", cfname);
  return strdup(errm);
 }

 ctl_rewindcf(cjinf);
 lbuff = ctl_getline(cjinf);
 while (lbuff != ((void*)0)) {

  switch (lbuff[0]) {
  case 'S':
   break;
  case 'U':
   break;
  default:
   break;
  }
  lbuff = ctl_getline(cjinf);
 }

 ctl_freeinf(cjinf);
 cjinf = ((void*)0);

 return ((void*)0);
}
