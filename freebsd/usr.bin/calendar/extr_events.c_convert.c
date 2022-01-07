
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ iconv_t ;


 scalar_t__ E2BIG ;
 scalar_t__ EINVAL ;
 scalar_t__ conv ;
 int * currentEncoding ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int free (char*) ;
 size_t iconv (scalar_t__,char**,size_t*,char**,size_t*) ;
 scalar_t__ iconv_open (int ,int *) ;
 char* malloc (size_t) ;
 int outputEncoding ;
 char* realloc (char*,size_t) ;
 char* strdup (char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static char *
convert(char *input)
{
 char *output;
 output = strdup(input);
 if (output == ((void*)0))
  errx(1, "convert: cannot allocate memory");


 return (output);
}
