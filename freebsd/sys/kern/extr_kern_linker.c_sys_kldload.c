
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int* td_retval; } ;
struct kldload_args {int file; } ;


 int MAXPATHLEN ;
 int M_TEMP ;
 int M_WAITOK ;
 int copyinstr (int ,char*,int ,int *) ;
 int free (char*,int ) ;
 int kern_kldload (struct thread*,char*,int*) ;
 char* malloc (int ,int ,int ) ;

int
sys_kldload(struct thread *td, struct kldload_args *uap)
{
 char *pathname = ((void*)0);
 int error, fileid;

 td->td_retval[0] = -1;

 pathname = malloc(MAXPATHLEN, M_TEMP, M_WAITOK);
 error = copyinstr(uap->file, pathname, MAXPATHLEN, ((void*)0));
 if (error == 0) {
  error = kern_kldload(td, pathname, &fileid);
  if (error == 0)
   td->td_retval[0] = fileid;
 }
 free(pathname, M_TEMP);
 return (error);
}
