
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;



__attribute__((used)) static u_char
xflip_symbol(u_char symbol)
{
 static const u_char lchars[] = "`'(){}[]\\/<>";
 static const u_char rchars[] = "'`)(}{][/\\><";
 int pos;

 for (pos = 0; lchars[pos] != '\0'; pos++)
  if (lchars[pos] == symbol)
   return rchars[pos];

 return symbol;
}
