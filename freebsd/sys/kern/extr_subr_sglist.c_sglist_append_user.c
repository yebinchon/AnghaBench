
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {TYPE_1__* td_proc; } ;
struct sgsave {int dummy; } ;
struct sglist {scalar_t__ sg_maxseg; } ;
struct TYPE_2__ {int p_vmspace; } ;


 int EINVAL ;
 int SGLIST_RESTORE (struct sglist*,struct sgsave) ;
 int SGLIST_SAVE (struct sglist*,struct sgsave) ;
 int _sglist_append_buf (struct sglist*,void*,size_t,int ,int *) ;
 int vmspace_pmap (int ) ;

int
sglist_append_user(struct sglist *sg, void *buf, size_t len, struct thread *td)
{
 struct sgsave save;
 int error;

 if (sg->sg_maxseg == 0)
  return (EINVAL);
 SGLIST_SAVE(sg, save);
 error = _sglist_append_buf(sg, buf, len,
     vmspace_pmap(td->td_proc->p_vmspace), ((void*)0));
 if (error)
  SGLIST_RESTORE(sg, save);
 return (error);
}
