
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rchap {int dummy; } ;


 int chap_hex2bin (char const*,void**,size_t*) ;
 int free (void*) ;
 int log_debugx (char*,char const*) ;
 int rchap_receive_bin (struct rchap*,unsigned char,void*,size_t) ;
 unsigned char strtoul (char const*,int *,int) ;

int
rchap_receive(struct rchap *rchap, const char *id, const char *challenge)
{
 unsigned char id_bin;
 void *challenge_bin;
 size_t challenge_bin_len;

 int error;

 id_bin = strtoul(id, ((void*)0), 10);

 error = chap_hex2bin(challenge, &challenge_bin, &challenge_bin_len);
 if (error != 0) {
  log_debugx("got incorrectly encoded CHAP challenge \"%s\"",
      challenge);
  return (1);
 }

 rchap_receive_bin(rchap, id_bin, challenge_bin, challenge_bin_len);
 free(challenge_bin);

 return (0);
}
