
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct strbuf {int len; int buf; } ;
struct ref {int status; char* remote_status; int name; struct ref* next; } ;
 struct strbuf STRBUF_INIT ;
 int quote_two_c_style (struct strbuf*,char*,char const*,int ) ;
 int strbuf_addch (struct strbuf*,char) ;
 int strbuf_addf (struct strbuf*,char*,char const*,int ) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int write_or_die (int,int ,int ) ;

__attribute__((used)) static void print_helper_status(struct ref *ref)
{
 struct strbuf buf = STRBUF_INIT;

 for (; ref; ref = ref->next) {
  const char *msg = ((void*)0);
  const char *res;

  switch(ref->status) {
  case 137:
   res = "error";
   msg = "no match";
   break;

  case 136:
   res = "ok";
   break;

  case 128:
   res = "ok";
   msg = "up to date";
   break;

  case 131:
   res = "error";
   msg = "non-fast forward";
   break;

  case 134:
   res = "error";
   msg = "fetch first";
   break;

  case 133:
   res = "error";
   msg = "needs force";
   break;

  case 130:
   res = "error";
   msg = "stale info";
   break;

  case 135:
   res = "error";
   msg = "already exists";
   break;

  case 132:
  case 129:
   res = "error";
   break;

  case 138:
  default:
   continue;
  }

  strbuf_reset(&buf);
  strbuf_addf(&buf, "%s %s", res, ref->name);
  if (ref->remote_status)
   msg = ref->remote_status;
  if (msg) {
   strbuf_addch(&buf, ' ');
   quote_two_c_style(&buf, "", msg, 0);
  }
  strbuf_addch(&buf, '\n');

  write_or_die(1, buf.buf, buf.len);
 }
 strbuf_release(&buf);
}
