
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int block_head_t ;


 scalar_t__ isspace (char) ;
 int peek_block (int *,scalar_t__) ;
 int printf (char*,...) ;
 scalar_t__ size_block (int *) ;

__attribute__((used)) static int
diff_block(block_head_t *pa, block_head_t *pb)
{
 uint64_t sa = size_block(pa);
 uint64_t sb = size_block(pb);
 uint64_t s;
 uint64_t x;
 uint64_t y;
 uint64_t n;

 s = (sa > sb) ? sa : sb;

 for (y = x = 0; x != s; x++) {
  char cha = peek_block(pa, x) & 0xFF;
  char chb = peek_block(pb, x) & 0xFF;

  if (cha != chb) {
   int nonspace;


   if (cha == '\n' && chb == 0 && x == sa - 1)
    return (0);

   n = x - y;
   printf("Style error:\n");
   nonspace = 0;
   for (n = y; n < sa; n++) {
    char ch = peek_block(pa, n) & 0xFF;

    if (nonspace && ch == '\n')
     break;
    printf("%c", ch);
    if (!isspace(ch))
     nonspace = 1;
   }
   printf("\n");
   printf("Style corrected:\n");
   nonspace = 0;
   for (n = y; n < sb; n++) {
    char ch = peek_block(pb, n) & 0xFF;

    if (nonspace && ch == '\n')
     break;
    printf("%c", ch);
    if (!isspace(ch))
     nonspace = 1;
   }
   printf("\n");
   for (n = y; n != x; n++) {
    if ((peek_block(pa, n) & 0xFF) == '\t')
     printf("\t");
    else
     printf(" ");
   }
   printf("^ %sdifference%s\n",
       (isspace(cha) || isspace(chb)) ? "whitespace " : "",
       (x >= sa || x >= sb) ? " in the end of a block" : "");
   return (1);
  } else if (cha == '\n') {
   y = x + 1;
  }
 }
 return (0);
}
