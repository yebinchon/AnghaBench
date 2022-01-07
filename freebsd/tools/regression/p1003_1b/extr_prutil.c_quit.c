
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int ,char*,char const*) ;
 int errno ;

void quit(const char *text)
{
 err(errno, "%s", text);
}
