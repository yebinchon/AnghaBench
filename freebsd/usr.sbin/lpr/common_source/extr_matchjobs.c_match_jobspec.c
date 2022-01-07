
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jobspec {int startnum; int endrange; int * matcheduser; int * wanteduser; int matchcnt; int * wantedhost; } ;
struct jobqueue {char* job_cfname; int job_matched; } ;
struct cjobinfo {char const* cji_acctuser; } ;


 int calc_jobnum (char*,char const**) ;
 int ctl_freeinf (struct cjobinfo*) ;
 struct cjobinfo* ctl_readcf (char*,char*) ;
 scalar_t__ fnmatch (int *,char const*,int ) ;
 int printf (char*,...) ;
 int * strdup (char const*) ;

__attribute__((used)) static int
match_jobspec(struct jobqueue *jq, struct jobspec *jspec)
{
 struct cjobinfo *cfinf;
 const char *cf_hoststr;
 int jnum, match;





 if (jspec == ((void*)0) || jq == ((void*)0))
  return (0);





 if (jq->job_matched)
  return (0);

 jnum = calc_jobnum(jq->job_cfname, &cf_hoststr);
 cfinf = ((void*)0);
 match = 0;
 jspec->matcheduser = ((void*)0);




 if (jspec->startnum >= 0) {
  if (jnum < jspec->startnum)
   goto nomatch;
  if (jnum > jspec->endrange)
   goto nomatch;
 }
 if (jspec->wantedhost != ((void*)0)) {
  if (fnmatch(jspec->wantedhost, cf_hoststr, 0) != 0)
   goto nomatch;
 }





 if (jspec->wanteduser != ((void*)0)) {
  cfinf = ctl_readcf("fakeq", jq->job_cfname);
  if (cfinf == ((void*)0))
   goto nomatch;
  if (fnmatch(jspec->wanteduser, cfinf->cji_acctuser, 0) != 0)
   goto nomatch;
 }


 match = 1;
 jq->job_matched = 1;
 jspec->matchcnt++;
 if (jspec->wanteduser != ((void*)0)) {





  jspec->matcheduser = strdup(cfinf->cji_acctuser);
 }




nomatch:
 if (cfinf != ((void*)0))
  ctl_freeinf(cfinf);
 return (match);
}
