
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t strlen (char const*) ;
 scalar_t__ strncmp (char const*,char const*,size_t) ;

const char *
bhnd_nvstore_parse_relpath(const char *parent, const char *child)
{
 size_t prefix_len;




 if (*parent == '/')
  parent++;

 if (*child == '/')
  child++;


 prefix_len = strlen(parent);
 if (strncmp(parent, child, prefix_len) != 0)
  return (((void*)0));


 if (prefix_len == 0)
  return (child);


 if (child[prefix_len] == '\0')
  return (child + prefix_len);


 if (child[prefix_len] == '/')
  return (child + prefix_len + 1);


 return (((void*)0));
}
