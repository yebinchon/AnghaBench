
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct chap {int chap_response; int chap_challenge; int chap_id; } ;
typedef int expected_response ;


 int CHAP_DIGEST_LEN ;
 int chap_compute_md5 (int ,char const*,int ,int,char*,int) ;
 scalar_t__ memcmp (int ,char*,int) ;

int
chap_authenticate(struct chap *chap, const char *secret)
{
 char expected_response[CHAP_DIGEST_LEN];

 chap_compute_md5(chap->chap_id, secret,
     chap->chap_challenge, sizeof(chap->chap_challenge),
     expected_response, sizeof(expected_response));

 if (memcmp(chap->chap_response,
     expected_response, sizeof(expected_response)) != 0) {
  return (-1);
 }

 return (0);
}
