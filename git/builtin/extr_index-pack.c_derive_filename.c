
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {char const* buf; } ;


 int _ (char*) ;
 int die (int ,char const*) ;
 int strbuf_add (struct strbuf*,char const*,size_t) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strip_suffix (char const*,char*,size_t*) ;

__attribute__((used)) static const char *derive_filename(const char *pack_name, const char *suffix,
       struct strbuf *buf)
{
 size_t len;
 if (!strip_suffix(pack_name, ".pack", &len))
  die(_("packfile name '%s' does not end with '.pack'"),
      pack_name);
 strbuf_add(buf, pack_name, len);
 strbuf_addch(buf, '.');
 strbuf_addstr(buf, suffix);
 return buf->buf;
}
