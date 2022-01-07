
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aindex (char const**,char const**,int) ;

__attribute__((used)) static int
weekday(char const ** str)
{
 static char const *days[] =
 {"sun", "mon", "tue", "wed", "thu", "fri", "sat", ((void*)0)};

 return aindex(days, str, 3);
}
