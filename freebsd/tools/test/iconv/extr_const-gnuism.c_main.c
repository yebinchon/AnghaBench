
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int iconv_t ;


 int EXIT_SUCCESS ;
 int err (int,int *) ;
 int iconv (int ,char const**,size_t*,char**,size_t*) ;
 int iconv_open (char*,char*) ;
 char* malloc (size_t) ;
 size_t strlen (char*) ;

int
main(void)
{
 iconv_t cd;
 size_t inbytes, outbytes;
 char *str1 = "FOOBAR";
 const char *str2 = "FOOBAR";
 char ** in1;
 const char ** in2 = &str2;
 char *out1, *out2;

 inbytes = outbytes = strlen("FOOBAR");

 if ((cd = iconv_open("UTF-8", "ASCII")) == (iconv_t)-1)
  err(1, ((void*)0));

 if ((out2 = malloc(inbytes)) == ((void*)0))
  err(1, ((void*)0));

 if (iconv(cd, in2, &inbytes, &out2, &outbytes) == -1)
  err(1, ((void*)0));

 in1 = &str1;
 inbytes = outbytes = strlen("FOOBAR");

 if ((out1 = malloc(inbytes)) == ((void*)0))
  err(1, ((void*)0));

 if (iconv(cd, in1, &inbytes, &out1, &outbytes) == -1)
  err(1, ((void*)0));

 return (EXIT_SUCCESS);

}
