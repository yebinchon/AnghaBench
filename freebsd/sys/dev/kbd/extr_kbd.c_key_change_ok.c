
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct keyent_t {scalar_t__* map; int spcl; scalar_t__ flgs; } ;


 int NUM_STATES ;
 int PRIV_KEYBOARD ;
 int RESTRICTED_KEY (struct keyent_t*,int) ;
 int keymap_restrict_change ;
 int priv_check (struct thread*,int ) ;

__attribute__((used)) static int
key_change_ok(struct keyent_t *oldkey, struct keyent_t *newkey, struct thread *td)
{
 int i;


 if (keymap_restrict_change <= 0)
  return (0);


 if (keymap_restrict_change >= 2) {
  for (i = 0; i < NUM_STATES; i++)
   if (oldkey->map[i] != newkey->map[i])
    return priv_check(td, PRIV_KEYBOARD);
  if (oldkey->spcl != newkey->spcl)
   return priv_check(td, PRIV_KEYBOARD);
  if (oldkey->flgs != newkey->flgs)
   return priv_check(td, PRIV_KEYBOARD);
  return (0);
 }


 for (i = 0; i < NUM_STATES; i++) {




  if (!RESTRICTED_KEY(oldkey, i) && !RESTRICTED_KEY(newkey, i))
   continue;
  if ((oldkey->spcl & (0x80 >> i)) == (newkey->spcl & (0x80 >> i))
      && oldkey->map[i] == newkey->map[i])
   continue;
  return priv_check(td, PRIV_KEYBOARD);
 }

 return (0);
}
