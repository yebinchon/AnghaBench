
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_filter {int dummy; } ;
struct lf_to_crlf_filter {int has_held; char held; } ;



__attribute__((used)) static int lf_to_crlf_filter_fn(struct stream_filter *filter,
    const char *input, size_t *isize_p,
    char *output, size_t *osize_p)
{
 size_t count, o = 0;
 struct lf_to_crlf_filter *lf_to_crlf = (struct lf_to_crlf_filter *)filter;






 if (lf_to_crlf->has_held && (lf_to_crlf->held != '\r' || !input)) {
  output[o++] = lf_to_crlf->held;
  lf_to_crlf->has_held = 0;
 }


 if (!input) {
  *osize_p -= o;
  return 0;
 }

 count = *isize_p;
 if (count || lf_to_crlf->has_held) {
  size_t i;
  int was_cr = 0;

  if (lf_to_crlf->has_held) {
   was_cr = 1;
   lf_to_crlf->has_held = 0;
  }

  for (i = 0; o < *osize_p && i < count; i++) {
   char ch = input[i];

   if (ch == '\n') {
    output[o++] = '\r';
   } else if (was_cr) {





    output[o++] = '\r';
   }







   if (*osize_p <= o) {
    lf_to_crlf->has_held = 1;
    lf_to_crlf->held = ch;
    continue;
   }

   if (ch == '\r') {
    was_cr = 1;
    continue;
   }

   was_cr = 0;
   output[o++] = ch;
  }

  *osize_p -= o;
  *isize_p -= i;

  if (!lf_to_crlf->has_held && was_cr) {
   lf_to_crlf->has_held = 1;
   lf_to_crlf->held = '\r';
  }
 }
 return 0;
}
