
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct string_list_item {char* util; } ;
struct string_list {int dummy; } ;


 int REFNAME_ALLOW_ONELEVEL ;
 scalar_t__ check_refname_format (char*,int ) ;
 int free (char*) ;
 char* strchr (char*,char) ;
 struct string_list_item* string_list_append_nodup (struct string_list*,char*) ;
 char* xmemdupz (char const*,int) ;

__attribute__((used)) static void parse_one_symref_info(struct string_list *symref, const char *val, int len)
{
 char *sym, *target;
 struct string_list_item *item;

 if (!len)
  return;

 sym = xmemdupz(val, len);
 target = strchr(sym, ':');
 if (!target)

  goto reject;
 *(target++) = '\0';
 if (check_refname_format(sym, REFNAME_ALLOW_ONELEVEL) ||
     check_refname_format(target, REFNAME_ALLOW_ONELEVEL))

  goto reject;
 item = string_list_append_nodup(symref, sym);
 item->util = target;
 return;
reject:
 free(sym);
 return;
}
