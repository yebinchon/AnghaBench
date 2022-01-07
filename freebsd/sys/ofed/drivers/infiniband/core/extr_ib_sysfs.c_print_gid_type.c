
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ib_gid_attr {int gid_type; } ;


 char* ib_cache_gid_type_str (int ) ;
 size_t sprintf (char*,char*,char*) ;

__attribute__((used)) static size_t print_gid_type(struct ib_gid_attr *gid_attr, char *buf)
{
 return sprintf(buf, "%s\n", ib_cache_gid_type_str(gid_attr->gid_type));
}
