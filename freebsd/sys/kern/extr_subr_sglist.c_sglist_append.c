
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sgsave {int dummy; } ;
struct sglist {scalar_t__ sg_maxseg; } ;


 int EINVAL ;
 int SGLIST_RESTORE (struct sglist*,struct sgsave) ;
 int SGLIST_SAVE (struct sglist*,struct sgsave) ;
 int _sglist_append_buf (struct sglist*,void*,size_t,int *,int *) ;

int
sglist_append(struct sglist *sg, void *buf, size_t len)
{
 struct sgsave save;
 int error;

 if (sg->sg_maxseg == 0)
  return (EINVAL);
 SGLIST_SAVE(sg, save);
 error = _sglist_append_buf(sg, buf, len, ((void*)0), ((void*)0));
 if (error)
  SGLIST_RESTORE(sg, save);
 return (error);
}
