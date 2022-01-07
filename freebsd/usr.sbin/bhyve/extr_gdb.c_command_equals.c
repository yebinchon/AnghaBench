
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ memcmp (int const*,char const*,size_t) ;
 size_t strlen (char const*) ;

__attribute__((used)) static bool
command_equals(const uint8_t *data, size_t len, const char *cmd)
{

 if (strlen(cmd) > len)
  return (0);
 return (memcmp(data, cmd, strlen(cmd)) == 0);
}
