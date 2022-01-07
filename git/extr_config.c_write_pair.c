
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct config_store_data {int baselen; } ;
typedef int ssize_t ;


 struct strbuf STRBUF_INIT ;
 int strbuf_addch (struct strbuf*,char const) ;
 int strbuf_addf (struct strbuf*,char*,...) ;
 int strbuf_addstr (struct strbuf*,char*) ;
 int strbuf_release (struct strbuf*) ;
 int strlen (char const*) ;
 int write_in_full (int,int ,int ) ;

__attribute__((used)) static ssize_t write_pair(int fd, const char *key, const char *value,
     const struct config_store_data *store)
{
 int i;
 ssize_t ret;
 int length = strlen(key + store->baselen + 1);
 const char *quote = "";
 struct strbuf sb = STRBUF_INIT;
 if (value[0] == ' ')
  quote = "\"";
 for (i = 0; value[i]; i++)
  if (value[i] == ';' || value[i] == '#')
   quote = "\"";
 if (i && value[i - 1] == ' ')
  quote = "\"";

 strbuf_addf(&sb, "\t%.*s = %s",
      length, key + store->baselen + 1, quote);

 for (i = 0; value[i]; i++)
  switch (value[i]) {
  case '\n':
   strbuf_addstr(&sb, "\\n");
   break;
  case '\t':
   strbuf_addstr(&sb, "\\t");
   break;
  case '"':
  case '\\':
   strbuf_addch(&sb, '\\');

  default:
   strbuf_addch(&sb, value[i]);
   break;
  }
 strbuf_addf(&sb, "%s\n", quote);

 ret = write_in_full(fd, sb.buf, sb.len);
 strbuf_release(&sb);

 return ret;
}
