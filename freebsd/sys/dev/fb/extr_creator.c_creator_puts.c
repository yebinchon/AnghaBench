
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef int video_adapter_t ;
typedef int u_int16_t ;


 int vidd_putc (int *,scalar_t__,int,int) ;

__attribute__((used)) static int
creator_puts(video_adapter_t *adp, vm_offset_t off, u_int16_t *s, int len)
{
 int i;

 for (i = 0; i < len; i++) {
  vidd_putc(adp, off + i, s[i] & 0xff, (s[i] & 0xff00) >> 8);
 }

 return (0);
}
