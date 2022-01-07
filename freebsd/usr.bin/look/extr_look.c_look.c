
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 unsigned char* binary_search (int *,unsigned char*,unsigned char*) ;
 unsigned char* linear_search (int *,unsigned char*,unsigned char*) ;
 int print_from (int *,unsigned char*,unsigned char*) ;

__attribute__((used)) static int
look(wchar_t *string, unsigned char *front, unsigned char *back)
{

 front = binary_search(string, front, back);
 front = linear_search(string, front, back);

 if (front)
  print_from(string, front, back);
 return (front ? 0 : 1);
}
