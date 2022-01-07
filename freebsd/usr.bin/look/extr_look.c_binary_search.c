
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 scalar_t__ GREATER ;
 int SKIP_PAST_NEWLINE (unsigned char*,unsigned char*) ;
 scalar_t__ compare (int *,unsigned char*,unsigned char*) ;

__attribute__((used)) static char *
binary_search(wchar_t *string, unsigned char *front, unsigned char *back)
{
 unsigned char *p;

 p = front + (back - front) / 2;
 SKIP_PAST_NEWLINE(p, back);





 while (p < back && back > front) {
  if (compare(string, p, back) == GREATER)
   front = p;
  else
   back = p;
  p = front + (back - front) / 2;
  SKIP_PAST_NEWLINE(p, back);
 }
 return (front);
}
