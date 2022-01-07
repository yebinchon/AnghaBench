
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 int GIT_MAN_PATH ;
 struct strbuf STRBUF_INIT ;
 int free (char*) ;
 char* getenv (char*) ;
 int setenv (char*,int ,int) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 char* system_path (int ) ;

__attribute__((used)) static void setup_man_path(void)
{
 struct strbuf new_path = STRBUF_INIT;
 const char *old_path = getenv("MANPATH");
 char *git_man_path = system_path(GIT_MAN_PATH);





 strbuf_addstr(&new_path, git_man_path);
 strbuf_addch(&new_path, ':');
 if (old_path)
  strbuf_addstr(&new_path, old_path);

 free(git_man_path);
 setenv("MANPATH", new_path.buf, 1);

 strbuf_release(&new_path);
}
