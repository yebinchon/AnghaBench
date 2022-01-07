
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;



size_t
winLenFixup(const u_char *un, size_t unlen)
{
 for (un += unlen; unlen > 0; unlen--)
  if (*--un != ' ' && *un != '.')
   break;
 return unlen;
}
