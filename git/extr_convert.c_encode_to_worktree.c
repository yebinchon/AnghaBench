
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int _ (char*) ;
 char* default_encoding ;
 int error (int ,char const*,char*,char const*) ;
 char* reencode_string_len (char const*,size_t,char const*,char*,size_t*) ;
 int strbuf_attach (struct strbuf*,char*,size_t,size_t) ;

__attribute__((used)) static int encode_to_worktree(const char *path, const char *src, size_t src_len,
         struct strbuf *buf, const char *enc)
{
 char *dst;
 size_t dst_len;





 if (!enc || (src && !src_len))
  return 0;

 dst = reencode_string_len(src, src_len, enc, default_encoding,
      &dst_len);
 if (!dst) {
  error(_("failed to encode '%s' from %s to %s"),
        path, default_encoding, enc);
  return 0;
 }

 strbuf_attach(buf, dst, dst_len, dst_len + 1);
 return 1;
}
