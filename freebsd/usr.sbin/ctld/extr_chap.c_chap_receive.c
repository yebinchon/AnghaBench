
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chap {int dummy; } ;


 int chap_hex2bin (char const*,void**,size_t*) ;
 int chap_receive_bin (struct chap*,void*,size_t) ;
 int free (void*) ;
 int log_debugx (char*,char const*) ;

int
chap_receive(struct chap *chap, const char *response)
{
 void *response_bin;
 size_t response_bin_len;
 int error;

 error = chap_hex2bin(response, &response_bin, &response_bin_len);
 if (error != 0) {
  log_debugx("got incorrectly encoded CHAP response \"%s\"",
      response);
  return (1);
 }

 error = chap_receive_bin(chap, response_bin, response_bin_len);
 free(response_bin);

 return (error);
}
