
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int structsize ;
struct sbuf {int dummy; } ;
struct proc {TYPE_1__* p_fd; } ;
struct TYPE_2__ {int fd_cmask; } ;


 int KASSERT (int,char*) ;
 int sbuf_bcat (struct sbuf*,int*,int) ;

__attribute__((used)) static void
note_procstat_umask(void *arg, struct sbuf *sb, size_t *sizep)
{
 struct proc *p;
 size_t size;
 int structsize;

 p = (struct proc *)arg;
 size = sizeof(structsize) + sizeof(p->p_fd->fd_cmask);
 if (sb != ((void*)0)) {
  KASSERT(*sizep == size, ("invalid size"));
  structsize = sizeof(p->p_fd->fd_cmask);
  sbuf_bcat(sb, &structsize, sizeof(structsize));
  sbuf_bcat(sb, &p->p_fd->fd_cmask, sizeof(p->p_fd->fd_cmask));
 }
 *sizep = size;
}
