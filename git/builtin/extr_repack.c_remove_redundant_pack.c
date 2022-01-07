
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; } ;


 struct strbuf STRBUF_INIT ;
 int strbuf_addf (struct strbuf*,char*,char const*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int unlink_pack_path (int ,int) ;

__attribute__((used)) static void remove_redundant_pack(const char *dir_name, const char *base_name)
{
 struct strbuf buf = STRBUF_INIT;
 strbuf_addf(&buf, "%s/%s.pack", dir_name, base_name);
 unlink_pack_path(buf.buf, 1);
 strbuf_release(&buf);
}
