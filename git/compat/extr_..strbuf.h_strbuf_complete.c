
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; char* buf; } ;


 int strbuf_addch (struct strbuf*,char) ;

__attribute__((used)) static inline void strbuf_complete(struct strbuf *sb, char term)
{
 if (sb->len && sb->buf[sb->len - 1] != term)
  strbuf_addch(sb, term);
}
