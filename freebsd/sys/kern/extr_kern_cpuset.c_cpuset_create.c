
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpuset {int dummy; } ;
typedef int cpusetid_t ;
typedef int cpuset_t ;


 int ENFILE ;
 int M_WAITOK ;
 int M_ZERO ;
 int _cpuset_create (struct cpuset*,struct cpuset*,int const*,int *,int) ;
 int alloc_unr (int ) ;
 int cpuset_unr ;
 int cpuset_zone ;
 int free_unr (int ,int) ;
 struct cpuset* uma_zalloc (int ,int) ;
 int uma_zfree (int ,struct cpuset*) ;

__attribute__((used)) static int
cpuset_create(struct cpuset **setp, struct cpuset *parent, const cpuset_t *mask)
{
 struct cpuset *set;
 cpusetid_t id;
 int error;

 id = alloc_unr(cpuset_unr);
 if (id == -1)
  return (ENFILE);
 *setp = set = uma_zalloc(cpuset_zone, M_WAITOK | M_ZERO);
 error = _cpuset_create(set, parent, mask, ((void*)0), id);
 if (error == 0)
  return (0);
 free_unr(cpuset_unr, id);
 uma_zfree(cpuset_zone, set);

 return (error);
}
