
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int memcmp (char const*,char const*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static int is_atom(const char *atom, const char *s, int slen)
{
 int alen = strlen(atom);
 return alen == slen && !memcmp(atom, s, alen);
}
