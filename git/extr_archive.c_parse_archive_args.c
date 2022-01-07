
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {int dummy; } ;
struct archiver_args {int compression_level; int verbose; char const* base; int worktree_attributes; int baselen; } ;
struct archiver {int flags; } ;
struct TYPE_2__ {int flags; char* name; } ;


 int ARCHIVER_REMOTE ;
 int ARCHIVER_WANT_COMPRESSION_LEVELS ;
 int N_ (char*) ;
 struct option OPT_BOOL (char,char*,int*,int ) ;
 struct option OPT_END () ;
 struct option OPT_GROUP (char*) ;
 struct option OPT_STRING (char,char*,char const**,int ,int ) ;
 struct option OPT__COMPR (char,int*,int ,int) ;
 struct option OPT__COMPR_HIDDEN (char,int*,int) ;
 struct option OPT__VERBOSE (int*,int ) ;
 int Z_DEFAULT_COMPRESSION ;
 int _ (char*) ;
 char* archive_format_from_filename (char const*) ;
 int archive_usage ;
 TYPE_1__** archivers ;
 int die (int ,...) ;
 int exit (int ) ;
 struct archiver* lookup_archiver (char const*) ;
 int nr_archivers ;
 int parse_options (int,char const**,int *,struct option*,int ,int ) ;
 int printf (char*,char*) ;
 int strlen (char const*) ;
 int usage_with_options (int ,struct option*) ;

__attribute__((used)) static int parse_archive_args(int argc, const char **argv,
  const struct archiver **ar, struct archiver_args *args,
  const char *name_hint, int is_remote)
{
 const char *format = ((void*)0);
 const char *base = ((void*)0);
 const char *remote = ((void*)0);
 const char *exec = ((void*)0);
 const char *output = ((void*)0);
 int compression_level = -1;
 int verbose = 0;
 int i;
 int list = 0;
 int worktree_attributes = 0;
 struct option opts[] = {
  OPT_GROUP(""),
  OPT_STRING(0, "format", &format, N_("fmt"), N_("archive format")),
  OPT_STRING(0, "prefix", &base, N_("prefix"),
   N_("prepend prefix to each pathname in the archive")),
  OPT_STRING('o', "output", &output, N_("file"),
   N_("write the archive to this file")),
  OPT_BOOL(0, "worktree-attributes", &worktree_attributes,
   N_("read .gitattributes in working directory")),
  OPT__VERBOSE(&verbose, N_("report archived files on stderr")),
  OPT__COMPR('0', &compression_level, N_("store only"), 0),
  OPT__COMPR('1', &compression_level, N_("compress faster"), 1),
  OPT__COMPR_HIDDEN('2', &compression_level, 2),
  OPT__COMPR_HIDDEN('3', &compression_level, 3),
  OPT__COMPR_HIDDEN('4', &compression_level, 4),
  OPT__COMPR_HIDDEN('5', &compression_level, 5),
  OPT__COMPR_HIDDEN('6', &compression_level, 6),
  OPT__COMPR_HIDDEN('7', &compression_level, 7),
  OPT__COMPR_HIDDEN('8', &compression_level, 8),
  OPT__COMPR('9', &compression_level, N_("compress better"), 9),
  OPT_GROUP(""),
  OPT_BOOL('l', "list", &list,
   N_("list supported archive formats")),
  OPT_GROUP(""),
  OPT_STRING(0, "remote", &remote, N_("repo"),
   N_("retrieve the archive from remote repository <repo>")),
  OPT_STRING(0, "exec", &exec, N_("command"),
   N_("path to the remote git-upload-archive command")),
  OPT_END()
 };

 argc = parse_options(argc, argv, ((void*)0), opts, archive_usage, 0);

 if (remote)
  die(_("Unexpected option --remote"));
 if (exec)
  die(_("Option --exec can only be used together with --remote"));
 if (output)
  die(_("Unexpected option --output"));

 if (!base)
  base = "";

 if (list) {
  for (i = 0; i < nr_archivers; i++)
   if (!is_remote || archivers[i]->flags & ARCHIVER_REMOTE)
    printf("%s\n", archivers[i]->name);
  exit(0);
 }

 if (!format && name_hint)
  format = archive_format_from_filename(name_hint);
 if (!format)
  format = "tar";


 if (argc < 1)
  usage_with_options(archive_usage, opts);
 *ar = lookup_archiver(format);
 if (!*ar || (is_remote && !((*ar)->flags & ARCHIVER_REMOTE)))
  die(_("Unknown archive format '%s'"), format);

 args->compression_level = Z_DEFAULT_COMPRESSION;
 if (compression_level != -1) {
  if ((*ar)->flags & ARCHIVER_WANT_COMPRESSION_LEVELS)
   args->compression_level = compression_level;
  else {
   die(_("Argument not supported for format '%s': -%d"),
     format, compression_level);
  }
 }
 args->verbose = verbose;
 args->base = base;
 args->baselen = strlen(base);
 args->worktree_attributes = worktree_attributes;

 return argc;
}
