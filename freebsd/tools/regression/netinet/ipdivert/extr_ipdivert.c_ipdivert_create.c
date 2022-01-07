
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPPROTO_DIVERT ;
 int PF_INET ;
 int SOCK_RAW ;
 int fail (char const*,char*) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static int
ipdivert_create(const char *test)
{
 int s;

 s = socket(PF_INET, SOCK_RAW, IPPROTO_DIVERT);
 if (s < 0)
  fail(test, "socket");
 return (s);
}
