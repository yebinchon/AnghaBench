
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stream_filter {int dummy; } ;
struct cascade_filter {size_t ptr; size_t end; char const* buf; int two; int one; } ;


 scalar_t__ stream_filter (int ,char const*,size_t*,char*,size_t*) ;

__attribute__((used)) static int cascade_filter_fn(struct stream_filter *filter,
        const char *input, size_t *isize_p,
        char *output, size_t *osize_p)
{
 struct cascade_filter *cas = (struct cascade_filter *) filter;
 size_t filled = 0;
 size_t sz = *osize_p;
 size_t to_feed, remaining;




 while (filled < sz) {
  remaining = sz - filled;


  if (cas->ptr < cas->end) {
   to_feed = cas->end - cas->ptr;
   if (stream_filter(cas->two,
       cas->buf + cas->ptr, &to_feed,
       output + filled, &remaining))
    return -1;
   cas->ptr += (cas->end - cas->ptr) - to_feed;
   filled = sz - remaining;
   continue;
  }


  to_feed = input ? *isize_p : 0;
  if (input && !to_feed)
   break;
  remaining = sizeof(cas->buf);
  if (stream_filter(cas->one,
      input, &to_feed,
      cas->buf, &remaining))
   return -1;
  cas->end = sizeof(cas->buf) - remaining;
  cas->ptr = 0;
  if (input) {
   size_t fed = *isize_p - to_feed;
   *isize_p -= fed;
   input += fed;
  }


  if (input || cas->end)
   continue;


  to_feed = 0;
  remaining = sz - filled;
  if (stream_filter(cas->two,
      ((void*)0), &to_feed,
      output + filled, &remaining))
   return -1;
  if (remaining == (sz - filled))
   break;
  filled = sz - remaining;
 }
 *osize_p -= filled;
 return 0;
}
