
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpha (int) ;

__attribute__((used)) static int hunk_comment_line(const char *bol)
{
 int ch;

 if (!bol)
  return 0;
 ch = *bol & 0xff;
 return (isalpha(ch) || ch == '_' || ch == '$');
}
