
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct request {int jobids; int users; struct req_user* authinfo; struct req_user* prettyname; struct req_user* authname; struct req_user* logname; } ;
struct req_user {int dummy; } ;
typedef struct req_user req_jobid ;


 struct req_user* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct req_user*,int ) ;
 int free (struct req_user*) ;
 int init_request (struct request*) ;
 int rj_link ;
 int ru_link ;

void
free_request(struct request *rp)
{
 struct req_user *ru;
 struct req_jobid *rj;

 if (rp->logname)
  free(rp->logname);
 if (rp->authname)
  free(rp->authname);
 if (rp->prettyname)
  free(rp->prettyname);
 if (rp->authinfo)
  free(rp->authinfo);
 while ((ru = TAILQ_FIRST(&rp->users)) != ((void*)0)) {
  TAILQ_REMOVE(&rp->users, ru, ru_link);
  free(ru);
 }
 while ((rj = TAILQ_FIRST(&rp->jobids)) != ((void*)0)) {
  TAILQ_REMOVE(&rp->jobids, rj, rj_link);
  free(rj);
 }
 init_request(rp);
}
