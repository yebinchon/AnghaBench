
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 scalar_t__ toupper (char) ;

__attribute__((used)) static int
chap_Cmp(char *myans, int mylen, char *hisans, int hislen

         , u_char type, int lm

        )
{
  int off;

  if (mylen != hislen)
    return 0;

  off = 0;


  if (type == 0x80) {
    off = lm ? 0 : 24;
    mylen = 24;
  }


  for (; mylen; off++, mylen--)
    if (toupper(myans[off]) != toupper(hisans[off]))
      return 0;

  return 1;
}
