
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 struct option OPT_END () ;
 int _ (char*) ;
 int default_notes_ref () ;
 int error (int ) ;
 int git_notes_get_ref_usage ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int puts (int ) ;
 int usage_with_options (int ,struct option*) ;

__attribute__((used)) static int get_ref(int argc, const char **argv, const char *prefix)
{
 struct option options[] = { OPT_END() };
 argc = parse_options(argc, argv, prefix, options,
        git_notes_get_ref_usage, 0);

 if (argc) {
  error(_("too many parameters"));
  usage_with_options(git_notes_get_ref_usage, options);
 }

 puts(default_notes_ref());
 return 0;
}
