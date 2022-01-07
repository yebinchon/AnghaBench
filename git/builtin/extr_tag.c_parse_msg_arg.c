
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct option {struct msg_arg* value; } ;
struct TYPE_2__ {scalar_t__ len; } ;
struct msg_arg {int given; TYPE_1__ buf; } ;


 int BUG_ON_OPT_NEG (int) ;
 int strbuf_addstr (TYPE_1__*,char const*) ;

__attribute__((used)) static int parse_msg_arg(const struct option *opt, const char *arg, int unset)
{
 struct msg_arg *msg = opt->value;

 BUG_ON_OPT_NEG(unset);

 if (!arg)
  return -1;
 if (msg->buf.len)
  strbuf_addstr(&(msg->buf), "\n\n");
 strbuf_addstr(&(msg->buf), arg);
 msg->given = 1;
 return 0;
}
