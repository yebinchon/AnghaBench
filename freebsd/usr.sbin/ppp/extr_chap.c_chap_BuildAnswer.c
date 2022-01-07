
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
typedef int MD5_CTX ;
typedef int MD4_CTX ;


 int AUTHLEN ;
 size_t CHAP81_AUTHRESPONSE_LEN ;
 size_t CHAP81_CHALLENGE_LEN ;
 int CHAP81_HASH_LEN ;
 int CHAP81_NTRESPONSE_OFF ;
 int CHAP81_RESPONSE_LEN ;
 int GenerateAuthenticatorResponse (char*,size_t,char*,char*,char*,char*,char*) ;
 int GenerateNTResponse (char*,char*,char*,char*,size_t,char*) ;
 int GetMasterKey (char*,char*,int ) ;
 int HashNtPasswordHash (char*,char*) ;
 int MD4Final (char*,int *) ;
 int MD4Init (int *) ;
 int MD4Update (int *,char*,size_t) ;
 int MD5Final (char*,int *) ;
 int MD5Init (int *) ;
 int MD5Update (int *,...) ;
 int MPPE_MasterKey ;
 int MS_CHAP_RESPONSE_LEN ;
 int NtPasswordHash (char*,size_t,char*) ;
 char* malloc (size_t) ;
 int memcpy (char*,char*,size_t) ;
 int memset (char*,char,int) ;
 int mschap_LANMan (char*,char*,char*) ;
 int mschap_NT (char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static char *
chap_BuildAnswer(char *name, char *key, u_char id, char *challenge

   , u_char type, char *peerchallenge, char *authresponse,
   int lanman

                )
{
  char *result, *digest;
  size_t nlen, klen;

  nlen = strlen(name);
  klen = strlen(key);


  if (type == 0x80) {
    char expkey[AUTHLEN << 2];
    MD4_CTX MD4context;
    size_t f;

    if ((result = malloc(1 + nlen + MS_CHAP_RESPONSE_LEN)) == ((void*)0))
      return result;

    digest = result;
    *digest++ = MS_CHAP_RESPONSE_LEN;
    memcpy(digest + MS_CHAP_RESPONSE_LEN, name, nlen);
    if (lanman) {
      memset(digest + 24, '\0', 25);
      mschap_LANMan(digest, challenge + 1, key);
    } else {
      memset(digest, '\0', 25);
      digest += 24;

      for (f = 0; f < klen; f++) {
        expkey[2*f] = key[f];
        expkey[2*f+1] = '\0';
      }





      MD4Init(&MD4context);
      MD4Update(&MD4context, expkey, klen << 1);
      MD4Final(digest, &MD4context);






      mschap_NT(digest, challenge + 1);
    }







  } else if (type == 0x81) {
    char expkey[AUTHLEN << 2];
    char pwdhash[CHAP81_HASH_LEN];
    char pwdhashhash[CHAP81_HASH_LEN];
    char *ntresponse;
    size_t f;

    if ((result = malloc(1 + nlen + CHAP81_RESPONSE_LEN)) == ((void*)0))
      return result;

    memset(result, 0, 1 + nlen + CHAP81_RESPONSE_LEN);

    digest = result;
    *digest++ = CHAP81_RESPONSE_LEN;


    memcpy(digest, peerchallenge + 1, CHAP81_CHALLENGE_LEN);


    for (f = 0; f < klen; f++) {
      expkey[2*f] = key[f];
      expkey[2*f+1] = '\0';
    }

    ntresponse = digest + CHAP81_NTRESPONSE_OFF;


    NtPasswordHash(expkey, klen * 2, pwdhash);
    HashNtPasswordHash(pwdhash, pwdhashhash);


    GenerateNTResponse(challenge + 1, peerchallenge + 1, name,
                       expkey, klen * 2, ntresponse);


    GetMasterKey(pwdhashhash, ntresponse, MPPE_MasterKey);


    GenerateAuthenticatorResponse(expkey, klen * 2, ntresponse,
                                  peerchallenge + 1, challenge + 1, name,
                                  authresponse);

    authresponse[CHAP81_AUTHRESPONSE_LEN] = 0;

    memcpy(digest + CHAP81_RESPONSE_LEN, name, nlen);
  } else

  if ((result = malloc(nlen + 17)) != ((void*)0)) {

    MD5_CTX MD5context;

    digest = result;
    *digest++ = 16;

    MD5Init(&MD5context);
    MD5Update(&MD5context, &id, 1);
    MD5Update(&MD5context, key, klen);
    MD5Update(&MD5context, challenge + 1, *challenge);
    MD5Final(digest, &MD5context);

    memcpy(digest + 16, name, nlen);





  }

  return result;
}
