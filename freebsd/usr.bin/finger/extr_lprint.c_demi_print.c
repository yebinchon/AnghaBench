
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LINE_LEN ;
 int TAB_LEN ;
 int printf (char*,char*) ;
 int putchar (char) ;
 int strlen (char*) ;

__attribute__((used)) static int
demi_print(char *str, int oddfield)
{
 static int lenlast;
 int lenthis, maxlen;

 lenthis = strlen(str);
 if (oddfield) {
  maxlen = 5 * TAB_LEN;
  if (maxlen < lenlast)
   maxlen = lenlast;
  if (((((maxlen / TAB_LEN) + 1) * TAB_LEN) +
      lenthis) <= LINE_LEN) {
   while(lenlast < (4 * TAB_LEN)) {
    putchar('\t');
    lenlast += TAB_LEN;
   }
   (void)printf("\t%s\n", str);
  } else {
   (void)printf("\n%s", str);
   oddfield = !oddfield;
  }
 } else
  (void)printf("%s", str);
 oddfield = !oddfield;
 lenlast = lenthis;
 return(oddfield);
}
