
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kobj_class {int dummy; } ;
struct kgss_mech {char const* km_mech_name; struct kobj_class* km_class; int km_mech_type; } ;
typedef int gss_OID ;


 int LIST_INSERT_HEAD (int *,struct kgss_mech*,int ) ;
 int M_GSSAPI ;
 int M_WAITOK ;
 int kgss_mechs ;
 int km_link ;
 struct kgss_mech* malloc (int,int ,int ) ;

void
kgss_install_mech(gss_OID mech_type, const char *name, struct kobj_class *cls)
{
 struct kgss_mech *km;

 km = malloc(sizeof(struct kgss_mech), M_GSSAPI, M_WAITOK);
 km->km_mech_type = mech_type;
 km->km_mech_name = name;
 km->km_class = cls;
 LIST_INSERT_HEAD(&kgss_mechs, km, km_link);
}
