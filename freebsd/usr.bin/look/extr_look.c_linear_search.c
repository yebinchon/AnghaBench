
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;





 int SKIP_PAST_NEWLINE (unsigned char*,unsigned char*) ;
 int compare (int *,unsigned char*,unsigned char*) ;

__attribute__((used)) static char *
linear_search(wchar_t *string, unsigned char *front, unsigned char *back)
{
 while (front < back) {
  switch (compare(string, front, back)) {
  case 130:
   return (front);
  case 128:
   return (((void*)0));
  case 129:
   break;
  }
  SKIP_PAST_NEWLINE(front, back);
 }
 return (((void*)0));
}
