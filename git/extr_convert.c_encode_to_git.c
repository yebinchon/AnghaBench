
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int CONV_WRITE_OBJECT ;
 char* _ (char*) ;
 scalar_t__ check_roundtrip (char const*) ;
 char const* default_encoding ;
 int die (char const*,char const*,char const*,char const*) ;
 int error (char const*,char const*,char const*,char const*) ;
 int free (char*) ;
 scalar_t__ memcmp (char const*,char*,size_t) ;
 char* reencode_string_len (char const*,size_t,char const*,char const*,size_t*) ;
 int strbuf_attach (struct strbuf*,char*,size_t,size_t) ;
 int trace_encoding (char*,char const*,char const*,char const*,size_t) ;
 int trace_printf (char*,char const*) ;
 scalar_t__ validate_encoding (char const*,char const*,char const*,size_t,int) ;

__attribute__((used)) static int encode_to_git(const char *path, const char *src, size_t src_len,
    struct strbuf *buf, const char *enc, int conv_flags)
{
 char *dst;
 size_t dst_len;
 int die_on_error = conv_flags & CONV_WRITE_OBJECT;





 if (!enc || (src && !src_len))
  return 0;







 if (!buf && !src)
  return 1;

 if (validate_encoding(path, enc, src, src_len, die_on_error))
  return 0;

 trace_encoding("source", path, enc, src, src_len);
 dst = reencode_string_len(src, src_len, default_encoding, enc,
      &dst_len);
 if (!dst) {






  const char* msg = _("failed to encode '%s' from %s to %s");
  if (die_on_error)
   die(msg, path, enc, default_encoding);
  else {
   error(msg, path, enc, default_encoding);
   return 0;
  }
 }
 trace_encoding("destination", path, default_encoding, dst, dst_len);
 if (die_on_error && check_roundtrip(enc)) {
  char *re_src;
  size_t re_src_len;

  re_src = reencode_string_len(dst, dst_len,
          enc, default_encoding,
          &re_src_len);

  trace_printf("Checking roundtrip encoding for %s...\n", enc);
  trace_encoding("reencoded source", path, enc,
          re_src, re_src_len);

  if (!re_src || src_len != re_src_len ||
      memcmp(src, re_src, src_len)) {
   const char* msg = _("encoding '%s' from %s to %s and "
         "back is not the same");
   die(msg, path, enc, default_encoding);
  }

  free(re_src);
 }

 strbuf_attach(buf, dst, dst_len, dst_len + 1);
 return 1;
}
