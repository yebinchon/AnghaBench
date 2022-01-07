
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int buf; int len; } ;
struct ident_split {int date_begin; } ;


 int BUG (char*,int ) ;
 scalar_t__ split_ident_line (struct ident_split*,int ,int ) ;

__attribute__((used)) static void assert_split_ident(struct ident_split *id, const struct strbuf *buf)
{
 if (split_ident_line(id, buf->buf, buf->len) || !id->date_begin)
  BUG("unable to parse our own ident: %s", buf->buf);
}
