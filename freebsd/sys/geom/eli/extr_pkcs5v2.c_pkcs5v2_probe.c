
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_2__ {int tv_sec; scalar_t__ tv_usec; } ;
struct rusage {TYPE_1__ ru_utime; } ;
typedef int salt ;
typedef int key ;


 int G_ELI_SALTLEN ;
 int G_ELI_USERKEYLEN ;
 int RUSAGE_SELF ;
 int getrusage (int ,struct rusage*) ;
 int pkcs5v2_genkey (int *,int,int *,int,char const*,int) ;

__attribute__((used)) static int
pkcs5v2_probe(int iterations)
{
 uint8_t key[G_ELI_USERKEYLEN], salt[G_ELI_SALTLEN];
 const char passphrase[] = "passphrase";
 struct rusage start, end;
 int usecs;

 getrusage(RUSAGE_SELF, &start);
 pkcs5v2_genkey(key, sizeof(key), salt, sizeof(salt), passphrase,
     iterations);
 getrusage(RUSAGE_SELF, &end);

 usecs = end.ru_utime.tv_sec - start.ru_utime.tv_sec;
 usecs *= 1000000;
 usecs += end.ru_utime.tv_usec - start.ru_utime.tv_usec;
 return (usecs);
}
