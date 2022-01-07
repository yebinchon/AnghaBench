
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct option {struct note_data* value; } ;
struct TYPE_5__ {scalar_t__ len; } ;
struct note_data {int given; TYPE_1__ buf; } ;


 int BUG_ON_OPT_NEG (int) ;
 int strbuf_addch (TYPE_1__*,char) ;
 int strbuf_addstr (TYPE_1__*,char const*) ;
 int strbuf_grow (TYPE_1__*,scalar_t__) ;
 int strbuf_stripspace (TYPE_1__*,int ) ;
 scalar_t__ strlen (char const*) ;

__attribute__((used)) static int parse_msg_arg(const struct option *opt, const char *arg, int unset)
{
 struct note_data *d = opt->value;

 BUG_ON_OPT_NEG(unset);

 strbuf_grow(&d->buf, strlen(arg) + 2);
 if (d->buf.len)
  strbuf_addch(&d->buf, '\n');
 strbuf_addstr(&d->buf, arg);
 strbuf_stripspace(&d->buf, 0);

 d->given = 1;
 return 0;
}
