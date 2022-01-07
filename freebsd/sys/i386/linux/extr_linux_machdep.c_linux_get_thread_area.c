
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct segment_descriptor {int dummy; } ;
struct linux_get_thread_area_args {int desc; } ;
struct l_user_desc {int entry_number; int read_exec_only; int seg_not_present; int useable; int limit_in_pages; int contents; int seg_32bit; int limit; int base_addr; } ;
struct l_desc_struct {int dummy; } ;
typedef int info ;
typedef int desc ;


 int EFAULT ;
 int EINVAL ;
 int LINUX_GET_32BIT (struct l_desc_struct*) ;
 int LINUX_GET_BASE (struct l_desc_struct*) ;
 int LINUX_GET_CONTENTS (struct l_desc_struct*) ;
 int LINUX_GET_LIMIT (struct l_desc_struct*) ;
 int LINUX_GET_LIMIT_PAGES (struct l_desc_struct*) ;
 int LINUX_GET_PRESENT (struct l_desc_struct*) ;
 int LINUX_GET_USEABLE (struct l_desc_struct*) ;
 int LINUX_GET_WRITABLE (struct l_desc_struct*) ;
 struct segment_descriptor* PCPU_GET (int ) ;
 int copyin (int ,struct l_user_desc*,int) ;
 int copyout (struct l_user_desc*,int ,int) ;
 int fsgs_gdt ;
 int memcpy (struct l_desc_struct*,struct segment_descriptor*,int) ;
 int memset (struct l_user_desc*,int ,int) ;

int
linux_get_thread_area(struct thread *td, struct linux_get_thread_area_args *args)
{

 struct l_user_desc info;
 int error;
 int idx;
 struct l_desc_struct desc;
 struct segment_descriptor sd;

 error = copyin(args->desc, &info, sizeof(struct l_user_desc));
 if (error)
  return (error);

 idx = info.entry_number;

 if (idx != 6 && idx != 3)
  return (EINVAL);

 idx = 3;

 memset(&info, 0, sizeof(info));

 sd = PCPU_GET(fsgs_gdt)[1];

 memcpy(&desc, &sd, sizeof(desc));

 info.entry_number = idx;
 info.base_addr = LINUX_GET_BASE(&desc);
 info.limit = LINUX_GET_LIMIT(&desc);
 info.seg_32bit = LINUX_GET_32BIT(&desc);
 info.contents = LINUX_GET_CONTENTS(&desc);
 info.read_exec_only = !LINUX_GET_WRITABLE(&desc);
 info.limit_in_pages = LINUX_GET_LIMIT_PAGES(&desc);
 info.seg_not_present = !LINUX_GET_PRESENT(&desc);
 info.useable = LINUX_GET_USEABLE(&desc);

 error = copyout(&info, args->desc, sizeof(struct l_user_desc));
 if (error)
  return (EFAULT);

 return (0);
}
