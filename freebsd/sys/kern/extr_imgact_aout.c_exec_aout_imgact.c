
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef unsigned long vm_offset_t ;
typedef int * vm_object_t ;
typedef int * vm_map_t ;
struct vmspace {unsigned long vm_tsize; unsigned long vm_dsize; void* vm_daddr; void* vm_taddr; int vm_map; } ;
struct image_params {unsigned long entry_addr; TYPE_2__* proc; scalar_t__ interpreted; int vp; int * object; TYPE_1__* attr; int ps_strings; scalar_t__ image_header; } ;
struct exec {int a_midmag; long a_text; unsigned long a_entry; int a_data; int a_bss; } ;
typedef void* caddr_t ;
struct TYPE_10__ {int sv_psstrings; } ;
struct TYPE_9__ {TYPE_4__* p_sysent; struct vmspace* p_vmspace; } ;
struct TYPE_8__ {unsigned long va_size; } ;


 int EFAULT ;
 int ENOMEM ;
 int LK_RETRY ;
 int LK_SHARED ;
 int MAP_COPY_ON_WRITE ;
 int MAP_PREFAULT ;
 int MAP_VN_EXEC ;
 int MID_ZERO ;
 int N_GETMID (struct exec const) ;
 int PAGE_MASK ;
 unsigned long PAGE_SHIFT ;
 unsigned long PAGE_SIZE ;
 int PROC_LOCK (TYPE_2__*) ;
 int PROC_UNLOCK (TYPE_2__*) ;

 int RACCT_DATA ;
 int RLIMIT_DATA ;
 unsigned long UINT_MAX ;
 int VM_PROT_ALL ;
 int VM_PROT_EXECUTE ;
 int VM_PROT_READ ;
 int VOP_SET_TEXT_CHECKED (int ) ;
 int VOP_UNLOCK (int ,int ) ;

 TYPE_4__ aout_sysvec ;
 int exec_new_vmspace (struct image_params*,TYPE_4__*) ;
 unsigned long lim_cur_proc (TYPE_2__*,int ) ;
 unsigned long maxtsiz ;
 int ntohl (int) ;
 scalar_t__ racct_set (TYPE_2__*,int ,unsigned long) ;
 unsigned long roundup (int ,unsigned long) ;
 int vm_map_insert (int *,int *,unsigned long,unsigned long,unsigned long,int,int,int) ;
 int vm_map_lock (int *) ;
 int vm_map_unlock (int *) ;
 int vm_object_deallocate (int *) ;
 int vm_object_reference (int *) ;
 int vn_lock (int ,int) ;

__attribute__((used)) static int
exec_aout_imgact(struct image_params *imgp)
{
 const struct exec *a_out = (const struct exec *) imgp->image_header;
 struct vmspace *vmspace;
 vm_map_t map;
 vm_object_t object;
 vm_offset_t text_end, data_end;
 unsigned long virtual_offset;
 unsigned long file_offset;
 unsigned long bss_size;
 int error;







 if (((a_out->a_midmag >> 16) & 0xff) != 0x86 &&
     ((a_out->a_midmag >> 16) & 0xff) != 0 &&
     ((((int)ntohl(a_out->a_midmag)) >> 16) & 0xff) != 0x86)
                return -1;






 switch ((int)(a_out->a_midmag & 0xffff)) {
 case 128:
  virtual_offset = 0;
  if (a_out->a_text) {
   file_offset = PAGE_SIZE;
  } else {

   file_offset = 0;
  }
  break;
 case 129:
  virtual_offset = PAGE_SIZE;
  file_offset = 0;

  if (N_GETMID(*a_out) == MID_ZERO)
   imgp->ps_strings = aout_sysvec.sv_psstrings;
  break;
 default:

  switch ((int)(ntohl(a_out->a_midmag) & 0xffff)) {
  case 128:
  case 129:
   virtual_offset = PAGE_SIZE;
   file_offset = 0;
   break;
  default:
   return (-1);
  }
 }

 bss_size = roundup(a_out->a_bss, PAGE_SIZE);




 if (
     a_out->a_entry < virtual_offset ||
     a_out->a_entry >= virtual_offset + a_out->a_text ||


     a_out->a_text & PAGE_MASK || a_out->a_data & PAGE_MASK


     ||

     virtual_offset + a_out->a_text + a_out->a_data + bss_size > UINT_MAX

     )
  return (-1);


 if (a_out->a_data + a_out->a_text > imgp->attr->va_size)
  return (EFAULT);




 PROC_LOCK(imgp->proc);
 if (
     a_out->a_text > maxtsiz ||


     a_out->a_data + bss_size > lim_cur_proc(imgp->proc, RLIMIT_DATA) ||
     racct_set(imgp->proc, RACCT_DATA, a_out->a_data + bss_size) != 0) {
  PROC_UNLOCK(imgp->proc);
  return (ENOMEM);
 }
 PROC_UNLOCK(imgp->proc);
 VOP_UNLOCK(imgp->vp, 0);




 error = exec_new_vmspace(imgp, &aout_sysvec);

 vn_lock(imgp->vp, LK_SHARED | LK_RETRY);
 if (error)
  return (error);




 vmspace = imgp->proc->p_vmspace;

 object = imgp->object;
 map = &vmspace->vm_map;
 vm_map_lock(map);
 vm_object_reference(object);

 text_end = virtual_offset + a_out->a_text;
 error = vm_map_insert(map, object,
  file_offset,
  virtual_offset, text_end,
  VM_PROT_READ | VM_PROT_EXECUTE, VM_PROT_ALL,
  MAP_COPY_ON_WRITE | MAP_PREFAULT | MAP_VN_EXEC);
 if (error) {
  vm_map_unlock(map);
  vm_object_deallocate(object);
  return (error);
 }
 VOP_SET_TEXT_CHECKED(imgp->vp);
 data_end = text_end + a_out->a_data;
 if (a_out->a_data) {
  vm_object_reference(object);
  error = vm_map_insert(map, object,
   file_offset + a_out->a_text,
   text_end, data_end,
   VM_PROT_ALL, VM_PROT_ALL,
   MAP_COPY_ON_WRITE | MAP_PREFAULT | MAP_VN_EXEC);
  if (error) {
   vm_map_unlock(map);
   vm_object_deallocate(object);
   return (error);
  }
  VOP_SET_TEXT_CHECKED(imgp->vp);
 }

 if (bss_size) {
  error = vm_map_insert(map, ((void*)0), 0,
   data_end, data_end + bss_size,
   VM_PROT_ALL, VM_PROT_ALL, 0);
  if (error) {
   vm_map_unlock(map);
   return (error);
  }
 }
 vm_map_unlock(map);


 vmspace->vm_tsize = a_out->a_text >> PAGE_SHIFT;
 vmspace->vm_dsize = (a_out->a_data + bss_size) >> PAGE_SHIFT;
 vmspace->vm_taddr = (caddr_t) (uintptr_t) virtual_offset;
 vmspace->vm_daddr = (caddr_t) (uintptr_t)
       (virtual_offset + a_out->a_text);


 imgp->interpreted = 0;
 imgp->entry_addr = a_out->a_entry;

 imgp->proc->p_sysent = &aout_sysvec;

 return (0);
}
