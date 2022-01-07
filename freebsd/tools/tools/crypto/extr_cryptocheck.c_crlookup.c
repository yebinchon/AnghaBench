
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_find_op {int crid; int name; } ;


 int CIOCFINDDEV ;
 int CRYPTO_FLAG_SOFTWARE ;
 int devcrypto () ;
 int enable_user_soft () ;
 int err (int,char*) ;
 int ioctl (int ,int ,struct crypt_find_op*) ;
 int strlcpy (int ,char const*,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int
crlookup(const char *devname)
{
 struct crypt_find_op find;

 if (strncmp(devname, "soft", 4) == 0) {
  enable_user_soft();
  return CRYPTO_FLAG_SOFTWARE;
 }

 find.crid = -1;
 strlcpy(find.name, devname, sizeof(find.name));
 if (ioctl(devcrypto(), CIOCFINDDEV, &find) == -1)
  err(1, "ioctl(CIOCFINDDEV)");
 return (find.crid);
}
