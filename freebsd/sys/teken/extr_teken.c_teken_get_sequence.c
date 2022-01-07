
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int t_stateflags; } ;
typedef TYPE_1__ teken_t ;


 int TS_CONS25 ;
 int TS_CONS25KEYS ;
 int TS_CURSORKEYS ;
 char const** special_strings_ckeys ;
 char const** special_strings_cons25 ;
 char const** special_strings_normal ;

const char *
teken_get_sequence(const teken_t *t, unsigned int k)
{


 if ((t->t_stateflags & (TS_CONS25 | TS_CONS25KEYS)) ==
     (TS_CONS25 | TS_CONS25KEYS))
  return (((void*)0));
 if (t->t_stateflags & TS_CONS25 &&
     k < sizeof special_strings_cons25 / sizeof(char *))
  return (special_strings_cons25[k]);


 if (t->t_stateflags & TS_CURSORKEYS &&
     k < sizeof special_strings_ckeys / sizeof(char *))
  return (special_strings_ckeys[k]);


 if (k < sizeof special_strings_normal / sizeof(char *))
  return (special_strings_normal[k]);

 return (((void*)0));
}
