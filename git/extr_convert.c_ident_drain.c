
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t len; int buf; } ;
struct ident_filter {scalar_t__ state; TYPE_1__ left; } ;


 int memcpy (char*,int ,size_t) ;
 int strbuf_remove (TYPE_1__*,int ,size_t) ;

__attribute__((used)) static void ident_drain(struct ident_filter *ident, char **output_p, size_t *osize_p)
{
 size_t to_drain = ident->left.len;

 if (*osize_p < to_drain)
  to_drain = *osize_p;
 if (to_drain) {
  memcpy(*output_p, ident->left.buf, to_drain);
  strbuf_remove(&ident->left, 0, to_drain);
  *output_p += to_drain;
  *osize_p -= to_drain;
 }
 if (!ident->left.len)
  ident->state = 0;
}
