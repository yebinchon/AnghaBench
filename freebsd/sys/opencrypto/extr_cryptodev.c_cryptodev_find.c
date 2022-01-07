
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct crypt_find_op {int crid; char* name; } ;
typedef int * device_t ;


 int ENOENT ;
 int * crypto_find_device_byhid (int) ;
 int crypto_find_driver (char*) ;
 int device_get_nameunit (int *) ;
 int strncpy (char*,int ,size_t) ;

__attribute__((used)) static int
cryptodev_find(struct crypt_find_op *find)
{
 device_t dev;
 size_t fnlen = sizeof find->name;

 if (find->crid != -1) {
  dev = crypto_find_device_byhid(find->crid);
  if (dev == ((void*)0))
   return (ENOENT);
  strncpy(find->name, device_get_nameunit(dev), fnlen);
  find->name[fnlen - 1] = '\x0';
 } else {
  find->name[fnlen - 1] = '\x0';
  find->crid = crypto_find_driver(find->name);
  if (find->crid == -1)
   return (ENOENT);
 }
 return (0);
}
