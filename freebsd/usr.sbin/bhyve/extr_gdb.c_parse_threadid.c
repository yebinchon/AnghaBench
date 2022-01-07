
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ memcmp (int const*,char*,int) ;
 int parse_integer (int const*,size_t) ;

__attribute__((used)) static int
parse_threadid(const uint8_t *data, size_t len)
{

 if (len == 1 && *data == '0')
  return (0);
 if (len == 2 && memcmp(data, "-1", 2) == 0)
  return (-1);
 if (len == 0)
  return (-2);
 return (parse_integer(data, len));
}
