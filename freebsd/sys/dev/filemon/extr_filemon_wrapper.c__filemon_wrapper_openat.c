
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct thread {int dummy; } ;
struct filemon {char* fname1; int error; } ;
struct file {int f_vnode; } ;
typedef int cap_rights_t ;
struct TYPE_3__ {int p_pid; } ;


 int AT_FDCWD ;
 int CAP_LOOKUP ;
 int M_TEMP ;
 int O_ACCMODE ;
 int O_RDWR ;
 int cap_rights_init (int *,int ) ;
 int copyinstr (char const*,char*,int,int *) ;
 TYPE_1__* curproc ;
 int fdrop (struct file*,struct thread*) ;
 int filemon_drop (struct filemon*) ;
 int filemon_output_event (struct filemon*,char*,char,char*,...) ;
 struct filemon* filemon_proc_get (TYPE_1__*) ;
 int free (char*,int ) ;
 scalar_t__ getvnode (struct thread*,int,int ,struct file**) ;
 int vn_fullpath (struct thread*,int ,char**,char**) ;

__attribute__((used)) static void
_filemon_wrapper_openat(struct thread *td, const char *upath, int flags,
    int fd)
{
 int error;
 struct file *fp;
 struct filemon *filemon;
 char *atpath, *freepath;
 cap_rights_t rights;

 if ((filemon = filemon_proc_get(curproc)) != ((void*)0)) {
  atpath = "";
  freepath = ((void*)0);
  fp = ((void*)0);

  if ((error = copyinstr(upath, filemon->fname1,
      sizeof(filemon->fname1), ((void*)0))) != 0) {
   filemon->error = error;
   goto copyfail;
  }

  if (filemon->fname1[0] != '/' && fd != AT_FDCWD) {
   filemon_output_event(filemon, "A %d %s\n",
       curproc->p_pid, filemon->fname1);





   if (getvnode(td, fd,
       cap_rights_init(&rights, CAP_LOOKUP), &fp) == 0) {
    vn_fullpath(td, fp->f_vnode, &atpath,
        &freepath);
   }
  }
  if (flags & O_RDWR) {





   filemon_output_event(filemon, "R %d %s%s%s\n",
       curproc->p_pid, atpath,
       atpath[0] != '\0' ? "/" : "", filemon->fname1);
  }

  filemon_output_event(filemon, "%c %d %s%s%s\n",
      (flags & O_ACCMODE) ? 'W':'R',
      curproc->p_pid, atpath,
      atpath[0] != '\0' ? "/" : "", filemon->fname1);
copyfail:
  filemon_drop(filemon);
  if (fp != ((void*)0))
   fdrop(fp, td);
  free(freepath, M_TEMP);
 }
}
