
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ vm_size_t ;
typedef uintptr_t vm_ooffset_t ;
struct vm_object {int dummy; } ;
struct snddev_info {int dummy; } ;
struct pcm_channel {int flags; int bufsoft; } ;
struct cdev {int dummy; } ;
struct TYPE_2__ {int td_ucred; } ;


 int CHN_F_MMAP ;
 int CHN_F_MMAP_INVALID ;
 int DSP_REGISTERED (struct snddev_info*,struct cdev*) ;
 int EINVAL ;
 int OBJT_DEVICE ;
 int PCM_GIANT_ENTER (struct snddev_info*) ;
 int PCM_GIANT_EXIT (struct snddev_info*) ;
 int PCM_GIANT_LEAVE (struct snddev_info*) ;
 int PROT_EXEC ;
 int PROT_READ ;
 int PROT_WRITE ;
 int SD_F_PRIO_RD ;
 int SD_F_PRIO_WR ;
 scalar_t__ SV_ABI_LINUX ;
 scalar_t__ SV_CURPROC_ABI () ;
 TYPE_1__* curthread ;
 struct snddev_info* dsp_get_info (struct cdev*) ;
 int dsp_mmap_allow_prot_exec ;
 int getchns (struct cdev*,struct pcm_channel**,struct pcm_channel**,int) ;
 int relchns (struct cdev*,struct pcm_channel*,struct pcm_channel*,int) ;
 scalar_t__ sndbuf_getbufofs (int ,uintptr_t) ;
 scalar_t__ sndbuf_getsize (int ) ;
 struct vm_object* vm_pager_allocate (int ,struct cdev*,scalar_t__,int,uintptr_t,int ) ;

__attribute__((used)) static int
dsp_mmap_single(struct cdev *i_dev, vm_ooffset_t *offset,
    vm_size_t size, struct vm_object **object, int nprot)
{
 struct snddev_info *d;
 struct pcm_channel *wrch, *rdch, *c;
 if ((nprot & PROT_EXEC) && dsp_mmap_allow_prot_exec < 1)

  return (EINVAL);






 if ((nprot & (PROT_READ | PROT_WRITE)) == 0)
  return (EINVAL);

 d = dsp_get_info(i_dev);
 if (!DSP_REGISTERED(d, i_dev))
  return (EINVAL);

 PCM_GIANT_ENTER(d);

 getchns(i_dev, &rdch, &wrch, SD_F_PRIO_RD | SD_F_PRIO_WR);

 c = ((nprot & PROT_WRITE) != 0) ? wrch : rdch;
 if (c == ((void*)0) || (c->flags & CHN_F_MMAP_INVALID) ||
     (*offset + size) > sndbuf_getsize(c->bufsoft) ||
     (wrch != ((void*)0) && (wrch->flags & CHN_F_MMAP_INVALID)) ||
     (rdch != ((void*)0) && (rdch->flags & CHN_F_MMAP_INVALID))) {
  relchns(i_dev, rdch, wrch, SD_F_PRIO_RD | SD_F_PRIO_WR);
  PCM_GIANT_EXIT(d);
  return (EINVAL);
 }

 if (wrch != ((void*)0))
  wrch->flags |= CHN_F_MMAP;
 if (rdch != ((void*)0))
  rdch->flags |= CHN_F_MMAP;

 *offset = (uintptr_t)sndbuf_getbufofs(c->bufsoft, *offset);
 relchns(i_dev, rdch, wrch, SD_F_PRIO_RD | SD_F_PRIO_WR);
 *object = vm_pager_allocate(OBJT_DEVICE, i_dev,
     size, nprot, *offset, curthread->td_ucred);

 PCM_GIANT_LEAVE(d);

 if (*object == ((void*)0))
   return (EINVAL);
 return (0);
}
