
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ICONV_CONVERTER_CONV (void*,char const**,size_t*,char**,size_t*,int ,int) ;

int
iconv_conv_case(void *handle, const char **inbuf,
 size_t *inbytesleft, char **outbuf, size_t *outbytesleft, int casetype)
{
 return ICONV_CONVERTER_CONV(handle, inbuf, inbytesleft, outbuf, outbytesleft, 0, casetype);
}
