
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int width (char*,char*) ;

__attribute__((used)) static int
tabs(char *s, char *os)
{

    return (width(s, os) / 8);
}
