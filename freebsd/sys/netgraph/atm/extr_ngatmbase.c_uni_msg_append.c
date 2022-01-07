
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct uni_msg {size_t b_wptr; } ;


 int bcopy (void*,size_t,size_t) ;
 int uni_msg_ensure (struct uni_msg*,size_t) ;

int
uni_msg_append(struct uni_msg *m, void *buf, size_t size)
{
 int error;

 if ((error = uni_msg_ensure(m, size)))
  return (error);
 bcopy(buf, m->b_wptr, size);
 m->b_wptr += size;

 return (0);
}
