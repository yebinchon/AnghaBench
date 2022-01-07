
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ChallengeHash (char*,char*,char*,char*) ;
 int ChallengeResponse (char*,char*,char*) ;
 int NtPasswordHash (char*,int,char*) ;

void
GenerateNTResponse(char *AuthenticatorChallenge, char *PeerChallenge,
                   char *UserName, char *Password,
                   int PasswordLen, char *Response)
{
  char Challenge[8];
  char PasswordHash[16];

  ChallengeHash(PeerChallenge, AuthenticatorChallenge, UserName, Challenge);
  NtPasswordHash(Password, PasswordLen, PasswordHash);
  ChallengeResponse(Challenge, PasswordHash, Response);
}
