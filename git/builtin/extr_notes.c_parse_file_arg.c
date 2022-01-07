
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct option {struct note_data* value; } ;
struct TYPE_5__ {scalar_t__ len; } ;
struct note_data {int given; TYPE_1__ buf; } ;


 int BUG_ON_OPT_NEG (int) ;
 int _ (char*) ;
 int die_errno (int ,char const*) ;
 int strbuf_addch (TYPE_1__*,char) ;
 scalar_t__ strbuf_read (TYPE_1__*,int ,int) ;
 scalar_t__ strbuf_read_file (TYPE_1__*,char const*,int) ;
 int strbuf_stripspace (TYPE_1__*,int ) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int parse_file_arg(const struct option *opt, const char *arg, int unset)
{
 struct note_data *d = opt->value;

 BUG_ON_OPT_NEG(unset);

 if (d->buf.len)
  strbuf_addch(&d->buf, '\n');
 if (!strcmp(arg, "-")) {
  if (strbuf_read(&d->buf, 0, 1024) < 0)
   die_errno(_("cannot read '%s'"), arg);
 } else if (strbuf_read_file(&d->buf, arg, 1024) < 0)
  die_errno(_("could not open or read '%s'"), arg);
 strbuf_stripspace(&d->buf, 0);

 d->given = 1;
 return 0;
}
