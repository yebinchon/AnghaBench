
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iconv_canonicalize (char*) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int
gnu_canonicalize1(void)
{

 return (strcmp(iconv_canonicalize("latin2"), "ISO-8859-2"));
}
