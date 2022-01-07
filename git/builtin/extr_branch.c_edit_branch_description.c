
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char* buf; } ;


 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int comment_line_char ;
 int edit_description () ;
 int git_config_set (char*,char*) ;
 scalar_t__ launch_editor (int ,struct strbuf*,int *) ;
 int read_branch_desc (struct strbuf*,char const*) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,char const*) ;
 int strbuf_commented_addf (struct strbuf*,int ,char const*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_stripspace (struct strbuf*,int) ;
 int write_file_buf (int ,char*,int) ;

__attribute__((used)) static int edit_branch_description(const char *branch_name)
{
 struct strbuf buf = STRBUF_INIT;
 struct strbuf name = STRBUF_INIT;

 read_branch_desc(&buf, branch_name);
 if (!buf.len || buf.buf[buf.len-1] != '\n')
  strbuf_addch(&buf, '\n');
 strbuf_commented_addf(&buf,
      _("Please edit the description for the branch\n"
        "  %s\n"
        "Lines starting with '%c' will be stripped.\n"),
      branch_name, comment_line_char);
 write_file_buf(edit_description(), buf.buf, buf.len);
 strbuf_reset(&buf);
 if (launch_editor(edit_description(), &buf, ((void*)0))) {
  strbuf_release(&buf);
  return -1;
 }
 strbuf_stripspace(&buf, 1);

 strbuf_addf(&name, "branch.%s.description", branch_name);
 git_config_set(name.buf, buf.len ? buf.buf : ((void*)0));
 strbuf_release(&name);
 strbuf_release(&buf);

 return 0;
}
