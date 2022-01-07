
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bwstring {int dummy; } ;


 size_t BWSLEN (struct bwstring const*) ;
 int BWS_GET (struct bwstring const*,size_t) ;
 scalar_t__ iswblank (int ) ;

__attribute__((used)) static size_t
skip_cols_to_start(const struct bwstring *s, size_t cols, size_t start,
    bool skip_blanks, bool *empty_key)
{
 if (cols < 1)
  return (BWSLEN(s) + 1);

 if (skip_blanks)
  while (start < BWSLEN(s) && iswblank(BWS_GET(s,start)))
   ++start;

 while (start < BWSLEN(s) && cols > 1) {
  --cols;
  ++start;
 }

 if (start >= BWSLEN(s))
  *empty_key = 1;

 return (start);
}
