
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int splash_decoder_t ;


 int splash_adp ;
 int * splash_decoder ;
 int splash_term (int ) ;

int
splash_unregister(splash_decoder_t *decoder)
{
 int error;

 if (splash_decoder == decoder) {
  if ((error = splash_term(splash_adp)) != 0)
   return error;
 }
 return 0;
}
