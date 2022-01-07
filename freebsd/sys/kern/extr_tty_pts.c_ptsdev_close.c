
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tty {int dummy; } ;
struct thread {int dummy; } ;
struct file {int * f_vnode; struct tty* f_data; } ;
struct TYPE_2__ {int (* fo_close ) (struct file*,struct thread*) ;} ;


 int stub1 (struct file*,struct thread*) ;
 int tty_lock (struct tty*) ;
 int tty_rel_gone (struct tty*) ;
 TYPE_1__ vnops ;

__attribute__((used)) static int
ptsdev_close(struct file *fp, struct thread *td)
{
 struct tty *tp = fp->f_data;


 tty_lock(tp);
 tty_rel_gone(tp);







 if (fp->f_vnode != ((void*)0))
  return (vnops.fo_close(fp, td));

 return (0);
}
