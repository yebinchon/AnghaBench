
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SHA_CTX ;


 int SHA1_Final (char*,int *) ;
 int SHA1_Init (int *) ;
 int SHA1_Update (int *,char*,int) ;
 int SHA_DIGEST_LENGTH ;
 int memcpy (char*,char*,int) ;
 int strlen (char*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static void
ChallengeHash(char *PeerChallenge, char *AuthenticatorChallenge,
              char *UserName, char *Challenge)
{
  SHA_CTX Context;
  char Digest[SHA_DIGEST_LENGTH];
  char *Name;

  Name = strrchr(UserName, '\\');
  if(((void*)0) == Name)
    Name = UserName;
  else
    Name++;

  SHA1_Init(&Context);

  SHA1_Update(&Context, PeerChallenge, 16);
  SHA1_Update(&Context, AuthenticatorChallenge, 16);
  SHA1_Update(&Context, Name, strlen(Name));

  SHA1_Final(Digest, &Context);
  memcpy(Challenge, Digest, 8);
}
