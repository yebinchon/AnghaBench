
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_5__ {scalar_t__ len; int str; } ;
typedef TYPE_1__ fkeytab_t ;
struct TYPE_6__ {scalar_t__ flen; int keydef; } ;
typedef TYPE_2__ fkeyarg_t ;


 int PRIV_KEYBOARD ;
 scalar_t__ bcmp (int ,int ,scalar_t__) ;
 int keymap_restrict_change ;
 int priv_check (struct thread*,int ) ;

__attribute__((used)) static int
fkey_change_ok(fkeytab_t *oldkey, fkeyarg_t *newkey, struct thread *td)
{
 if (keymap_restrict_change <= 3)
  return (0);

 if (oldkey->len != newkey->flen ||
     bcmp(oldkey->str, newkey->keydef, oldkey->len) != 0)
  return priv_check(td, PRIV_KEYBOARD);

 return (0);
}
