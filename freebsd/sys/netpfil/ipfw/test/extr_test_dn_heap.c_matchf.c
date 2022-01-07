
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x {char* buf; } ;


 int DNHT_KEY_IS_OBJ ;
 scalar_t__ strcmp (char*,char*) ;

int matchf(void *obj, uintptr_t key, int flags, void *arg)
{
 char *s = (flags & DNHT_KEY_IS_OBJ) ?
  ((struct x *)key)->buf : (char *)key;
 return (strcmp(((struct x *)obj)->buf, s) == 0);
}
