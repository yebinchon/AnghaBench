#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u_char ;
typedef  int /*<<< orphan*/  MD5_CTX ;
typedef  int /*<<< orphan*/  MD4_CTX ;

/* Variables and functions */
 int AUTHLEN ; 
 size_t CHAP81_AUTHRESPONSE_LEN ; 
 size_t CHAP81_CHALLENGE_LEN ; 
 int CHAP81_HASH_LEN ; 
 int CHAP81_NTRESPONSE_OFF ; 
 int CHAP81_RESPONSE_LEN ; 
 int /*<<< orphan*/  FUNC0 (char*,size_t,char*,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,char*,size_t,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,...) ; 
 int /*<<< orphan*/  MPPE_MasterKey ; 
 int MS_CHAP_RESPONSE_LEN ; 
 int /*<<< orphan*/  FUNC10 (char*,size_t,char*) ; 
 char* FUNC11 (size_t) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC13 (char*,char,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 size_t FUNC16 (char*) ; 

__attribute__((used)) static char *
FUNC17(char *name, char *key, u_char id, char *challenge
#ifndef NODES
		 , u_char type, char *peerchallenge, char *authresponse,
		 int lanman
#endif
                )
{
  char *result, *digest;
  size_t nlen, klen;

  nlen = FUNC16(name);
  klen = FUNC16(key);

#ifndef NODES
  if (type == 0x80) {
    char expkey[AUTHLEN << 2];
    MD4_CTX MD4context;
    size_t f;

    if ((result = FUNC11(1 + nlen + MS_CHAP_RESPONSE_LEN)) == NULL)
      return result;

    digest = result;					/* the response */
    *digest++ = MS_CHAP_RESPONSE_LEN;			/* 49 */
    FUNC12(digest + MS_CHAP_RESPONSE_LEN, name, nlen);
    if (lanman) {
      FUNC13(digest + 24, '\0', 25);
      FUNC14(digest, challenge + 1, key);	/* LANMan response */
    } else {
      FUNC13(digest, '\0', 25);
      digest += 24;

      for (f = 0; f < klen; f++) {
        expkey[2*f] = key[f];
        expkey[2*f+1] = '\0';
      }
      /*
       *           -----------
       * expkey = | k\0e\0y\0 |
       *           -----------
       */
      FUNC5(&MD4context);
      FUNC6(&MD4context, expkey, klen << 1);
      FUNC4(digest, &MD4context);

      /*
       *           ---- -------- ---------------- ------- ------
       * result = | 49 | LANMan | 16 byte digest | 9 * ? | name |
       *           ---- -------- ---------------- ------- ------
       */
      FUNC15(digest, challenge + 1);
    }
    /*
     *           ---- -------- ------------- ----- ------
     *          |    |  struct MS_ChapResponse24  |      |
     * result = | 49 | LANMan  |  NT digest | 0/1 | name |
     *           ---- -------- ------------- ----- ------
     * where only one of LANMan & NT digest are set.
     */
  } else if (type == 0x81) {
    char expkey[AUTHLEN << 2];
    char pwdhash[CHAP81_HASH_LEN];
    char pwdhashhash[CHAP81_HASH_LEN];
    char *ntresponse;
    size_t f;

    if ((result = FUNC11(1 + nlen + CHAP81_RESPONSE_LEN)) == NULL)
      return result;

    FUNC13(result, 0, 1 + nlen + CHAP81_RESPONSE_LEN);

    digest = result;
    *digest++ = CHAP81_RESPONSE_LEN;		/* value size */

    /* Copy our challenge */
    FUNC12(digest, peerchallenge + 1, CHAP81_CHALLENGE_LEN);

    /* Expand password to Unicode XXX */
    for (f = 0; f < klen; f++) {
      expkey[2*f] = key[f];
      expkey[2*f+1] = '\0';
    }

    ntresponse = digest + CHAP81_NTRESPONSE_OFF;

    /* Get some needed hashes */
    FUNC10(expkey, klen * 2, pwdhash);
    FUNC3(pwdhash, pwdhashhash);

    /* Generate NTRESPONSE to respond on challenge call */
    FUNC1(challenge + 1, peerchallenge + 1, name,
                       expkey, klen * 2, ntresponse);

    /* Generate MPPE MASTERKEY */
    FUNC2(pwdhashhash, ntresponse, MPPE_MasterKey);    /* XXX Global ! */

    /* Generate AUTHRESPONSE to verify on auth success */
    FUNC0(expkey, klen * 2, ntresponse,
                                  peerchallenge + 1, challenge + 1, name,
                                  authresponse);

    authresponse[CHAP81_AUTHRESPONSE_LEN] = 0;

    FUNC12(digest + CHAP81_RESPONSE_LEN, name, nlen);
  } else
#endif
  if ((result = FUNC11(nlen + 17)) != NULL) {
    /* Normal MD5 stuff */
    MD5_CTX MD5context;

    digest = result;
    *digest++ = 16;				/* value size */

    FUNC8(&MD5context);
    FUNC9(&MD5context, &id, 1);
    FUNC9(&MD5context, key, klen);
    FUNC9(&MD5context, challenge + 1, *challenge);
    FUNC7(digest, &MD5context);

    FUNC12(digest + 16, name, nlen);
    /*
     *           ---- -------- ------
     * result = | 16 | digest | name |
     *           ---- -------- ------
     */
  }

  return result;
}