
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct config_store_data {int dummy; } ;
typedef int ssize_t ;


 struct strbuf store_create_section (char const*,struct config_store_data const*) ;
 int strbuf_release (struct strbuf*) ;
 int write_in_full (int,int ,int ) ;

__attribute__((used)) static ssize_t write_section(int fd, const char *key,
        const struct config_store_data *store)
{
 struct strbuf sb = store_create_section(key, store);
 ssize_t ret;

 ret = write_in_full(fd, sb.buf, sb.len);
 strbuf_release(&sb);

 return ret;
}
