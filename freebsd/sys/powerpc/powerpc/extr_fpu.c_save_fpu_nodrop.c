
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 struct thread* PCPU_GET (int ) ;
 int fputhread ;
 int save_fpu_int (struct thread*) ;

void
save_fpu_nodrop(struct thread *td)
{
 struct thread *ftd;

 ftd = PCPU_GET(fputhread);
 if (td != ftd) {
  return;
 }

 save_fpu_int(td);
}
