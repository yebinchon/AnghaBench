
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct git_config_source {scalar_t__ blob; scalar_t__ file; scalar_t__ use_stdin; } ;
struct config_options {scalar_t__ respect_includes; } ;
struct config_include_data {struct config_options const* opts; void* data; int fn; } ;
typedef int config_fn_t ;


 struct config_include_data CONFIG_INCLUDE_INIT ;
 int do_git_config_sequence (struct config_options const*,int ,void*) ;
 int git_config_from_blob_ref (int ,scalar_t__,void*) ;
 int git_config_from_file (int ,scalar_t__,void*) ;
 int git_config_from_stdin (int ,void*) ;
 int git_config_include ;

int config_with_options(config_fn_t fn, void *data,
   struct git_config_source *config_source,
   const struct config_options *opts)
{
 struct config_include_data inc = CONFIG_INCLUDE_INIT;

 if (opts->respect_includes) {
  inc.fn = fn;
  inc.data = data;
  inc.opts = opts;
  fn = git_config_include;
  data = &inc;
 }





 if (config_source && config_source->use_stdin)
  return git_config_from_stdin(fn, data);
 else if (config_source && config_source->file)
  return git_config_from_file(fn, config_source->file, data);
 else if (config_source && config_source->blob)
  return git_config_from_blob_ref(fn, config_source->blob, data);

 return do_git_config_sequence(opts, fn, data);
}
