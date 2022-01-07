
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA_CTX ;


 int SHA1_Final (char*,int *) ;
 int SHA1_Init (int *) ;
 char* SHA1_Pad1 ;
 char* SHA1_Pad2 ;
 int SHA1_Update (int *,char*,int) ;
 int SHA_DIGEST_LENGTH ;
 int memcpy (char*,char*,long) ;

void
GetNewKeyFromSHA(char *StartKey, char *SessionKey, long SessionKeyLength,
                 char *InterimKey)
{
  SHA_CTX Context;
  char Digest[SHA_DIGEST_LENGTH];

  SHA1_Init(&Context);
  SHA1_Update(&Context, StartKey, SessionKeyLength);
  SHA1_Update(&Context, SHA1_Pad1, 40);
  SHA1_Update(&Context, SessionKey, SessionKeyLength);
  SHA1_Update(&Context, SHA1_Pad2, 40);
  SHA1_Final(Digest, &Context);

  memcpy(InterimKey, Digest, SessionKeyLength);
}
