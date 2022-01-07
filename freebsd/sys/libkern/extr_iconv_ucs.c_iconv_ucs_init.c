
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iconv_converter_class {int dummy; } ;


 int ENCODING_UNICODE ;
 int ENCODING_UTF8 ;
 int iconv_add (int ,int ,int ) ;

__attribute__((used)) static int
iconv_ucs_init(struct iconv_converter_class *dcp)
{
 int error;

 error = iconv_add(ENCODING_UNICODE, ENCODING_UNICODE, ENCODING_UTF8);
 if (error)
  return (error);
 error = iconv_add(ENCODING_UNICODE, ENCODING_UTF8, ENCODING_UNICODE);
 if (error)
  return (error);
 return (0);
}
