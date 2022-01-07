
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; scalar_t__ data_size; int * data; scalar_t__ (* init ) (int ) ;} ;
typedef TYPE_1__ splash_decoder_t ;


 int ENODEV ;
 int ENOENT ;
 scalar_t__ bootverbose ;
 int printf (char*,char*) ;
 int splash_adp ;
 scalar_t__ splash_find_data (TYPE_1__*) ;
 scalar_t__ stub1 (int ) ;

__attribute__((used)) static int
splash_test(splash_decoder_t *decoder)
{
 if (splash_find_data(decoder))
  return ENOENT;
 if (*decoder->init && (*decoder->init)(splash_adp)) {
  decoder->data = ((void*)0);
  decoder->data_size = 0;
  return ENODEV;
 }
 if (bootverbose)
  printf("splash: image decoder found: %s\n", decoder->name);
 return 0;
}
