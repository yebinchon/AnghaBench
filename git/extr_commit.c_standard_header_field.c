
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char*,int) ;

__attribute__((used)) static inline int standard_header_field(const char *field, size_t len)
{
 return ((len == 4 && !memcmp(field, "tree", 4)) ||
  (len == 6 && !memcmp(field, "parent", 6)) ||
  (len == 6 && !memcmp(field, "author", 6)) ||
  (len == 9 && !memcmp(field, "committer", 9)) ||
  (len == 8 && !memcmp(field, "encoding", 8)));
}
