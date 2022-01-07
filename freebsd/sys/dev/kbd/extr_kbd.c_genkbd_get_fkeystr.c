
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_5__ {int kb_fkeytab_size; TYPE_1__* kb_fkeytab; } ;
typedef TYPE_2__ keyboard_t ;
struct TYPE_4__ {size_t len; int * str; } ;


 scalar_t__ F_FN ;

u_char *
genkbd_get_fkeystr(keyboard_t *kbd, int fkey, size_t *len)
{
 if (kbd == ((void*)0))
  return (((void*)0));
 fkey -= F_FN;
 if (fkey > kbd->kb_fkeytab_size)
  return (((void*)0));
 *len = kbd->kb_fkeytab[fkey].len;
 return (kbd->kb_fkeytab[fkey].str);
}
