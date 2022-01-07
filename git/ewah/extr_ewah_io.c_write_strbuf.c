
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int dummy; } ;


 int strbuf_add (struct strbuf*,void const*,size_t) ;

__attribute__((used)) static int write_strbuf(void *user_data, const void *data, size_t len)
{
 struct strbuf *sb = user_data;
 strbuf_add(sb, data, len);
 return len;
}
