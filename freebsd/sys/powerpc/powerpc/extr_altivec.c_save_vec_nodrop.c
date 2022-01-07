
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;


 struct thread* PCPU_GET (int ) ;
 int save_vec_int (struct thread*) ;
 int vecthread ;

void
save_vec_nodrop(struct thread *td)
{
 struct thread *vtd;

 vtd = PCPU_GET(vecthread);
 if (td != vtd) {
  return;
 }

 save_vec_int(td);
}
