
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref_format {scalar_t__ format; } ;
struct option {int dummy; } ;
struct object_id {int dummy; } ;


 unsigned int GPG_VERIFY_OMIT_STATUS ;
 int GPG_VERIFY_RAW ;
 unsigned int GPG_VERIFY_VERBOSE ;
 int N_ (char*) ;
 struct option const OPT_BIT (int ,char*,unsigned int*,int ,int ) ;
 struct option const OPT_END () ;
 struct option const OPT_STRING (int ,char*,scalar_t__*,int ,int ) ;
 struct option const OPT__VERBOSE (int*,int ) ;
 int PARSE_OPT_KEEP_ARGV0 ;
 struct ref_format REF_FORMAT_INIT ;
 int error (char*,char const*) ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int git_config (int ,int *) ;
 int git_verify_tag_config ;
 scalar_t__ gpg_verify_tag (struct object_id*,char const*,unsigned int) ;
 int parse_options (int,char const**,char const*,struct option const*,int ,int ) ;
 int pretty_print_ref (char const*,struct object_id*,struct ref_format*) ;
 int usage_with_options (int ,struct option const*) ;
 scalar_t__ verify_ref_format (struct ref_format*) ;
 int verify_tag_usage ;

int cmd_verify_tag(int argc, const char **argv, const char *prefix)
{
 int i = 1, verbose = 0, had_error = 0;
 unsigned flags = 0;
 struct ref_format format = REF_FORMAT_INIT;
 const struct option verify_tag_options[] = {
  OPT__VERBOSE(&verbose, N_("print tag contents")),
  OPT_BIT(0, "raw", &flags, N_("print raw gpg status output"), GPG_VERIFY_RAW),
  OPT_STRING(0, "format", &format.format, N_("format"), N_("format to use for the output")),
  OPT_END()
 };

 git_config(git_verify_tag_config, ((void*)0));

 argc = parse_options(argc, argv, prefix, verify_tag_options,
        verify_tag_usage, PARSE_OPT_KEEP_ARGV0);
 if (argc <= i)
  usage_with_options(verify_tag_usage, verify_tag_options);

 if (verbose)
  flags |= GPG_VERIFY_VERBOSE;

 if (format.format) {
  if (verify_ref_format(&format))
   usage_with_options(verify_tag_usage,
        verify_tag_options);
  flags |= GPG_VERIFY_OMIT_STATUS;
 }

 while (i < argc) {
  struct object_id oid;
  const char *name = argv[i++];

  if (get_oid(name, &oid)) {
   had_error = !!error("tag '%s' not found.", name);
   continue;
  }

  if (gpg_verify_tag(&oid, name, flags)) {
   had_error = 1;
   continue;
  }

  if (format.format)
   pretty_print_ref(name, &oid, &format);
 }
 return had_error;
}
