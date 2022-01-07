
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fls (int) ;

__attribute__((used)) static int
maketcp_hashsize(int size)
{
 int hashsize;





 hashsize = 1 << fls(size);

 if (hashsize < size) {
  hashsize = 1 << (fls(size) - 1);
 }
 return (hashsize);
}
