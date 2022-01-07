
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pathspec {int dummy; } ;
struct object_id {int dummy; } ;


 int PATHSPEC_PREFER_FULL ;
 int PATHSPEC_PREFIX_ORIGIN ;
 int _ (char*) ;
 int die (int ) ;
 int get_oid_committish (char const*,struct object_id*) ;
 int get_oid_treeish (char const*,struct object_id*) ;
 int parse_pathspec (struct pathspec*,int ,int,char const*,char const**) ;
 scalar_t__ read_cache () ;
 int strcmp (char const*,char*) ;
 int verify_filename (char const*,char const*,int) ;
 int verify_non_filename (char const*,char const*) ;

__attribute__((used)) static void parse_args(struct pathspec *pathspec,
         const char **argv, const char *prefix,
         int patch_mode,
         const char **rev_ret)
{
 const char *rev = "HEAD";
 struct object_id unused;
 if (argv[0]) {
  if (!strcmp(argv[0], "--")) {
   argv++;
  } else if (argv[1] && !strcmp(argv[1], "--")) {
   rev = argv[0];
   argv += 2;
  }





  else if ((!argv[1] && !get_oid_committish(argv[0], &unused)) ||
    (argv[1] && !get_oid_treeish(argv[0], &unused))) {




   verify_non_filename(prefix, argv[0]);
   rev = *argv++;
  } else {

   verify_filename(prefix, argv[0], 1);
  }
 }
 *rev_ret = rev;

 if (read_cache() < 0)
  die(_("index file corrupt"));

 parse_pathspec(pathspec, 0,
         PATHSPEC_PREFER_FULL |
         (patch_mode ? PATHSPEC_PREFIX_ORIGIN : 0),
         prefix, argv);
}
