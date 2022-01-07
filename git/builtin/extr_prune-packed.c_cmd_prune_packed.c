
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int N_ (char*) ;
 struct option const OPT_BIT (char,char*,int*,int ,int ) ;
 struct option const OPT_END () ;
 struct option const OPT_NEGBIT (char,char*,int*,int ,int) ;
 int PRUNE_PACKED_DRY_RUN ;
 int PRUNE_PACKED_VERBOSE ;
 int _ (char*) ;
 scalar_t__ isatty (int) ;
 int parse_options (int,char const**,char const*,struct option const*,int ,int ) ;
 int prune_packed_objects (int) ;
 int prune_packed_usage ;
 int usage_msg_opt (int ,int ,struct option const*) ;

int cmd_prune_packed(int argc, const char **argv, const char *prefix)
{
 int opts = isatty(2) ? PRUNE_PACKED_VERBOSE : 0;
 const struct option prune_packed_options[] = {
  OPT_BIT('n', "dry-run", &opts, N_("dry run"),
   PRUNE_PACKED_DRY_RUN),
  OPT_NEGBIT('q', "quiet", &opts, N_("be quiet"),
      PRUNE_PACKED_VERBOSE),
  OPT_END()
 };

 argc = parse_options(argc, argv, prefix, prune_packed_options,
        prune_packed_usage, 0);

 if (argc > 0)
  usage_msg_opt(_("too many arguments"),
         prune_packed_usage,
         prune_packed_options);

 prune_packed_objects(opts);
 return 0;
}
