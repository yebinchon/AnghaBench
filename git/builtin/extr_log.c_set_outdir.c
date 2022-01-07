
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_absolute_path (char const*) ;
 int outdir_offset ;
 char const* prefix_filename (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static const char *set_outdir(const char *prefix, const char *output_directory)
{
 if (output_directory && is_absolute_path(output_directory))
  return output_directory;

 if (!prefix || !*prefix) {
  if (output_directory)
   return output_directory;

  outdir_offset = 2;
  return "./";
 }

 outdir_offset = strlen(prefix);
 if (!output_directory)
  return prefix;

 return prefix_filename(prefix, output_directory);
}
