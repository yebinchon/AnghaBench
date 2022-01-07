
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;


 int DesEncrypt (int *,char*,int *) ;
 int memcpy (char*,int *,int) ;
 int memset (char*,char,int) ;

__attribute__((used)) static void
ChallengeResponse(u_char *challenge, u_char *pwHash, u_char *response)
{
    char ZPasswordHash[21];

    memset(ZPasswordHash, '\0', sizeof ZPasswordHash);
    memcpy(ZPasswordHash, pwHash, 16);

    DesEncrypt(challenge, ZPasswordHash + 0, response + 0);
    DesEncrypt(challenge, ZPasswordHash + 7, response + 8);
    DesEncrypt(challenge, ZPasswordHash + 14, response + 16);
}
