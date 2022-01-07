
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tfname2 ;
struct stat {int st_size; } ;
struct cjobinfo {char* cji_accthost; char* cji_acctuser; char* cji_class; char* cji_jobname; char* cji_headruser; char* cji_mailto; int cji_dfcount; } ;
typedef int errm ;
typedef int cfname2 ;
typedef int FILE ;


 int CTI_LINEMAX ;
 int NAME_MAX ;
 char* OTHER_USERID_CHARS ;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 char* TRIGGERTEST_FNAME ;
 int close (int) ;
 int ctl_freeinf (struct cjobinfo*) ;
 char* ctl_getline (struct cjobinfo*) ;
 struct cjobinfo* ctl_readcf (char const*,char const*) ;
 int ctl_rewindcf (struct cjobinfo*) ;
 int errno ;
 int fclose (int *) ;
 int * fdopen (int,char*) ;
 int fprintf (int *,char*,char*) ;
 char* from_host ;
 int * getpwnam (char*) ;
 int isalpha (int) ;
 scalar_t__ isdigitch (char) ;
 scalar_t__ islowerch (char) ;
 scalar_t__ isupperch (char) ;
 int link (char const*,char*) ;
 int open (char*,int,int) ;
 int rename (char const*,char*) ;
 int snprintf (char*,int,char*,char const*,...) ;
 int stat (char const*,struct stat*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 char* strerror (int ) ;
 int strlcat (char*,char*,int) ;
 int strlcpy (char*,char const*,int) ;
 int strncmp (char*,char*,size_t) ;
 char tolowerch (char) ;
 int unlink (char const*) ;

char *
ctl_renametf(const char *ptrname, const char *tfname)
{
 int chk3rd, has_uc, newfd, nogood, res;
 FILE *newcf;
 struct cjobinfo *cjinf;
 char *lbuff, *slash, *cp;
 char tfname2[NAME_MAX+1], cfname2[NAME_MAX+1];
 char errm[CTI_LINEMAX];
 cjinf = ((void*)0);
 newcf = ((void*)0);
 *errm = '\0';

 chk3rd = tfname[2];
 if ((tfname[0] != 't') || (tfname[1] != 'f') || (!isalpha(chk3rd))) {
  snprintf(errm, sizeof(errm),
      "ctl_renametf invalid filename: %s", tfname);
  goto error_ret;
 }

 cjinf = ctl_readcf(ptrname, tfname);
 if (cjinf == ((void*)0)) {
  snprintf(errm, sizeof(errm),
      "ctl_renametf error cti_readcf(%s)", tfname);
  goto error_ret;
 }





 strlcpy(tfname2, tfname, sizeof(tfname2));
 tfname2[0] = 'r';
 newfd = open(tfname2, O_WRONLY|O_CREAT|O_TRUNC, 0660);
 if (newfd == -1) {
  snprintf(errm, sizeof(errm),
      "ctl_renametf error open(%s): %s", tfname2,
      strerror(errno));
  goto error_ret;
 }
 newcf = fdopen(newfd, "w");
 if (newcf == ((void*)0)) {
  close(newfd);
  snprintf(errm, sizeof(errm),
      "ctl_renametf error fopen(%s): %s", tfname2,
      strerror(errno));
  goto error_ret;
 }
 nogood = 0;
 if (cjinf->cji_accthost == ((void*)0))
  nogood = 1;
 else if (strcmp(cjinf->cji_accthost, ".na.") == 0)
  nogood = 1;
 else if (strcmp(cjinf->cji_accthost, "localhost") == 0)
  nogood = 1;
 else {
  for (cp = cjinf->cji_accthost; *cp != '\0'; cp++) {
   if (*cp <= ' ') {
    nogood = 1;
    break;
   }
  }
 }
 if (nogood)
  fprintf(newcf, "H%s\n", from_host);
 else
  fprintf(newcf, "H%s\n", cjinf->cji_accthost);
 nogood = 0;
 if (cjinf->cji_acctuser == ((void*)0))
  nogood = 1;
 else if (strcmp(cjinf->cji_acctuser, ".na.") == 0)
  ;
 else {
  has_uc = 0;
  cp = cjinf->cji_acctuser;
  if (*cp == '-')
   *cp++ = '_';
  for (; *cp != '\0'; cp++) {
   if (islowerch(*cp) || isdigitch(*cp))
    continue;
   if (strchr(OTHER_USERID_CHARS, *cp) != ((void*)0))
    continue;
   if (isupperch(*cp)) {
    has_uc = 1;
    continue;
   }
   *cp = '_';
  }







  if (has_uc && (getpwnam(cjinf->cji_acctuser) == ((void*)0))) {
   for (cp = cjinf->cji_acctuser; *cp != '\0'; cp++) {
    if (isupperch(*cp))
     *cp = tolowerch(*cp);
   }
  }
 }
 if (nogood)
  fprintf(newcf, "P%s\n", ".na.");
 else
  fprintf(newcf, "P%s\n", cjinf->cji_acctuser);


 if (cjinf->cji_class != ((void*)0))
  fprintf(newcf, "C%s\n", cjinf->cji_class);
 if (cjinf->cji_jobname != ((void*)0))
  fprintf(newcf, "J%s\n", cjinf->cji_jobname);
 if (cjinf->cji_headruser != ((void*)0))
  fprintf(newcf, "L%s\n", cjinf->cji_headruser);
 nogood = 0;
 if (cjinf->cji_mailto == ((void*)0))
  nogood = 1;
 else {
  for (cp = cjinf->cji_mailto; *cp != '\0'; cp++) {
   if (*cp <= ' ') {
    nogood = 1;
    break;
   }
  }
 }
 if (!nogood)
  fprintf(newcf, "M%s\n", cjinf->cji_mailto);





 ctl_rewindcf(cjinf);
 lbuff = ctl_getline(cjinf);
 while (lbuff != ((void*)0)) {
  switch (lbuff[0]) {
  case 'H':
  case 'P':
  case 'C':
  case 'J':
  case 'L':
  case 'M':

   break;
  case 'N':

   if (cjinf->cji_dfcount == 0) {

    break;
   }
   fprintf(newcf, "%s\n", lbuff);
   break;
  case 'U':
   slash = strchr(lbuff, '/');
   if (slash != ((void*)0)) {
    break;
   }
   if (cjinf->cji_dfcount == 0) {
    lbuff++;
    if (strncmp(lbuff, "df", (size_t)2) == 0) {
     fprintf(newcf, "f%s\n", lbuff);
     fprintf(newcf, "U%s\n", lbuff);
     fprintf(newcf, "N%s\n", lbuff);
    }
    break;
   }
   fprintf(newcf, "%s\n", lbuff);
   break;
  default:
   fprintf(newcf, "%s\n", lbuff);
   break;
  }
  lbuff = ctl_getline(cjinf);
 }

 ctl_freeinf(cjinf);
 cjinf = ((void*)0);

 res = fclose(newcf);
 newcf = ((void*)0);
 if (res != 0) {
  snprintf(errm, sizeof(errm),
      "ctl_renametf error fclose(%s): %s", tfname2,
      strerror(errno));
  goto error_ret;
 }

 strlcpy(cfname2, tfname, sizeof(cfname2));
 cfname2[0] = 'c';
 res = link(tfname2, cfname2);
 if (res != 0) {
  snprintf(errm, sizeof(errm),
      "ctl_renametf error link(%s,%s): %s", tfname2, cfname2,
      strerror(errno));
  goto error_ret;
 }
 unlink(tfname);
 unlink(tfname2);

 return ((void*)0);

error_ret:
 if (cjinf != ((void*)0))
  ctl_freeinf(cjinf);
 if (newcf != ((void*)0))
  fclose(newcf);

 if (*errm != '\0')
  return strdup(errm);
 return strdup("ctl_renametf internal (missed) error");
}
