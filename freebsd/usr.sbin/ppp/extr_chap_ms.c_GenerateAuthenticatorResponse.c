
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;
typedef int SHA_CTX ;


 int ChallengeHash (char*,char*,char*,char*) ;
 int HashNtPasswordHash (char*,char*) ;
 int NtPasswordHash (char*,int,char*) ;
 int SHA1_End (int *,char*) ;
 int SHA1_Final (char*,int *) ;
 int SHA1_Init (int *) ;
 int SHA1_Update (int *,char*,int) ;
 int SHA_DIGEST_LENGTH ;
 char toupper (char) ;

void
GenerateAuthenticatorResponse(char *Password, int PasswordLen,
                              char *NTResponse, char *PeerChallenge,
                              char *AuthenticatorChallenge, char *UserName,
                              char *AuthenticatorResponse)
{
  SHA_CTX Context;
  char PasswordHash[16];
  char PasswordHashHash[16];
  char Challenge[8];
  u_char Digest[SHA_DIGEST_LENGTH];
  int i;




  char Magic1[39] =
         {0x4D, 0x61, 0x67, 0x69, 0x63, 0x20, 0x73, 0x65, 0x72, 0x76,
          0x65, 0x72, 0x20, 0x74, 0x6F, 0x20, 0x63, 0x6C, 0x69, 0x65,
          0x6E, 0x74, 0x20, 0x73, 0x69, 0x67, 0x6E, 0x69, 0x6E, 0x67,
          0x20, 0x63, 0x6F, 0x6E, 0x73, 0x74, 0x61, 0x6E, 0x74};


  char Magic2[41] =
         {0x50, 0x61, 0x64, 0x20, 0x74, 0x6F, 0x20, 0x6D, 0x61, 0x6B,
          0x65, 0x20, 0x69, 0x74, 0x20, 0x64, 0x6F, 0x20, 0x6D, 0x6F,
          0x72, 0x65, 0x20, 0x74, 0x68, 0x61, 0x6E, 0x20, 0x6F, 0x6E,
          0x65, 0x20, 0x69, 0x74, 0x65, 0x72, 0x61, 0x74, 0x69, 0x6F,
          0x6E};



  NtPasswordHash(Password, PasswordLen, PasswordHash);



  HashNtPasswordHash(PasswordHash, PasswordHashHash);

  SHA1_Init(&Context);
  SHA1_Update(&Context, PasswordHashHash, 16);
  SHA1_Update(&Context, NTResponse, 24);
  SHA1_Update(&Context, Magic1, 39);
  SHA1_Final(Digest, &Context);
  ChallengeHash(PeerChallenge, AuthenticatorChallenge, UserName, Challenge);
  SHA1_Init(&Context);
  SHA1_Update(&Context, Digest, 20);
  SHA1_Update(&Context, Challenge, 8);
  SHA1_Update(&Context, Magic2, 41);
  AuthenticatorResponse[0] = 'S';
  AuthenticatorResponse[1] = '=';
  SHA1_End(&Context, AuthenticatorResponse + 2);
  for (i=2; i<42; i++)
    AuthenticatorResponse[i] = toupper(AuthenticatorResponse[i]);

}
