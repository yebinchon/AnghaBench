
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 char* cmd_to_page (char const*) ;
 int get_html_page_path (struct strbuf*,char const*) ;
 int open_html (int ) ;

__attribute__((used)) static void show_html_page(const char *git_cmd)
{
 const char *page = cmd_to_page(git_cmd);
 struct strbuf page_path;

 get_html_page_path(&page_path, page);

 open_html(page_path.buf);
}
