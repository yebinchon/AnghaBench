
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char const*,int) ;

__attribute__((used)) static int subtree_name_cmp(const char *one, int onelen,
       const char *two, int twolen)
{
 if (onelen < twolen)
  return -1;
 if (twolen < onelen)
  return 1;
 return memcmp(one, two, onelen);
}
