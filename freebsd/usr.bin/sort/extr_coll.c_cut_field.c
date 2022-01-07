
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct key_specs {int dummy; } ;
struct bwstring {int dummy; } ;


 struct bwstring* bwsalloc (size_t) ;
 int bwsnocpy (struct bwstring*,struct bwstring const*,size_t,size_t) ;
 size_t find_field_end (struct bwstring const*,struct key_specs*) ;
 int find_field_start (struct bwstring const*,struct key_specs*,size_t*,size_t*,int*,int*) ;

__attribute__((used)) static struct bwstring *
cut_field(const struct bwstring *s, struct key_specs *ks)
{
 struct bwstring *ret = ((void*)0);

 if (s && ks) {
  size_t field_start, key_end, key_start, sz;
  bool empty_field, empty_key;

  field_start = 0;
  key_start = 0;
  empty_field = 0;
  empty_key = 0;

  find_field_start(s, ks, &field_start, &key_start,
      &empty_field, &empty_key);

  if (empty_key)
   sz = 0;
  else {
   key_end = find_field_end(s, ks);
   sz = (key_end < key_start) ? 0 : (key_end - key_start);
  }

  ret = bwsalloc(sz);
  if (sz)
   bwsnocpy(ret, s, key_start, sz);
 } else
  ret = bwsalloc(0);

 return (ret);
}
