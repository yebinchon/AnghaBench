
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int ocs_sm_event_t ;
struct TYPE_5__ {int req_domain_free; int req_accept_frames; int drvsm; } ;
typedef TYPE_1__ ocs_domain_t ;


 int ocs_domain_accept_frames (TYPE_1__*) ;
 int ocs_domain_free (TYPE_1__*) ;
 int ocs_sm_post_event (int *,int ,void*) ;

int
ocs_domain_post_event(ocs_domain_t *domain, ocs_sm_event_t event, void *arg)
{
 int rc;
 int accept_frames;
 int req_domain_free;

 rc = ocs_sm_post_event(&domain->drvsm, event, arg);

 req_domain_free = domain->req_domain_free;
 domain->req_domain_free = 0;

 accept_frames = domain->req_accept_frames;
 domain->req_accept_frames = 0;

 if (accept_frames) {
  ocs_domain_accept_frames(domain);
 }

 if (req_domain_free) {
  ocs_domain_free(domain);
 }

 return rc;
}
