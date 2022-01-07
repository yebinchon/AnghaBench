
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct stat {int st_mode; int st_size; } ;
struct patch {scalar_t__ crlf_in_old; } ;


 int CONV_EOL_KEEP_CRLF ;
 int CONV_EOL_RENORMALIZE ;

 int S_IFMT ;

 int _ (char*) ;
 int convert_to_git (int *,char const*,int ,int ,struct strbuf*,int) ;
 int error (int ,char const*) ;
 int strbuf_read_file (struct strbuf*,char const*,int ) ;
 int strbuf_readlink (struct strbuf*,char const*,int ) ;

__attribute__((used)) static int read_old_data(struct stat *st, struct patch *patch,
    const char *path, struct strbuf *buf)
{
 int conv_flags = patch->crlf_in_old ?
  CONV_EOL_KEEP_CRLF : CONV_EOL_RENORMALIZE;
 switch (st->st_mode & S_IFMT) {
 case 129:
  if (strbuf_readlink(buf, path, st->st_size) < 0)
   return error(_("unable to read symlink %s"), path);
  return 0;
 case 128:
  if (strbuf_read_file(buf, path, st->st_size) != st->st_size)
   return error(_("unable to open or read %s"), path);
  convert_to_git(((void*)0), path, buf->buf, buf->len, buf, conv_flags);
  return 0;
 default:
  return -1;
 }
}
