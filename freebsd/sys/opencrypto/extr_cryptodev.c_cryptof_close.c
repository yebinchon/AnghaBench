
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct file {struct fcrypt* f_data; } ;
struct fcrypt {int csessions; } ;
struct csession {int dummy; } ;


 int M_XDATA ;
 struct csession* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct csession*,int ) ;
 int csefree (struct csession*) ;
 int free (struct fcrypt*,int ) ;
 int next ;

__attribute__((used)) static int
cryptof_close(struct file *fp, struct thread *td)
{
 struct fcrypt *fcr = fp->f_data;
 struct csession *cse;

 while ((cse = TAILQ_FIRST(&fcr->csessions))) {
  TAILQ_REMOVE(&fcr->csessions, cse, next);
  csefree(cse);
 }
 free(fcr, M_XDATA);
 fp->f_data = ((void*)0);
 return 0;
}
