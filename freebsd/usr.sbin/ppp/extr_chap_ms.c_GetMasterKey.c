
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

void
GetMasterKey(char *PasswordHashHash, char *NTResponse, char *MasterKey)
{
  char Digest[SHA_DIGEST_LENGTH];
  SHA_CTX Context;
  static char Magic1[27] =
      {0x54, 0x68, 0x69, 0x73, 0x20, 0x69, 0x73, 0x20, 0x74,
       0x68, 0x65, 0x20, 0x4d, 0x50, 0x50, 0x45, 0x20, 0x4d,
       0x61, 0x73, 0x74, 0x65, 0x72, 0x20, 0x4b, 0x65, 0x79};

  SHA1_Init(&Context);
  SHA1_Update(&Context, PasswordHashHash, 16);
  SHA1_Update(&Context, NTResponse, 24);
  SHA1_Update(&Context, Magic1, 27);
  SHA1_Final(Digest, &Context);
  memcpy(MasterKey, Digest, 16);
}
