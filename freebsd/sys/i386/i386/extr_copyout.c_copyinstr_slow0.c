
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
struct copyinstr_arg0 {scalar_t__ alen; scalar_t__ len; int end; scalar_t__ kc; } ;


 int MPASS (int) ;

__attribute__((used)) static void
copyinstr_slow0(vm_offset_t kva, void *arg)
{
 struct copyinstr_arg0 *ca;
 char c;

 ca = arg;
 MPASS(ca->alen == 0 && ca->len > 0 && !ca->end);
 while (ca->alen < ca->len && !ca->end) {
  c = *(char *)(kva + ca->alen);
  *(char *)ca->kc = c;
  ca->alen++;
  ca->kc++;
  if (c == '\0')
   ca->end = 1;
 }
}
