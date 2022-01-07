
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keynum; int flen; int keydef; } ;
typedef TYPE_1__ fkeyarg_t ;


 int NUM_FKEYS ;
 int SETFKEY ;
 int * fkey_table ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 int strcpy (int ,int ) ;
 int strlen (int ) ;
 int warn (char*) ;

__attribute__((used)) static void
load_default_functionkeys(void)
{
 fkeyarg_t fkey;
 int i;

 for (i=0; i<NUM_FKEYS; i++) {
  fkey.keynum = i;
  strcpy(fkey.keydef, fkey_table[i]);
  fkey.flen = strlen(fkey_table[i]);
  if (ioctl(0, SETFKEY, &fkey) < 0)
   warn("setting function key");
 }
}
