
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;


 struct strbuf STRBUF_INIT ;
 char* gather_convert_stats_ascii (int ,int ) ;
 scalar_t__ strbuf_read_file (struct strbuf*,char const*,int ) ;
 int strbuf_release (struct strbuf*) ;

const char *get_wt_convert_stats_ascii(const char *path)
{
 const char *ret = "";
 struct strbuf sb = STRBUF_INIT;
 if (strbuf_read_file(&sb, path, 0) >= 0)
  ret = gather_convert_stats_ascii(sb.buf, sb.len);
 strbuf_release(&sb);
 return ret;
}
