
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int _ (char*) ;
 int die_errno (int ,char const*) ;
 char* git_path_merge_msg (int ) ;
 scalar_t__ strbuf_read_file (struct strbuf*,char const*,int ) ;
 int strbuf_reset (struct strbuf*) ;
 int the_repository ;

__attribute__((used)) static void read_merge_msg(struct strbuf *msg)
{
 const char *filename = git_path_merge_msg(the_repository);
 strbuf_reset(msg);
 if (strbuf_read_file(msg, filename, 0) < 0)
  die_errno(_("Could not read from '%s'"), filename);
}
