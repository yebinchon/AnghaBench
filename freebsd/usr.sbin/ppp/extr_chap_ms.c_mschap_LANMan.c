
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char u_char ;


 int ChallengeResponse (char*,char*,char*) ;
 int DesEncrypt (char*,char*,char*) ;
 int memset (char*,char,int) ;
 char toupper (char) ;

void
mschap_LANMan(char *digest, char *challenge, char *secret)
{
  static u_char salt[] = "KGS!@#$%";
  char SECRET[14], *ptr, *end;
  u_char hash[16];

  end = SECRET + sizeof SECRET;
  for (ptr = SECRET; *secret && ptr < end; ptr++, secret++)
    *ptr = toupper(*secret);
  if (ptr < end)
    memset(ptr, '\0', end - ptr);

  DesEncrypt(salt, SECRET, hash);
  DesEncrypt(salt, SECRET + 7, hash + 8);

  ChallengeResponse(challenge, hash, digest);
}
