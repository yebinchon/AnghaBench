
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int splash_decoder_t ;


 int DECODER_ARRAY_DELTA ;
 int ENOMEM ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int bcopy (int **,int **,int) ;
 int ** decoder_set ;
 int decoders ;
 int free (int **,int ) ;
 int ** malloc (int,int ,int ) ;
 int * splash_adp ;
 int * splash_decoder ;
 int splash_new (int *) ;
 int splash_term (int *) ;
 int splash_test (int *) ;

int
splash_register(splash_decoder_t *decoder)
{
 splash_decoder_t **p;
 int error;
 int i;

 if (splash_adp != ((void*)0)) {




  error = splash_test(decoder);
  if (error == 0) {

   if (splash_decoder != ((void*)0))
    error = splash_term(splash_adp);
   if (error == 0)
    splash_new(decoder);
  }
  return error;
 } else {

  for (i = 0; i < decoders; ++i) {
   if (decoder_set[i] == ((void*)0))
    break;
  }
  if ((i >= decoders) && (decoders % DECODER_ARRAY_DELTA) == 0) {
   p = malloc(sizeof(*p)*(decoders + DECODER_ARRAY_DELTA),
       M_DEVBUF, M_NOWAIT);
   if (p == ((void*)0))
    return ENOMEM;
   if (decoder_set != ((void*)0)) {
    bcopy(decoder_set, p, sizeof(*p)*decoders);
    free(decoder_set, M_DEVBUF);
   }
   decoder_set = p;
   i = decoders++;
  }
  decoder_set[i] = decoder;
 }

 return 0;
}
