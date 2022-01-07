
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct copyin_arg0 {int len; scalar_t__ kc; } ;


 int bcopy (void*,void*,int ) ;

__attribute__((used)) static void
copyin_slow0(vm_offset_t kva, void *arg)
{
 struct copyin_arg0 *ca;

 ca = arg;
 bcopy((void *)kva, (void *)ca->kc, ca->len);
}
