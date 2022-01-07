
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stream_filter {int dummy; } ;
struct TYPE_5__ {int buf; } ;
struct ident_filter {int state; TYPE_1__ left; int ident; } ;
typedef int head ;




 int ident_drain (struct ident_filter*,char**,size_t*) ;
 int is_foreign_ident (int ) ;
 int strbuf_add (TYPE_1__*,char const*,int) ;
 int strbuf_addch (TYPE_1__*,int) ;
 int strbuf_addstr (TYPE_1__*,int ) ;
 int strbuf_setlen (TYPE_1__*,int) ;

__attribute__((used)) static int ident_filter_fn(struct stream_filter *filter,
      const char *input, size_t *isize_p,
      char *output, size_t *osize_p)
{
 struct ident_filter *ident = (struct ident_filter *)filter;
 static const char head[] = "$Id";

 if (!input) {

  switch (ident->state) {
  default:
   strbuf_add(&ident->left, head, ident->state);

  case 128:

  case 129:
   ident_drain(ident, &output, osize_p);
  }
  return 0;
 }

 while (*isize_p || (ident->state == 129)) {
  int ch;

  if (ident->state == 129) {
   ident_drain(ident, &output, osize_p);
   if (!*osize_p)
    break;
   continue;
  }

  ch = *(input++);
  (*isize_p)--;

  if (ident->state == 128) {




   strbuf_addch(&ident->left, ch);
   if (ch != '\n' && ch != '$')
    continue;
   if (ch == '$' && !is_foreign_ident(ident->left.buf)) {
    strbuf_setlen(&ident->left, sizeof(head) - 1);
    strbuf_addstr(&ident->left, ident->ident);
   }
   ident->state = 129;
   continue;
  }

  if (ident->state < sizeof(head) &&
      head[ident->state] == ch) {
   ident->state++;
   continue;
  }

  if (ident->state)
   strbuf_add(&ident->left, head, ident->state);
  if (ident->state == sizeof(head) - 1) {
   if (ch != ':' && ch != '$') {
    strbuf_addch(&ident->left, ch);
    ident->state = 0;
    continue;
   }

   if (ch == ':') {
    strbuf_addch(&ident->left, ch);
    ident->state = 128;
   } else {
    strbuf_addstr(&ident->left, ident->ident);
    ident->state = 129;
   }
   continue;
  }

  strbuf_addch(&ident->left, ch);
  ident->state = 129;
 }
 return 0;
}
