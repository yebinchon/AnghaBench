
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t vm_size_t ;
typedef int vm_prot_t ;
typedef size_t vm_offset_t ;
struct vmspace {int vm_map; scalar_t__ vm_daddr; scalar_t__ vm_taddr; } ;
struct thread {scalar_t__* td_retval; struct proc* td_proc; } ;
struct proc {scalar_t__ p_osrel; struct vmspace* p_vmspace; } ;
struct file {int dummy; } ;
typedef scalar_t__ register_t ;
typedef size_t off_t ;
typedef int cap_rights_t ;


 int AUDIT_ARG_FD (int) ;
 int CAP_MMAP ;
 int CAP_MMAP_R ;
 int CAP_MMAP_W ;
 int CAP_MMAP_X ;
 int EINVAL ;
 int ENOMEM ;
 int FALSE ;
 int MAP_32BIT ;
 size_t MAP_32BIT_MAX_ADDR ;
 int MAP_ALIGNED_SUPER ;
 int MAP_ALIGNMENT_MASK ;
 int MAP_ALIGNMENT_SHIFT ;
 int MAP_ANON ;
 int MAP_EXCL ;
 int MAP_FIXED ;
 int MAP_GUARD ;
 int MAP_HASSEMAPHORE ;
 int MAP_NOCORE ;
 int MAP_NOSYNC ;
 int MAP_PREFAULT_READ ;
 int MAP_PRIVATE ;
 int MAP_RESERVED0020 ;
 int MAP_RESERVED0040 ;
 int MAP_SHARED ;
 int MAP_STACK ;
 int NBBY ;
 size_t PAGE_MASK ;
 int PAGE_SHIFT ;
 int PROT_EXEC ;
 int PROT_EXTRACT (int) ;
 int PROT_MAX (int) ;
 int PROT_MAX_EXTRACT (int) ;
 int PROT_NONE ;
 int PROT_READ ;
 int PROT_WRITE ;
 scalar_t__ P_OSREL_MAP_ANON ;
 scalar_t__ P_OSREL_MAP_FSTRICT ;
 int RLIMIT_DATA ;
 int SV_AOUT ;
 int SV_CURPROC_FLAG (int ) ;
 int VM_PROT_NONE ;
 int _PROT_ALL ;
 int cap_rights_init (int *,int ) ;
 int cap_rights_set (int *,int ) ;
 int fdrop (struct file*,struct thread*) ;
 int fget_mmap (struct thread*,int,int *,int*,struct file**) ;
 int fo_mmap (struct file*,int *,size_t*,size_t,int,int,int,size_t,struct thread*) ;
 int kern_mmap_maxprot (struct proc*,int) ;
 int lim_max (struct thread*,int ) ;
 size_t round_page (size_t) ;
 size_t vm_map_max (int *) ;
 size_t vm_map_min (int *) ;
 int vm_mmap_object (int *,size_t*,size_t,int,int,int,int *,size_t,int ,struct thread*) ;

int
kern_mmap(struct thread *td, uintptr_t addr0, size_t len, int prot, int flags,
    int fd, off_t pos)
{
 struct vmspace *vms;
 struct file *fp;
 struct proc *p;
 vm_offset_t addr;
 vm_size_t pageoff, size;
 vm_prot_t cap_maxprot;
 int align, error, max_prot;
 cap_rights_t rights;

 if ((prot & ~(_PROT_ALL | PROT_MAX(_PROT_ALL))) != 0)
  return (EINVAL);
 max_prot = PROT_MAX_EXTRACT(prot);
 prot = PROT_EXTRACT(prot);
 if (max_prot != 0 && (max_prot & prot) != prot)
  return (EINVAL);

 p = td->td_proc;





 if (max_prot == 0)
  max_prot = kern_mmap_maxprot(p, prot);

 vms = p->p_vmspace;
 fp = ((void*)0);
 AUDIT_ARG_FD(fd);
 addr = addr0;




 flags &= ~(MAP_RESERVED0020 | MAP_RESERVED0040);
 if (!SV_CURPROC_FLAG(SV_AOUT)) {
  if ((len == 0 && p->p_osrel >= P_OSREL_MAP_ANON) ||
      ((flags & MAP_ANON) != 0 && (fd != -1 || pos != 0)))
   return (EINVAL);
 } else {
  if ((flags & MAP_ANON) != 0)
   pos = 0;
 }

 if (flags & MAP_STACK) {
  if ((fd != -1) ||
      ((prot & (PROT_READ | PROT_WRITE)) != (PROT_READ | PROT_WRITE)))
   return (EINVAL);
  flags |= MAP_ANON;
  pos = 0;
 }
 if ((flags & ~(MAP_SHARED | MAP_PRIVATE | MAP_FIXED | MAP_HASSEMAPHORE |
     MAP_STACK | MAP_NOSYNC | MAP_ANON | MAP_EXCL | MAP_NOCORE |
     MAP_PREFAULT_READ | MAP_GUARD |



     MAP_ALIGNMENT_MASK)) != 0)
  return (EINVAL);
 if ((flags & (MAP_EXCL | MAP_FIXED)) == MAP_EXCL)
  return (EINVAL);
 if ((flags & (MAP_SHARED | MAP_PRIVATE)) == (MAP_SHARED | MAP_PRIVATE))
  return (EINVAL);
 if (prot != PROT_NONE &&
     (prot & ~(PROT_READ | PROT_WRITE | PROT_EXEC)) != 0)
  return (EINVAL);
 if ((flags & MAP_GUARD) != 0 && (prot != PROT_NONE || fd != -1 ||
     pos != 0 || (flags & ~(MAP_FIXED | MAP_GUARD | MAP_EXCL |



     MAP_ALIGNMENT_MASK)) != 0))
  return (EINVAL);





 pageoff = (pos & PAGE_MASK);
 pos -= pageoff;


 size = len + pageoff;
 size = round_page(size);

 if (len > size)
  return (ENOMEM);


 align = flags & MAP_ALIGNMENT_MASK;
 if (align != 0 && align != MAP_ALIGNED_SUPER &&
     (align >> MAP_ALIGNMENT_SHIFT >= sizeof(void *) * NBBY ||
     align >> MAP_ALIGNMENT_SHIFT < PAGE_SHIFT))
  return (EINVAL);





 if (flags & MAP_FIXED) {





  addr -= pageoff;
  if (addr & PAGE_MASK)
   return (EINVAL);


  if (addr < vm_map_min(&vms->vm_map) ||
      addr + size > vm_map_max(&vms->vm_map))
   return (EINVAL);
  if (addr + size < addr)
   return (EINVAL);
 } else {
  if (addr == 0 ||
      (addr >= round_page((vm_offset_t)vms->vm_taddr) &&
      addr < round_page((vm_offset_t)vms->vm_daddr +
      lim_max(td, RLIMIT_DATA))))
   addr = round_page((vm_offset_t)vms->vm_daddr +
       lim_max(td, RLIMIT_DATA));
 }
 if (len == 0) {






  error = 0;
 } else if ((flags & MAP_GUARD) != 0) {
  error = vm_mmap_object(&vms->vm_map, &addr, size, VM_PROT_NONE,
      VM_PROT_NONE, flags, ((void*)0), pos, FALSE, td);
 } else if ((flags & MAP_ANON) != 0) {





  error = vm_mmap_object(&vms->vm_map, &addr, size, prot,
      max_prot, flags, ((void*)0), pos, FALSE, td);
 } else {






  cap_rights_init(&rights, CAP_MMAP);
  if (prot & PROT_READ)
   cap_rights_set(&rights, CAP_MMAP_R);
  if ((flags & MAP_SHARED) != 0) {
   if (prot & PROT_WRITE)
    cap_rights_set(&rights, CAP_MMAP_W);
  }
  if (prot & PROT_EXEC)
   cap_rights_set(&rights, CAP_MMAP_X);
  error = fget_mmap(td, fd, &rights, &cap_maxprot, &fp);
  if (error != 0)
   goto done;
  if ((flags & (MAP_SHARED | MAP_PRIVATE)) == 0 &&
      p->p_osrel >= P_OSREL_MAP_FSTRICT) {
   error = EINVAL;
   goto done;
  }


  error = fo_mmap(fp, &vms->vm_map, &addr, size, prot,
      max_prot & cap_maxprot, flags, pos, td);
 }

 if (error == 0)
  td->td_retval[0] = (register_t) (addr + pageoff);
done:
 if (fp)
  fdrop(fp, td);

 return (error);
}
