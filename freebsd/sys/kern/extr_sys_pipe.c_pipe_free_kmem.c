
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ vm_offset_t ;
struct TYPE_3__ {scalar_t__ npages; scalar_t__ pos; scalar_t__ cnt; } ;
struct TYPE_4__ {int * buffer; scalar_t__ size; } ;
struct pipe {TYPE_1__ pipe_map; TYPE_2__ pipe_buffer; } ;


 int KASSERT (int,char*) ;
 int PIPE_MTX (struct pipe*) ;
 int amountpipekva ;
 int atomic_subtract_long (int *,scalar_t__) ;
 int mtx_owned (int ) ;
 int pipe_map ;
 int vm_map_remove (int ,scalar_t__,scalar_t__) ;

__attribute__((used)) static void
pipe_free_kmem(struct pipe *cpipe)
{

 KASSERT(!mtx_owned(PIPE_MTX(cpipe)),
     ("pipe_free_kmem: pipe mutex locked"));

 if (cpipe->pipe_buffer.buffer != ((void*)0)) {
  atomic_subtract_long(&amountpipekva, cpipe->pipe_buffer.size);
  vm_map_remove(pipe_map,
      (vm_offset_t)cpipe->pipe_buffer.buffer,
      (vm_offset_t)cpipe->pipe_buffer.buffer + cpipe->pipe_buffer.size);
  cpipe->pipe_buffer.buffer = ((void*)0);
 }

 {
  cpipe->pipe_map.cnt = 0;
  cpipe->pipe_map.pos = 0;
  cpipe->pipe_map.npages = 0;
 }

}
