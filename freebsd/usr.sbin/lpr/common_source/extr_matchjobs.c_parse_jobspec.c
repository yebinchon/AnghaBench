
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jobspec_hdr {int dummy; } ;
struct jobspec {int startnum; int endrange; char* wantedhost; char* wanteduser; } ;


 int STAILQ_INSERT_TAIL (struct jobspec_hdr*,struct jobspec*,int ) ;
 scalar_t__ errno ;
 int free (struct jobspec*) ;
 scalar_t__ isdigitch (char) ;
 struct jobspec* malloc (int) ;
 int memset (struct jobspec*,int ,int) ;
 int nextjs ;
 int printf (char*,...) ;
 char* strchr (char*,char) ;
 int strtol (char*,char**,int) ;

int
parse_jobspec(char *jobstr, struct jobspec_hdr *js_hdr)
{
 struct jobspec *jsinfo;
 char *atsign, *colon, *lhside, *numstr, *period, *rhside;
 int jobnum;





 if ((jobstr == ((void*)0)) || (*jobstr == '\0'))
  return (0);

 jsinfo = malloc(sizeof(struct jobspec));
 memset(jsinfo, 0, sizeof(struct jobspec));
 jsinfo->startnum = jsinfo->endrange = -1;


 numstr = ((void*)0);
 atsign = strchr(jobstr, '@');
 colon = strchr(jobstr, ':');
 if (atsign != ((void*)0))
  *atsign = '\0';
 if (colon != ((void*)0))
  *colon = '\0';


 if (atsign != ((void*)0)) {
  rhside = atsign + 1;
  if (*rhside != '\0')
   jsinfo->wantedhost = rhside;
 }


 rhside = ((void*)0);
 if (colon != ((void*)0)) {
  rhside = colon + 1;
  if (*rhside == '\0')
   rhside = ((void*)0);
 }
 lhside = ((void*)0);
 if (*jobstr != '\0')
  lhside = jobstr;
 if ((lhside != ((void*)0)) && (rhside != ((void*)0))) {
  if (isdigitch(*lhside)) {
   if (isdigitch(*rhside))
    goto bad_input;
   numstr = lhside;
   jsinfo->wanteduser = rhside;
  } else if (isdigitch(*rhside)) {
   numstr = rhside;






   period = strchr(lhside, '.');
   if ((atsign == ((void*)0)) && (period != ((void*)0)))
    jsinfo->wantedhost = lhside;
   else
    jsinfo->wanteduser = lhside;
  } else {

   goto bad_input;
  }
 } else if (lhside != ((void*)0)) {
  if (isdigitch(*lhside))
   numstr = lhside;
  else
   jsinfo->wanteduser = lhside;
 } else if (rhside != ((void*)0)) {
  if (isdigitch(*rhside))
   numstr = rhside;
  else
   jsinfo->wanteduser = rhside;
 }





 if (numstr != ((void*)0)) {
  errno = 0;
  jobnum = strtol(numstr, &numstr, 10);
  if (errno != 0)
   goto bad_input;
  if (jobnum < 0)
   goto bad_input;
  if (jobnum > 99999)
   goto bad_input;
  jsinfo->startnum = jsinfo->endrange = jobnum;


  if ((*numstr == '-') && (isdigitch(*(numstr + 1)))) {
   numstr++;
   errno = 0;
   jobnum = strtol(numstr, &numstr, 10);
   if (errno != 0)
    goto bad_input;
   if (jobnum < jsinfo->startnum)
    goto bad_input;
   if (jobnum > 99999)
    goto bad_input;
   jsinfo->endrange = jobnum;
  }
  if (*numstr != '\0') {
   if (atsign != ((void*)0))
    goto bad_input;
   if (jsinfo->wantedhost != ((void*)0))
    goto bad_input;
   if (jsinfo->wanteduser != ((void*)0))
    goto bad_input;

   jsinfo->wantedhost = numstr;
  }
 }

 if ((jsinfo->startnum < 0) && (jsinfo->wanteduser == ((void*)0)) &&
     (jsinfo->wantedhost == ((void*)0)))
  goto bad_input;






 STAILQ_INSERT_TAIL(js_hdr, jsinfo, nextjs);
 return (1);

bad_input:




 if (atsign != ((void*)0))
  *atsign = '@';
 if (colon != ((void*)0))
  *colon = ':';
 if (jsinfo != ((void*)0))
  free(jsinfo);
 return (0);
}
