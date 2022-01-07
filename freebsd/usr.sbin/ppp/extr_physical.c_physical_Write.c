
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct physical {int fd; TYPE_1__* handler; } ;
typedef int ssize_t ;
struct TYPE_2__ {int (* write ) (struct physical*,void const*,size_t) ;} ;


 int LogPHYSICAL ;
 int log_DumpBuff (int ,char*,void const*,size_t) ;
 int stub1 (struct physical*,void const*,size_t) ;
 int write (int ,void const*,size_t) ;

ssize_t
physical_Write(struct physical *p, const void *buf, size_t nbytes)
{
  log_DumpBuff(LogPHYSICAL, "write", buf, nbytes);

  if (p->handler && p->handler->write)
    return (*p->handler->write)(p, buf, nbytes);

  return write(p->fd, buf, nbytes);
}
