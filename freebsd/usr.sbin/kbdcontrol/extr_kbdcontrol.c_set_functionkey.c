
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int keynum; int keydef; int flen; } ;
typedef TYPE_1__ fkeyarg_t ;


 int MAXFK ;
 int NUM_FKEYS ;
 int SETFKEY ;
 int atoi (char*) ;
 scalar_t__ ioctl (int ,int ,TYPE_1__*) ;
 int load_default_functionkeys () ;
 int strcmp (char*,char*) ;
 int strlen (char*) ;
 int strncpy (int ,char*,int ) ;
 int warn (char*) ;
 int warnx (char*,int,...) ;

__attribute__((used)) static void
set_functionkey(char *keynumstr, char *string)
{
 fkeyarg_t fkey;

 if (!strcmp(keynumstr, "load") && !strcmp(string, "default")) {
  load_default_functionkeys();
  return;
 }
 fkey.keynum = atoi(keynumstr);
 if (fkey.keynum < 1 || fkey.keynum > NUM_FKEYS) {
  warnx("function key number must be between 1 and %d",
   NUM_FKEYS);
  return;
 }
 if ((fkey.flen = strlen(string)) > MAXFK) {
  warnx("function key string too long (%d > %d)",
   fkey.flen, MAXFK);
  return;
 }
 strncpy(fkey.keydef, string, MAXFK);
 fkey.keynum -= 1;
 if (ioctl(0, SETFKEY, &fkey) < 0)
  warn("setting function key");
}
