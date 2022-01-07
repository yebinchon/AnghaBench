
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_sorting {int ignore_case; } ;
struct ref_format {char* format; int quote_style; int use_color; } ;
struct ref_filter {int ignore_case; char const** name_patterns; int match_as_path; int nr; int * items; int no_commit; int with_commit; int points_at; } ;
struct ref_array {int ignore_case; char const** name_patterns; int match_as_path; int nr; int * items; int no_commit; int with_commit; int points_at; } ;
struct option {int dummy; } ;
typedef int filter ;
typedef int array ;


 int FILTER_REFS_ALL ;
 int FILTER_REFS_INCLUDE_BROKEN ;
 scalar_t__ HAS_MULTI_BITS (int ) ;
 int N_ (char*) ;
 struct option OPT_BIT (char,char*,int *,int ,int ) ;
 struct option OPT_BOOL (int ,char*,int*,int ) ;
 struct option OPT_CALLBACK (int ,char*,int *,int ,int ,int ) ;
 struct option OPT_CONTAINS (int *,int ) ;
 struct option OPT_END () ;
 struct option OPT_GROUP (char*) ;
 struct option OPT_INTEGER (int ,char*,int*,int ) ;
 struct option OPT_MERGED (struct ref_filter*,int ) ;
 struct option OPT_NO_CONTAINS (int *,int ) ;
 struct option OPT_NO_MERGED (struct ref_filter*,int ) ;
 struct option OPT_REF_SORT (struct ref_sorting**) ;
 struct option OPT_STRING (int ,char*,char**,int ,int ) ;
 struct option OPT__COLOR (int *,int ) ;
 int QUOTE_PERL ;
 int QUOTE_PYTHON ;
 int QUOTE_SHELL ;
 int QUOTE_TCL ;
 struct ref_format REF_FORMAT_INIT ;
 int error (char*,...) ;
 int filter_refs (struct ref_filter*,struct ref_filter*,int) ;
 int for_each_ref_usage ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int memset (struct ref_filter*,int ,int) ;
 int parse_opt_object_name ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int ref_array_clear (struct ref_filter*) ;
 int ref_array_sort (struct ref_sorting*,struct ref_filter*) ;
 struct ref_sorting* ref_default_sorting () ;
 int show_ref_array_item (int ,struct ref_format*) ;
 int usage_with_options (int ,struct option*) ;
 scalar_t__ verify_ref_format (struct ref_format*) ;

int cmd_for_each_ref(int argc, const char **argv, const char *prefix)
{
 int i;
 struct ref_sorting *sorting = ((void*)0), **sorting_tail = &sorting;
 int maxcount = 0, icase = 0;
 struct ref_array array;
 struct ref_filter filter;
 struct ref_format format = REF_FORMAT_INIT;

 struct option opts[] = {
  OPT_BIT('s', "shell", &format.quote_style,
   N_("quote placeholders suitably for shells"), QUOTE_SHELL),
  OPT_BIT('p', "perl", &format.quote_style,
   N_("quote placeholders suitably for perl"), QUOTE_PERL),
  OPT_BIT(0 , "python", &format.quote_style,
   N_("quote placeholders suitably for python"), QUOTE_PYTHON),
  OPT_BIT(0 , "tcl", &format.quote_style,
   N_("quote placeholders suitably for Tcl"), QUOTE_TCL),

  OPT_GROUP(""),
  OPT_INTEGER( 0 , "count", &maxcount, N_("show only <n> matched refs")),
  OPT_STRING( 0 , "format", &format.format, N_("format"), N_("format to use for the output")),
  OPT__COLOR(&format.use_color, N_("respect format colors")),
  OPT_REF_SORT(sorting_tail),
  OPT_CALLBACK(0, "points-at", &filter.points_at,
        N_("object"), N_("print only refs which points at the given object"),
        parse_opt_object_name),
  OPT_MERGED(&filter, N_("print only refs that are merged")),
  OPT_NO_MERGED(&filter, N_("print only refs that are not merged")),
  OPT_CONTAINS(&filter.with_commit, N_("print only refs which contain the commit")),
  OPT_NO_CONTAINS(&filter.no_commit, N_("print only refs which don't contain the commit")),
  OPT_BOOL(0, "ignore-case", &icase, N_("sorting and filtering are case insensitive")),
  OPT_END(),
 };

 memset(&array, 0, sizeof(array));
 memset(&filter, 0, sizeof(filter));

 format.format = "%(objectname) %(objecttype)\t%(refname)";

 git_config(git_default_config, ((void*)0));

 parse_options(argc, argv, prefix, opts, for_each_ref_usage, 0);
 if (maxcount < 0) {
  error("invalid --count argument: `%d'", maxcount);
  usage_with_options(for_each_ref_usage, opts);
 }
 if (HAS_MULTI_BITS(format.quote_style)) {
  error("more than one quoting style?");
  usage_with_options(for_each_ref_usage, opts);
 }
 if (verify_ref_format(&format))
  usage_with_options(for_each_ref_usage, opts);

 if (!sorting)
  sorting = ref_default_sorting();
 sorting->ignore_case = icase;
 filter.ignore_case = icase;

 filter.name_patterns = argv;
 filter.match_as_path = 1;
 filter_refs(&array, &filter, FILTER_REFS_ALL | FILTER_REFS_INCLUDE_BROKEN);
 ref_array_sort(sorting, &array);

 if (!maxcount || array.nr < maxcount)
  maxcount = array.nr;
 for (i = 0; i < maxcount; i++)
  show_ref_array_item(array.items[i], &format);
 ref_array_clear(&array);
 return 0;
}
