
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int iconv_canonicalize (char*) ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
gnu_canonicalize2(void)
{

 return (!strcmp(iconv_canonicalize("ASCII"), iconv_canonicalize("latin2")));
}
