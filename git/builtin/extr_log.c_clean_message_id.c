
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ (char*) ;
 int die (int ,char const*) ;
 scalar_t__ isspace (char) ;
 char const* xmemdupz (char const*,int) ;

__attribute__((used)) static const char *clean_message_id(const char *msg_id)
{
 char ch;
 const char *a, *z, *m;

 m = msg_id;
 while ((ch = *m) && (isspace(ch) || (ch == '<')))
  m++;
 a = m;
 z = ((void*)0);
 while ((ch = *m)) {
  if (!isspace(ch) && (ch != '>'))
   z = m;
  m++;
 }
 if (!z)
  die(_("insane in-reply-to: %s"), msg_id);
 if (++z == m)
  return a;
 return xmemdupz(a, z - a);
}
