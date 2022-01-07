
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {char* h_name; scalar_t__ h_addr; } ;
typedef int bdaddr_t ;
typedef int ba ;


 int AF_BLUETOOTH ;
 int bt_aton (char const*,int *) ;
 struct hostent* bt_gethostbyaddr (char const*,int,int ) ;
 struct hostent* bt_gethostbyname (char const*) ;
 char* bt_ntoa (int *,char*) ;
 int herror (char const*) ;
 int printf (char*,char const*,...) ;

__attribute__((used)) static int
hostmode(char const *arg, int brief)
{
 struct hostent *he = ((void*)0);
 bdaddr_t ba;
 char bastr[32];
 int reverse;

 if (bt_aton(arg, &ba) == 1) {
  reverse = 1;
  he = bt_gethostbyaddr((char const *) &ba, sizeof(ba),
     AF_BLUETOOTH);
 } else {
  reverse = 0;
  he = bt_gethostbyname(arg);
 }

 if (he == ((void*)0)) {
  herror(reverse? bt_ntoa(&ba, bastr) : arg);
  return (1);
 }

 if (brief)
  printf("%s", reverse? he->h_name :
    bt_ntoa((bdaddr_t *)(he->h_addr), bastr));
 else
  printf("Host %s has %s %s\n",
   reverse? bt_ntoa(&ba, bastr) : arg,
   reverse? "name" : "address",
   reverse? he->h_name :
    bt_ntoa((bdaddr_t *)(he->h_addr), bastr));

 return (0);
}
