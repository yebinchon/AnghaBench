
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_find_op {int crid; char const* name; } ;
typedef int find ;


 int CRIOFINDDEV ;
 int CRYPTO_FLAG_HARDWARE ;
 int CRYPTO_FLAG_SOFTWARE ;
 int bzero (struct crypt_find_op*,int) ;
 int devcrypto () ;
 int err (int,char*,int) ;
 int ioctl (int ,int ,struct crypt_find_op*) ;

const char *
crfind(int crid)
{
 static struct crypt_find_op find;

 if (crid == CRYPTO_FLAG_SOFTWARE)
  return ("soft");
 else if (crid == CRYPTO_FLAG_HARDWARE)
  return ("unknown");

 bzero(&find, sizeof(find));
 find.crid = crid;
 if (ioctl(devcrypto(), CRIOFINDDEV, &find) == -1)
  err(1, "ioctl(CIOCFINDDEV): crid %d", crid);
 return (find.name);
}
