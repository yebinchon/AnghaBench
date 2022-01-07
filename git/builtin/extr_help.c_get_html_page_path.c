
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;
struct stat {int st_mode; } ;


 int GIT_HTML_PATH ;
 int S_ISREG (int ) ;
 int die (char*,char*) ;
 int free (char*) ;
 char* html_path ;
 int mkpath (char*,char*) ;
 scalar_t__ stat (int ,struct stat*) ;
 int strbuf_addf (struct strbuf*,char*,char*,char const*) ;
 int strbuf_init (struct strbuf*,int ) ;
 int strstr (char*,char*) ;
 char* system_path (int ) ;

__attribute__((used)) static void get_html_page_path(struct strbuf *page_path, const char *page)
{
 struct stat st;
 char *to_free = ((void*)0);

 if (!html_path)
  html_path = to_free = system_path(GIT_HTML_PATH);


 if (!strstr(html_path, "://")) {
  if (stat(mkpath("%s/git.html", html_path), &st)
      || !S_ISREG(st.st_mode))
   die("'%s': not a documentation directory.", html_path);
 }

 strbuf_init(page_path, 0);
 strbuf_addf(page_path, "%s/%s.html", html_path, page);
 free(to_free);
}
