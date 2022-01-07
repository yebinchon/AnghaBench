
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_find_op {int crid; int name; } ;


 int CIOCFINDDEV ;
 int devcrypto () ;
 int err (int,char*) ;
 int ioctl (int ,int ,struct crypt_find_op*) ;
 int strlcpy (int ,char const*,int) ;

__attribute__((used)) static int
crlookup(const char *devname)
{
 struct crypt_find_op find;

 find.crid = -1;
 strlcpy(find.name, devname, sizeof(find.name));
 if (ioctl(devcrypto(), CIOCFINDDEV, &find) == -1)
  err(1, "ioctl(CIOCFINDDEV)");
 return find.crid;
}
