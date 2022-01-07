
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;


 int WIN_CHARS ;
 int howmany (size_t,int ) ;

int
winSlotCnt(const u_char *un, size_t unlen)
{
 const u_char *cp;




 for (cp = un + unlen; unlen > 0; unlen--)
  if (*--cp != ' ' && *cp != '.')
   break;

 return howmany(unlen, WIN_CHARS);
}
