
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct string_list {scalar_t__ nr; int items; } ;
struct TYPE_5__ {int nr; TYPE_1__* items; } ;
struct show_info {struct string_list* list; struct string_list push; scalar_t__ width2; scalar_t__ width; TYPE_3__* remote; scalar_t__ any_rebase; struct string_list stale; struct string_list tracked; struct string_list new_refs; TYPE_2__ heads; struct show_info* states; } ;
struct ref_states {struct string_list* list; struct string_list push; scalar_t__ width2; scalar_t__ width; TYPE_3__* remote; scalar_t__ any_rebase; struct string_list stale; struct string_list tracked; struct string_list new_refs; TYPE_2__ heads; struct ref_states* states; } ;
struct option {int dummy; } ;
typedef int states ;
typedef int info ;
struct TYPE_6__ {int url_nr; char** url; int pushurl_nr; char** pushurl; scalar_t__ mirror; } ;
struct TYPE_4__ {char* string; } ;


 int GET_HEAD_NAMES ;
 int GET_PUSH_REF_STATES ;
 int GET_REF_STATES ;
 int N_ (char*) ;
 struct option OPT_BOOL (char,int *,int*,int ) ;
 struct option OPT_END () ;
 int QSORT (int ,scalar_t__,int ) ;
 char* Q_ (char*,char*,scalar_t__) ;
 struct string_list STRING_LIST_INIT_NODUP ;
 char* _ (char*) ;
 int add_local_to_show_info ;
 int add_push_to_show_info ;
 int add_remote_to_show_info ;
 struct string_list branch_list ;
 int builtin_remote_show_usage ;
 int cmp_string_with_push ;
 int for_each_string_list (struct string_list*,int ,struct show_info*) ;
 int free_remote_ref_states (struct show_info*) ;
 int get_remote_ref_states (char const*,struct show_info*,int) ;
 int memset (struct show_info*,int ,int) ;
 int parse_options (int,char const**,int *,struct option*,int ,int ) ;
 int printf (char*,...) ;
 int printf_ln (char*,...) ;
 int show_all () ;
 int show_local_info_item ;
 int show_push_info_item ;
 int show_remote_info_item ;
 int string_list_clear (struct string_list*,int ) ;

__attribute__((used)) static int show(int argc, const char **argv)
{
 int no_query = 0, result = 0, query_flag = 0;
 struct option options[] = {
  OPT_BOOL('n', ((void*)0), &no_query, N_("do not query remotes")),
  OPT_END()
 };
 struct ref_states states;
 struct string_list info_list = STRING_LIST_INIT_NODUP;
 struct show_info info;

 argc = parse_options(argc, argv, ((void*)0), options, builtin_remote_show_usage,
        0);

 if (argc < 1)
  return show_all();

 if (!no_query)
  query_flag = (GET_REF_STATES | GET_HEAD_NAMES | GET_PUSH_REF_STATES);

 memset(&states, 0, sizeof(states));
 memset(&info, 0, sizeof(info));
 info.states = &states;
 info.list = &info_list;
 for (; argc; argc--, argv++) {
  int i;
  const char **url;
  int url_nr;

  get_remote_ref_states(*argv, &states, query_flag);

  printf_ln(_("* remote %s"), *argv);
  printf_ln(_("  Fetch URL: %s"), states.remote->url_nr > 0 ?
         states.remote->url[0] : _("(no URL)"));
  if (states.remote->pushurl_nr) {
   url = states.remote->pushurl;
   url_nr = states.remote->pushurl_nr;
  } else {
   url = states.remote->url;
   url_nr = states.remote->url_nr;
  }
  for (i = 0; i < url_nr; i++)





   printf_ln(_("  Push  URL: %s"), url[i]);
  if (!i)
   printf_ln(_("  Push  URL: %s"), _("(no URL)"));
  if (no_query)
   printf_ln(_("  HEAD branch: %s"), _("(not queried)"));
  else if (!states.heads.nr)
   printf_ln(_("  HEAD branch: %s"), _("(unknown)"));
  else if (states.heads.nr == 1)
   printf_ln(_("  HEAD branch: %s"), states.heads.items[0].string);
  else {
   printf(_("  HEAD branch (remote HEAD is ambiguous,"
     " may be one of the following):\n"));
   for (i = 0; i < states.heads.nr; i++)
    printf("    %s\n", states.heads.items[i].string);
  }


  info.width = 0;
  for_each_string_list(&states.new_refs, add_remote_to_show_info, &info);
  for_each_string_list(&states.tracked, add_remote_to_show_info, &info);
  for_each_string_list(&states.stale, add_remote_to_show_info, &info);
  if (info.list->nr)
   printf_ln(Q_("  Remote branch:%s",
         "  Remote branches:%s",
         info.list->nr),
      no_query ? _(" (status not queried)") : "");
  for_each_string_list(info.list, show_remote_info_item, &info);
  string_list_clear(info.list, 0);


  info.width = 0;
  info.any_rebase = 0;
  for_each_string_list(&branch_list, add_local_to_show_info, &info);
  if (info.list->nr)
   printf_ln(Q_("  Local branch configured for 'git pull':",
         "  Local branches configured for 'git pull':",
         info.list->nr));
  for_each_string_list(info.list, show_local_info_item, &info);
  string_list_clear(info.list, 0);


  if (states.remote->mirror)
   printf_ln(_("  Local refs will be mirrored by 'git push'"));

  info.width = info.width2 = 0;
  for_each_string_list(&states.push, add_push_to_show_info, &info);
  QSORT(info.list->items, info.list->nr, cmp_string_with_push);
  if (info.list->nr)
   printf_ln(Q_("  Local ref configured for 'git push'%s:",
         "  Local refs configured for 'git push'%s:",
         info.list->nr),
      no_query ? _(" (status not queried)") : "");
  for_each_string_list(info.list, show_push_info_item, &info);
  string_list_clear(info.list, 0);

  free_remote_ref_states(&states);
 }

 return result;
}
