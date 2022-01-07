
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_profile {int samples; int name; int samples_no; int loss_level; int link_nr; } ;
struct dn_pipe_max8 {int * samples; } ;
struct dn_pipe8 {int * samples; int name; int samples_no; int loss_level; } ;
struct dn_link {int link_nr; } ;


 int bcopy (int *,int ,int) ;
 int strncpy (int ,int ,int) ;

__attribute__((used)) static int
dn_compat_config_profile(struct dn_profile *pf, struct dn_link *p,
    void *v)
{
 struct dn_pipe8 *p8 = (struct dn_pipe8 *)v;

 p8->samples = &(((struct dn_pipe_max8 *)p8)->samples[0]);

 pf->link_nr = p->link_nr;
 pf->loss_level = p8->loss_level;

 pf->samples_no = p8->samples_no;
 strncpy(pf->name, p8->name,sizeof(pf->name));
 bcopy(p8->samples, pf->samples, sizeof(pf->samples));

 return 0;
}
