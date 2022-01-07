
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_find_op {int crid; char const* name; } ;
typedef int find ;


 int CIOCFINDDEV ;
 int bzero (struct crypt_find_op*,int) ;
 int devcrypto () ;
 int err (int,char*) ;
 int ioctl (int ,int ,struct crypt_find_op*) ;

__attribute__((used)) static const char *
crfind(int crid)
{
 static struct crypt_find_op find;

 bzero(&find, sizeof(find));
 find.crid = crid;
 if (ioctl(devcrypto(), CIOCFINDDEV, &find) == -1)
  err(1, "ioctl(CIOCFINDDEV)");
 return find.name;
}
