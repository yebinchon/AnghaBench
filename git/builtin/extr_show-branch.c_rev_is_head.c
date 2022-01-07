
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int hasheq (unsigned char*,unsigned char*) ;
 int skip_prefix (char const*,char*,char const**) ;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int rev_is_head(const char *head, const char *name,
         unsigned char *head_sha1, unsigned char *sha1)
{
 if (!head || (head_sha1 && sha1 && !hasheq(head_sha1, sha1)))
  return 0;
 skip_prefix(head, "refs/heads/", &head);
 if (!skip_prefix(name, "refs/heads/", &name))
  skip_prefix(name, "heads/", &name);
 return !strcmp(head, name);
}
