
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int val ;


 int intalign () ;
 int record_buf (int*,int) ;

__attribute__((used)) static int
record_int(int val)
{

 intalign();
 return (record_buf(&val, sizeof(val)));
}
