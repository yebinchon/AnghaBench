
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchap {int dummy; } ;


 char* chap_bin2hex (void*,size_t) ;
 int free (void*) ;
 int rchap_get_response_bin (struct rchap*,void**,size_t*) ;

char *
rchap_get_response(struct rchap *rchap)
{
 void *response;
 size_t response_len;
 char *chap_r;

 rchap_get_response_bin(rchap, &response, &response_len);
 chap_r = chap_bin2hex(response, response_len);
 free(response);

 return (chap_r);
}
