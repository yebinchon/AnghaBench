
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchap {unsigned char rchap_id; size_t rchap_challenge_len; int * rchap_challenge; } ;


 int * calloc (size_t,int) ;
 int log_err (int,char*) ;
 int memcpy (int *,void const*,size_t) ;

__attribute__((used)) static void
rchap_receive_bin(struct rchap *rchap, const unsigned char id,
    const void *challenge, size_t challenge_len)
{

 rchap->rchap_id = id;
 rchap->rchap_challenge = calloc(challenge_len, 1);
 if (rchap->rchap_challenge == ((void*)0))
  log_err(1, "calloc");
 memcpy(rchap->rchap_challenge, challenge, challenge_len);
 rchap->rchap_challenge_len = challenge_len;
}
