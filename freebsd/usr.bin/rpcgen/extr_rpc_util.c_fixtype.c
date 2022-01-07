
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* fixit (char const*,char const*) ;

const char *
fixtype(const char *type)
{
 return (fixit(type, type));
}
