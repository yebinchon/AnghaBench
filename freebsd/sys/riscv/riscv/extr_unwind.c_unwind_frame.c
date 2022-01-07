
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct unwind_state {int fp; int sp; int pc; } ;


 int INKERNEL (int) ;

int
unwind_frame(struct unwind_state *frame)
{
 uint64_t fp;

 fp = frame->fp;

 if (!INKERNEL(fp))
  return (-1);

 frame->sp = fp;
 frame->fp = *(uint64_t *)(fp - 16);
 frame->pc = *(uint64_t *)(fp - 8) - 4;

 return (0);
}
