
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chap {int chap_response; } ;


 int log_debugx (char*,size_t,int) ;
 int memcpy (int ,void*,size_t) ;

__attribute__((used)) static int
chap_receive_bin(struct chap *chap, void *response, size_t response_len)
{

 if (response_len != sizeof(chap->chap_response)) {
  log_debugx("got CHAP response with invalid length; "
      "got %zd, should be %zd",
      response_len, sizeof(chap->chap_response));
  return (1);
 }

 memcpy(chap->chap_response, response, response_len);
 return (0);
}
