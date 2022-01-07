
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char* suffix; char const* server; } ;


 int EX_SOFTWARE ;
 int errx (int ,char*) ;
 scalar_t__ strcasecmp (char*,char*) ;
 size_t strlen (char*) ;
 TYPE_1__* whoiswhere ;

__attribute__((used)) static const char *
choose_server(char *domain)
{
 size_t len = strlen(domain);
 int i;

 for (i = 0; whoiswhere[i].suffix != ((void*)0); i++) {
  size_t suffix_len = strlen(whoiswhere[i].suffix);
  if (len > suffix_len &&
      strcasecmp(domain + len - suffix_len,
          whoiswhere[i].suffix) == 0)
   return (whoiswhere[i].server);
 }
 errx(EX_SOFTWARE, "no default whois server");
}
