
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef struct strbuf {char* buf; int len; } const strbuf ;
struct ident_split {char const* date_begin; size_t mail_end; size_t name_begin; char const* tz_end; } ;


 unsigned int ARRAY_SIZE (struct strbuf const*) ;
 int BUG (char*,int,char const*) ;

 int anonymize_ident ;
 char* anonymize_mem (int *,int ,size_t,size_t*) ;
 int idents ;
 int split_ident_line (struct ident_split*,char const*,int) ;
 int strbuf_add (struct strbuf const*,char const*,int) ;
 int strbuf_addch (struct strbuf const*,char) ;
 int strbuf_addstr (struct strbuf const*,char*) ;
 int strbuf_reset (struct strbuf const*) ;
 char* strchr (char const*,char) ;

__attribute__((used)) static void anonymize_ident_line(const char **beg, const char **end)
{
 static struct strbuf buffers[] = { 128, 128 };
 static unsigned which_buffer;

 struct strbuf *out;
 struct ident_split split;
 const char *end_of_header;

 out = &buffers[which_buffer++];
 which_buffer %= ARRAY_SIZE(buffers);
 strbuf_reset(out);


 end_of_header = strchr(*beg, ' ');
 if (!end_of_header)
  BUG("malformed line fed to anonymize_ident_line: %.*s",
      (int)(*end - *beg), *beg);
 end_of_header++;
 strbuf_add(out, *beg, end_of_header - *beg);

 if (!split_ident_line(&split, end_of_header, *end - end_of_header) &&
     split.date_begin) {
  const char *ident;
  size_t len;

  len = split.mail_end - split.name_begin;
  ident = anonymize_mem(&idents, anonymize_ident,
          split.name_begin, &len);
  strbuf_add(out, ident, len);
  strbuf_addch(out, ' ');
  strbuf_add(out, split.date_begin, split.tz_end - split.date_begin);
 } else {
  strbuf_addstr(out, "Malformed Ident <malformed@example.com> 0 -0000");
 }

 *beg = out->buf;
 *end = out->buf + out->len;
}
