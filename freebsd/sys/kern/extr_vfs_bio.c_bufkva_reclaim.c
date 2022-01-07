
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmem_t ;


 int * bdomain ;
 int buf_domains ;
 scalar_t__ buf_recycle (int *,int) ;

__attribute__((used)) static void
bufkva_reclaim(vmem_t *vmem, int flags)
{
 bool done;
 int q;
 int i;

 done = 0;
 for (i = 0; i < 5; i++) {
  for (q = 0; q < buf_domains; q++)
   if (buf_recycle(&bdomain[q], 1) != 0)
    done = 1;
  if (done)
   break;
 }
 return;
}
