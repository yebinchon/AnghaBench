
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vm_offset_t ;
struct timeval {int dummy; } ;
struct TYPE_2__ {int cnt; int in; int out; int size; int * buffer; } ;
struct pipe {int pipe_state; TYPE_1__ pipe_buffer; } ;
typedef int * caddr_t ;


 int ENOMEM ;
 int KASSERT (int,char*) ;
 int KERN_SUCCESS ;
 int PIPE_DIRECTW ;
 int PIPE_MTX (struct pipe*) ;
 int SMALL_PIPE_SIZE ;
 int VMFS_ANY_SPACE ;
 int VM_PROT_RW ;
 int amountpipekva ;
 int atomic_add_long (int *,int) ;
 int bcopy (int *,int *,int) ;
 int mtx_owned (int ) ;
 int pipe_free_kmem (struct pipe*) ;
 int pipe_map ;
 int pipeallocfail ;
 int pipefragretry ;
 int piperesizefail ;
 scalar_t__ ppsratecheck (struct timeval*,int*,int) ;
 int printf (char*) ;
 int round_page (int) ;
 int vm_map_find (int ,int *,int ,int *,int,int ,int ,int ,int ,int ) ;
 scalar_t__ vm_map_min (int ) ;

__attribute__((used)) static int
pipespace_new(struct pipe *cpipe, int size)
{
 caddr_t buffer;
 int error, cnt, firstseg;
 static int curfail = 0;
 static struct timeval lastfail;

 KASSERT(!mtx_owned(PIPE_MTX(cpipe)), ("pipespace: pipe mutex locked"));
 KASSERT(!(cpipe->pipe_state & PIPE_DIRECTW),
  ("pipespace: resize of direct writes not allowed"));
retry:
 cnt = cpipe->pipe_buffer.cnt;
 if (cnt > size)
  size = cnt;

 size = round_page(size);
 buffer = (caddr_t) vm_map_min(pipe_map);

 error = vm_map_find(pipe_map, ((void*)0), 0, (vm_offset_t *)&buffer, size, 0,
     VMFS_ANY_SPACE, VM_PROT_RW, VM_PROT_RW, 0);
 if (error != KERN_SUCCESS) {
  if ((cpipe->pipe_buffer.buffer == ((void*)0)) &&
   (size > SMALL_PIPE_SIZE)) {
   size = SMALL_PIPE_SIZE;
   pipefragretry++;
   goto retry;
  }
  if (cpipe->pipe_buffer.buffer == ((void*)0)) {
   pipeallocfail++;
   if (ppsratecheck(&lastfail, &curfail, 1))
    printf("kern.ipc.maxpipekva exceeded; see tuning(7)\n");
  } else {
   piperesizefail++;
  }
  return (ENOMEM);
 }


 if (cnt > 0) {
  if (cpipe->pipe_buffer.in <= cpipe->pipe_buffer.out) {
   firstseg = cpipe->pipe_buffer.size - cpipe->pipe_buffer.out;
   bcopy(&cpipe->pipe_buffer.buffer[cpipe->pipe_buffer.out],
    buffer, firstseg);
   if ((cnt - firstseg) > 0)
    bcopy(cpipe->pipe_buffer.buffer, &buffer[firstseg],
     cpipe->pipe_buffer.in);
  } else {
   bcopy(&cpipe->pipe_buffer.buffer[cpipe->pipe_buffer.out],
    buffer, cnt);
  }
 }
 pipe_free_kmem(cpipe);
 cpipe->pipe_buffer.buffer = buffer;
 cpipe->pipe_buffer.size = size;
 cpipe->pipe_buffer.in = cnt;
 cpipe->pipe_buffer.out = 0;
 cpipe->pipe_buffer.cnt = cnt;
 atomic_add_long(&amountpipekva, cpipe->pipe_buffer.size);
 return (0);
}
