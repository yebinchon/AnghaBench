
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EINVAL ;
 char* memchr (char const*,int ,int) ;

__attribute__((used)) static int
xs_dev_watch_message_parse_string(const char **p, const char *end,
    const char **string_r)
{
 const char *nul;

 nul = memchr(*p, 0, end - *p);
 if (!nul)
  return (EINVAL);

 *string_r = *p;
 *p = nul+1;

 return (0);
}
