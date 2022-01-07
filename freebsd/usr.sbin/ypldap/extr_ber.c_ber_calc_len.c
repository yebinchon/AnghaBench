
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ber_element {scalar_t__ be_encoding; size_t be_len; unsigned long be_type; struct ber_element* be_next; struct ber_element* be_sub; } ;


 size_t BER_TAG_MORE ;
 unsigned long BER_TYPE_EOC ;
 scalar_t__ BER_TYPE_SEQUENCE ;
 scalar_t__ BER_TYPE_SET ;
 unsigned long BER_TYPE_SINGLE_MAX ;

size_t
ber_calc_len(struct ber_element *root)
{
 unsigned long t;
 size_t s;
 size_t size = 2;


 if (root->be_sub && (root->be_encoding == BER_TYPE_SEQUENCE ||
     root->be_encoding == BER_TYPE_SET))
  root->be_len = ber_calc_len(root->be_sub);


 if (root->be_type > BER_TYPE_SINGLE_MAX)
  for (t = root->be_type; t > 0; t >>= 7)
   size++;
 if (root->be_len >= BER_TAG_MORE)
  for (s = root->be_len; s > 0; s >>= 8)
   size++;


 if (root->be_next)
  size += ber_calc_len(root->be_next);


 if (root->be_type == BER_TYPE_EOC && root->be_len == 0)
  return (0);

 return (root->be_len + size);
}
