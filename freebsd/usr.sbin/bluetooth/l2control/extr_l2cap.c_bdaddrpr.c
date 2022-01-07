
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hostent {int h_name; } ;
typedef int str ;
typedef int bdaddr_t ;


 int AF_BLUETOOTH ;
 int NG_HCI_BDADDR_ANY ;
 struct hostent* bt_gethostbyaddr (char*,int,int ) ;
 int bt_ntoa (int const*,char*) ;
 scalar_t__ memcmp (int const*,int ,int) ;
 int strlcpy (char*,int ,int) ;

__attribute__((used)) static char *
bdaddrpr(bdaddr_t const *ba)
{
 extern int numeric_bdaddr;
 static char str[24];
 struct hostent *he = ((void*)0);

 if (memcmp(ba, NG_HCI_BDADDR_ANY, sizeof(*ba)) == 0) {
  str[0] = '*';
  str[1] = 0;

  return (str);
 }

 if (!numeric_bdaddr &&
     (he = bt_gethostbyaddr((char *)ba, sizeof(*ba), AF_BLUETOOTH)) != ((void*)0)) {
  strlcpy(str, he->h_name, sizeof(str));

  return (str);
 }

 bt_ntoa(ba, str);

 return (str);
}
