
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchap {int rchap_challenge_len; int rchap_challenge; int rchap_secret; int rchap_id; } ;


 size_t CHAP_DIGEST_LEN ;
 void* calloc (size_t,int) ;
 int chap_compute_md5 (int ,int ,int ,int ,void*,size_t) ;
 int log_err (int,char*) ;

__attribute__((used)) static void
rchap_get_response_bin(struct rchap *rchap,
    void **responsep, size_t *response_lenp)
{
 void *response_bin;
 size_t response_bin_len = CHAP_DIGEST_LEN;

 response_bin = calloc(response_bin_len, 1);
 if (response_bin == ((void*)0))
  log_err(1, "calloc");

 chap_compute_md5(rchap->rchap_id, rchap->rchap_secret,
     rchap->rchap_challenge, rchap->rchap_challenge_len,
     response_bin, response_bin_len);

 *responsep = response_bin;
 *response_lenp = response_bin_len;
}
