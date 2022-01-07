
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct file {int dummy; } ;
struct export_fd_buf {scalar_t__ remainder; int fdp; int flags; int kif; } ;
typedef int cap_rights_t ;


 int FILEDESC_SLOCK (int ) ;
 int FILEDESC_SUNLOCK (int ) ;
 int export_file_to_kinfo (struct file*,int,int *,int *,int ,int ) ;
 int export_kinfo_to_sb (struct export_fd_buf*) ;

__attribute__((used)) static int
export_file_to_sb(struct file *fp, int fd, cap_rights_t *rightsp,
    struct export_fd_buf *efbuf)
{
 int error;

 if (efbuf->remainder == 0)
  return (0);
 export_file_to_kinfo(fp, fd, rightsp, &efbuf->kif, efbuf->fdp,
     efbuf->flags);
 FILEDESC_SUNLOCK(efbuf->fdp);
 error = export_kinfo_to_sb(efbuf);
 FILEDESC_SLOCK(efbuf->fdp);
 return (error);
}
