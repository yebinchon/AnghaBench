
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {scalar_t__ len; char* buf; } ;
struct stat {int st_mode; } ;
struct lock_file {int dummy; } ;
struct config_store_data {void* baselen; } ;
typedef int store ;
typedef int buf ;
typedef int FILE ;


 struct lock_file LOCK_INIT ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 scalar_t__ chmod (char const*,int) ;
 scalar_t__ commit_lock_file (struct lock_file*) ;
 int config_store_data_clear (struct config_store_data*) ;
 int error (int ,char const*) ;
 int error_errno (int ,char const*) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int fileno (int *) ;
 int * fopen (char const*,char*) ;
 int free (char*) ;
 int fstat (int ,struct stat*) ;
 char const* get_lock_file_path (struct lock_file*) ;
 char* git_pathdup (char*) ;
 int hold_lock_file_for_update (struct lock_file*,char const*,int ) ;
 scalar_t__ isspace (char) ;
 int memset (struct config_store_data*,int ,int) ;
 int rollback_lock_file (struct lock_file*) ;
 int section_name_is_ok (char const*) ;
 int section_name_match (char*,char const*) ;
 struct strbuf store_create_section (char const*,struct config_store_data*) ;
 int strbuf_add (struct strbuf*,char*,int) ;
 int strbuf_reset (struct strbuf*) ;
 void* strlen (char const*) ;
 int warn_on_fopen_errors (char const*) ;
 int write_error (char const*) ;
 scalar_t__ write_in_full (int,char*,int) ;
 scalar_t__ write_section (int,char const*,struct config_store_data*) ;

__attribute__((used)) static int git_config_copy_or_rename_section_in_file(const char *config_filename,
          const char *old_name,
          const char *new_name, int copy)
{
 int ret = 0, remove = 0;
 char *filename_buf = ((void*)0);
 struct lock_file lock = LOCK_INIT;
 int out_fd;
 char buf[1024];
 FILE *config_file = ((void*)0);
 struct stat st;
 struct strbuf copystr = STRBUF_INIT;
 struct config_store_data store;

 memset(&store, 0, sizeof(store));

 if (new_name && !section_name_is_ok(new_name)) {
  ret = error(_("invalid section name: %s"), new_name);
  goto out_no_rollback;
 }

 if (!config_filename)
  config_filename = filename_buf = git_pathdup("config");

 out_fd = hold_lock_file_for_update(&lock, config_filename, 0);
 if (out_fd < 0) {
  ret = error(_("could not lock config file %s"), config_filename);
  goto out;
 }

 if (!(config_file = fopen(config_filename, "rb"))) {
  ret = warn_on_fopen_errors(config_filename);
  if (ret)
   goto out;

  goto commit_and_out;
 }

 if (fstat(fileno(config_file), &st) == -1) {
  ret = error_errno(_("fstat on %s failed"), config_filename);
  goto out;
 }

 if (chmod(get_lock_file_path(&lock), st.st_mode & 07777) < 0) {
  ret = error_errno(_("chmod on %s failed"),
      get_lock_file_path(&lock));
  goto out;
 }

 while (fgets(buf, sizeof(buf), config_file)) {
  int i;
  int length;
  int is_section = 0;
  char *output = buf;
  for (i = 0; buf[i] && isspace(buf[i]); i++)
   ;
  if (buf[i] == '[') {

   int offset;
   is_section = 1;







   if (copystr.len > 0) {
    if (write_in_full(out_fd, copystr.buf, copystr.len) < 0) {
     ret = write_error(get_lock_file_path(&lock));
     goto out;
    }
    strbuf_reset(&copystr);
   }

   offset = section_name_match(&buf[i], old_name);
   if (offset > 0) {
    ret++;
    if (new_name == ((void*)0)) {
     remove = 1;
     continue;
    }
    store.baselen = strlen(new_name);
    if (!copy) {
     if (write_section(out_fd, new_name, &store) < 0) {
      ret = write_error(get_lock_file_path(&lock));
      goto out;
     }





     output += offset + i;
     if (strlen(output) > 0) {






      output -= 1;
      output[0] = '\t';
     }
    } else {
     copystr = store_create_section(new_name, &store);
    }
   }
   remove = 0;
  }
  if (remove)
   continue;
  length = strlen(output);

  if (!is_section && copystr.len > 0) {
   strbuf_add(&copystr, output, length);
  }

  if (write_in_full(out_fd, output, length) < 0) {
   ret = write_error(get_lock_file_path(&lock));
   goto out;
  }
 }






 if (copystr.len > 0) {
  if (write_in_full(out_fd, copystr.buf, copystr.len) < 0) {
   ret = write_error(get_lock_file_path(&lock));
   goto out;
  }
  strbuf_reset(&copystr);
 }

 fclose(config_file);
 config_file = ((void*)0);
commit_and_out:
 if (commit_lock_file(&lock) < 0)
  ret = error_errno(_("could not write config file %s"),
      config_filename);
out:
 if (config_file)
  fclose(config_file);
 rollback_lock_file(&lock);
out_no_rollback:
 free(filename_buf);
 config_store_data_clear(&store);
 return ret;
}
