
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;


 int strlen (char const*) ;
 int write_in_full (int,char const*,int ) ;

__attribute__((used)) static inline ssize_t write_str_in_full(int fd, const char *str)
{
 return write_in_full(fd, str, strlen(str));
}
