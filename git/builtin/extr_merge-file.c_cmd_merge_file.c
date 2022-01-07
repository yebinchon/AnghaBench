
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_13__ {int member_0; } ;
struct TYPE_14__ {char const* ancestor; char const* file1; char const* file2; scalar_t__ style; scalar_t__ favor; int level; int marker_size; TYPE_1__ member_0; } ;
typedef TYPE_2__ xmparam_t ;
struct option {int dummy; } ;
struct TYPE_15__ {scalar_t__ size; char* ptr; } ;
typedef TYPE_3__ mmfile_t ;
struct TYPE_16__ {char* ptr; scalar_t__ size; int member_1; int * member_0; } ;
typedef TYPE_4__ mmbuffer_t ;
struct TYPE_12__ {scalar_t__ have_repository; } ;
typedef int FILE ;


 scalar_t__ MAX_XDIFF_SIZE ;
 int N_ (char*) ;
 struct option OPT_BOOL (char,char*,int*,int ) ;
 struct option OPT_CALLBACK (char,int *,char const**,int ,int ,int *) ;
 struct option OPT_END () ;
 struct option OPT_INTEGER (int ,char*,int *,int ) ;
 struct option OPT_SET_INT (int ,char*,scalar_t__*,int ,int ) ;
 struct option OPT__QUIET (int*,int ) ;
 int XDL_MERGE_DIFF3 ;
 int XDL_MERGE_FAVOR_OURS ;
 int XDL_MERGE_FAVOR_THEIRS ;
 int XDL_MERGE_FAVOR_UNION ;
 int XDL_MERGE_ZEALOUS_ALNUM ;
 scalar_t__ buffer_is_binary (char*,scalar_t__) ;
 int error (char*,char const*) ;
 int error_errno (char*,...) ;
 scalar_t__ fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (char*) ;
 int freopen (char*,char*,int ) ;
 int fwrite (char*,scalar_t__,int,int *) ;
 int git_config (int ,int *) ;
 int git_xmerge_config ;
 scalar_t__ git_xmerge_style ;
 int label_cb ;
 int merge_file_usage ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 char* prefix_filename (char const*,char const*) ;
 int read_mmfile (TYPE_3__*,char*) ;
 TYPE_10__* startup_info ;
 int stderr ;
 int * stdout ;
 int usage_with_options (int ,struct option*) ;
 int xdl_merge (TYPE_3__*,TYPE_3__*,TYPE_3__*,TYPE_2__*,TYPE_4__*) ;

int cmd_merge_file(int argc, const char **argv, const char *prefix)
{
 const char *names[3] = { ((void*)0), ((void*)0), ((void*)0) };
 mmfile_t mmfs[3];
 mmbuffer_t result = {((void*)0), 0};
 xmparam_t xmp = {{0}};
 int ret = 0, i = 0, to_stdout = 0;
 int quiet = 0;
 struct option options[] = {
  OPT_BOOL('p', "stdout", &to_stdout, N_("send results to standard output")),
  OPT_SET_INT(0, "diff3", &xmp.style, N_("use a diff3 based merge"), XDL_MERGE_DIFF3),
  OPT_SET_INT(0, "ours", &xmp.favor, N_("for conflicts, use our version"),
       XDL_MERGE_FAVOR_OURS),
  OPT_SET_INT(0, "theirs", &xmp.favor, N_("for conflicts, use their version"),
       XDL_MERGE_FAVOR_THEIRS),
  OPT_SET_INT(0, "union", &xmp.favor, N_("for conflicts, use a union version"),
       XDL_MERGE_FAVOR_UNION),
  OPT_INTEGER(0, "marker-size", &xmp.marker_size,
       N_("for conflicts, use this marker size")),
  OPT__QUIET(&quiet, N_("do not warn about conflicts")),
  OPT_CALLBACK('L', ((void*)0), names, N_("name"),
        N_("set labels for file1/orig-file/file2"), &label_cb),
  OPT_END(),
 };

 xmp.level = XDL_MERGE_ZEALOUS_ALNUM;
 xmp.style = 0;
 xmp.favor = 0;

 if (startup_info->have_repository) {

  git_config(git_xmerge_config, ((void*)0));
  if (0 <= git_xmerge_style)
   xmp.style = git_xmerge_style;
 }

 argc = parse_options(argc, argv, prefix, options, merge_file_usage, 0);
 if (argc != 3)
  usage_with_options(merge_file_usage, options);
 if (quiet) {
  if (!freopen("/dev/null", "w", stderr))
   return error_errno("failed to redirect stderr to /dev/null");
 }

 for (i = 0; i < 3; i++) {
  char *fname;
  int ret;

  if (!names[i])
   names[i] = argv[i];

  fname = prefix_filename(prefix, argv[i]);
  ret = read_mmfile(mmfs + i, fname);
  free(fname);
  if (ret)
   return -1;

  if (mmfs[i].size > MAX_XDIFF_SIZE ||
      buffer_is_binary(mmfs[i].ptr, mmfs[i].size))
   return error("Cannot merge binary files: %s",
     argv[i]);
 }

 xmp.ancestor = names[1];
 xmp.file1 = names[0];
 xmp.file2 = names[2];
 ret = xdl_merge(mmfs + 1, mmfs + 0, mmfs + 2, &xmp, &result);

 for (i = 0; i < 3; i++)
  free(mmfs[i].ptr);

 if (ret >= 0) {
  const char *filename = argv[0];
  char *fpath = prefix_filename(prefix, argv[0]);
  FILE *f = to_stdout ? stdout : fopen(fpath, "wb");

  if (!f)
   ret = error_errno("Could not open %s for writing",
       filename);
  else if (result.size &&
    fwrite(result.ptr, result.size, 1, f) != 1)
   ret = error_errno("Could not write to %s", filename);
  else if (fclose(f))
   ret = error_errno("Could not close %s", filename);
  free(result.ptr);
  free(fpath);
 }

 if (ret > 127)
  ret = 127;

 return ret;
}
