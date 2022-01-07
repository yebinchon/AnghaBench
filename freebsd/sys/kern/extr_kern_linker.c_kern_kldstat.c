
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {scalar_t__* td_retval; int td_ucred; } ;
struct kld_file_stat {int * pathname; int size; int address; int id; int refs; int * name; } ;
typedef TYPE_1__* linker_file_t ;
struct TYPE_3__ {int pathname; int size; int address; int id; int refs; int filename; } ;


 int ENOENT ;
 int bcopy (int ,int *,int) ;
 int kld_sx ;
 TYPE_1__* linker_find_file_by_id (int) ;
 int mac_kld_check_stat (int ) ;
 int strlen (int ) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

int
kern_kldstat(struct thread *td, int fileid, struct kld_file_stat *stat)
{
 linker_file_t lf;
 int namelen;
 sx_xlock(&kld_sx);
 lf = linker_find_file_by_id(fileid);
 if (lf == ((void*)0)) {
  sx_xunlock(&kld_sx);
  return (ENOENT);
 }


 namelen = strlen(lf->filename) + 1;
 if (namelen > sizeof(stat->name))
  namelen = sizeof(stat->name);
 bcopy(lf->filename, &stat->name[0], namelen);
 stat->refs = lf->refs;
 stat->id = lf->id;
 stat->address = lf->address;
 stat->size = lf->size;

 namelen = strlen(lf->pathname) + 1;
 if (namelen > sizeof(stat->pathname))
  namelen = sizeof(stat->pathname);
 bcopy(lf->pathname, &stat->pathname[0], namelen);
 sx_xunlock(&kld_sx);

 td->td_retval[0] = 0;
 return (0);
}
