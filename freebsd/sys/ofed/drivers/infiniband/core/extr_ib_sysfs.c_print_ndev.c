
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_gid_attr {int ndev; } ;


 size_t EINVAL ;
 char* if_name (int ) ;
 size_t sprintf (char*,char*,char*) ;

__attribute__((used)) static size_t print_ndev(struct ib_gid_attr *gid_attr, char *buf)
{
 if (!gid_attr->ndev)
  return -EINVAL;

 return sprintf(buf, "%s\n", if_name(gid_attr->ndev));
}
