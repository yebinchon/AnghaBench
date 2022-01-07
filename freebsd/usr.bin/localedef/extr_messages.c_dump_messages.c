
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* yesstr; char* nostr; char* yesexpr; char* noexpr; } ;
typedef int FILE ;


 scalar_t__ EOF ;
 int close_category (int *) ;
 TYPE_1__ msgs ;
 int * open_category () ;
 scalar_t__ putl_category (char*,int *) ;
 char* strchr (char*,char) ;
 int warn (char*) ;

void
dump_messages(void)
{
 FILE *f;
 char *ptr;

 if (msgs.yesstr == ((void*)0)) {
  warn("missing field 'yesstr'");
  msgs.yesstr = "";
 }
 if (msgs.nostr == ((void*)0)) {
  warn("missing field 'nostr'");
  msgs.nostr = "";
 }





 if ((ptr = strchr(msgs.yesstr, ':')) != ((void*)0))
  *ptr = 0;
 if ((ptr = strchr(msgs.nostr, ':')) != ((void*)0))
  *ptr = 0;

 if ((f = open_category()) == ((void*)0)) {
  return;
 }

 if ((putl_category(msgs.yesexpr, f) == EOF) ||
     (putl_category(msgs.noexpr, f) == EOF) ||
     (putl_category(msgs.yesstr, f) == EOF) ||
     (putl_category(msgs.nostr, f) == EOF)) {
  return;
 }
 close_category(f);
}
