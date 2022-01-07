
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int splash_decoder_t ;


 int SPLASH_INIT ;
 int splash_arg ;
 int splash_callback (int ,int ) ;
 int * splash_decoder ;
 int stub1 (int ,int ) ;

__attribute__((used)) static void
splash_new(splash_decoder_t *decoder)
{
 splash_decoder = decoder;
 if (splash_callback != ((void*)0))
  (*splash_callback)(SPLASH_INIT, splash_arg);
}
