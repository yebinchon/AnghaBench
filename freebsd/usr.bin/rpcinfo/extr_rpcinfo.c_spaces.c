
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int space_array ;



__attribute__((used)) static char *
spaces(int howmany)
{
 static char space_array[] =
 "                                                                ";

 if (howmany <= 0 || howmany > sizeof (space_array)) {
  return ("");
 }
 return (&space_array[sizeof (space_array) - howmany - 1]);
}
