
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct physical {int fd; TYPE_1__* handler; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* read ) (struct physical*,void*,size_t) ;} ;


 int LogPHYSICAL ;
 int log_DumpBuff (int ,char*,void*,int ) ;
 int read (int ,void*,size_t) ;
 int stub1 (struct physical*,void*,size_t) ;

ssize_t
physical_Read(struct physical *p, void *buf, size_t nbytes)
{
  ssize_t ret;

  if (p->handler && p->handler->read)
    ret = (*p->handler->read)(p, buf, nbytes);
  else
    ret = read(p->fd, buf, nbytes);

  log_DumpBuff(LogPHYSICAL, "read", buf, ret);

  return ret;
}
