
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vpo_nibble {int l; int h; } ;



__attribute__((used)) static int
nibble_inbyte_hook (void *p, char *ptr)
{
 struct vpo_nibble *s = (struct vpo_nibble *)p;


 *ptr = ((s->l >> 4) & 0x0f) + (s->h & 0xf0);

 return (0);
}
