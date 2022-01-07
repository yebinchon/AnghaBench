
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int bexec (int ) ;
 int not_equal () ;
 int not_greater () ;
 int not_less () ;
 int readch () ;
 int readline () ;
 int unreadch () ;

__attribute__((used)) static void
not_compare(void)
{

 switch (readch()) {
 case '<':
  not_less();
  break;
 case '>':
  not_greater();
  break;
 case '=':
  not_equal();
  break;
 default:
  unreadch();
  bexec(readline());
  break;
 }
}
