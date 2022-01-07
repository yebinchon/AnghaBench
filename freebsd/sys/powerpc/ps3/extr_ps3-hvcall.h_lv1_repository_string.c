
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int ret ;


 int strncpy (char*,char const*,int) ;

__attribute__((used)) static inline uint64_t
lv1_repository_string(const char *str)
{
 uint64_t ret = 0;
 strncpy((char *)&ret, str, sizeof(ret));
 return (ret);
}
