
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int _ (char*) ;
 int error_errno (int ,char const*) ;
 scalar_t__ strbuf_read_file (struct strbuf*,char const*,int ) ;
 int strbuf_trim_trailing_newline (struct strbuf*) ;

__attribute__((used)) static int read_one(const char *path, struct strbuf *buf)
{
 if (strbuf_read_file(buf, path, 0) < 0)
  return error_errno(_("could not read '%s'"), path);
 strbuf_trim_trailing_newline(buf);
 return 0;
}
