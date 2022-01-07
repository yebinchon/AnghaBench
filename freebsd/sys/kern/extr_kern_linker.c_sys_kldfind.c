
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int* td_retval; int td_ucred; } ;
struct kldfind_args {int file; } ;
typedef TYPE_1__* linker_file_t ;
struct TYPE_3__ {int id; } ;


 int ENOENT ;
 int MAXPATHLEN ;
 int M_TEMP ;
 int M_WAITOK ;
 int copyinstr (int ,char*,int ,int *) ;
 int free (char*,int ) ;
 int kld_sx ;
 char* linker_basename (char*) ;
 TYPE_1__* linker_find_file_by_name (char const*) ;
 int mac_kld_check_stat (int ) ;
 char* malloc (int ,int ,int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
sys_kldfind(struct thread *td, struct kldfind_args *uap)
{
 char *pathname;
 const char *filename;
 linker_file_t lf;
 int error;







 td->td_retval[0] = -1;

 pathname = malloc(MAXPATHLEN, M_TEMP, M_WAITOK);
 if ((error = copyinstr(uap->file, pathname, MAXPATHLEN, ((void*)0))) != 0)
  goto out;

 filename = linker_basename(pathname);
 sx_xlock(&kld_sx);
 lf = linker_find_file_by_name(filename);
 if (lf)
  td->td_retval[0] = lf->id;
 else
  error = ENOENT;
 sx_xunlock(&kld_sx);
out:
 free(pathname, M_TEMP);
 return (error);
}
