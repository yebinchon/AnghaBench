
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct thread {int dummy; } ;
struct TYPE_4__ {int * key; } ;
typedef TYPE_1__ keymap_t ;


 int NUM_KEYS ;
 int key_change_ok (int *,int *,struct thread*) ;

__attribute__((used)) static int
keymap_change_ok(keymap_t *oldmap, keymap_t *newmap, struct thread *td)
{
 int keycode, error;

 for (keycode = 0; keycode < NUM_KEYS; keycode++) {
  if ((error = key_change_ok(&oldmap->key[keycode],
      &newmap->key[keycode], td)) != 0)
   return (error);
 }
 return (0);
}
