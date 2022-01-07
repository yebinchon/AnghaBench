
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {size_t len; int buf; } ;
struct repository_format {scalar_t__ version; } ;
typedef int DIR ;


 int DEFAULT_GIT_TEMPLATE_DIR ;
 struct repository_format REPOSITORY_FORMAT_INIT ;
 struct strbuf STRBUF_INIT ;
 int TEMPLATE_DIR_ENVIRONMENT ;
 int _ (char*) ;
 int clear_repository_format (struct repository_format*) ;
 int closedir (int *) ;
 int copy_templates_1 (struct strbuf*,struct strbuf*,int *) ;
 int free (char*) ;
 char* get_git_common_dir () ;
 char* getenv (int ) ;
 char* init_db_template_dir ;
 int * opendir (int ) ;
 int read_repository_format (struct repository_format*,int ) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_complete (struct strbuf*,char) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,size_t) ;
 char* system_path (int ) ;
 scalar_t__ verify_repository_format (struct repository_format*,struct strbuf*) ;
 int warning (int ,char const*,...) ;

__attribute__((used)) static void copy_templates(const char *template_dir)
{
 struct strbuf path = STRBUF_INIT;
 struct strbuf template_path = STRBUF_INIT;
 size_t template_len;
 struct repository_format template_format = REPOSITORY_FORMAT_INIT;
 struct strbuf err = STRBUF_INIT;
 DIR *dir;
 char *to_free = ((void*)0);

 if (!template_dir)
  template_dir = getenv(TEMPLATE_DIR_ENVIRONMENT);
 if (!template_dir)
  template_dir = init_db_template_dir;
 if (!template_dir)
  template_dir = to_free = system_path(DEFAULT_GIT_TEMPLATE_DIR);
 if (!template_dir[0]) {
  free(to_free);
  return;
 }

 strbuf_addstr(&template_path, template_dir);
 strbuf_complete(&template_path, '/');
 template_len = template_path.len;

 dir = opendir(template_path.buf);
 if (!dir) {
  warning(_("templates not found in %s"), template_dir);
  goto free_return;
 }


 strbuf_addstr(&template_path, "config");
 read_repository_format(&template_format, template_path.buf);
 strbuf_setlen(&template_path, template_len);





 if (template_format.version >= 0 &&
     verify_repository_format(&template_format, &err) < 0) {
  warning(_("not copying templates from '%s': %s"),
     template_dir, err.buf);
  strbuf_release(&err);
  goto close_free_return;
 }

 strbuf_addstr(&path, get_git_common_dir());
 strbuf_complete(&path, '/');
 copy_templates_1(&path, &template_path, dir);
close_free_return:
 closedir(dir);
free_return:
 free(to_free);
 strbuf_release(&path);
 strbuf_release(&template_path);
 clear_repository_format(&template_format);
}
