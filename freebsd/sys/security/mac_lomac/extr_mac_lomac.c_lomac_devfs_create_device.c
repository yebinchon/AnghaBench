
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct mount {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;
struct devfs_dirent {int dummy; } ;
struct cdev {int dummy; } ;


 int MAC_LOMAC_TYPE_EQUAL ;
 int MAC_LOMAC_TYPE_HIGH ;
 struct mac_lomac* SLOT (struct label*) ;
 char* devtoname (struct cdev*) ;
 int lomac_set_single (struct mac_lomac*,int,int ) ;
 scalar_t__ ptys_equal ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,int ) ;

__attribute__((used)) static void
lomac_devfs_create_device(struct ucred *cred, struct mount *mp,
    struct cdev *dev, struct devfs_dirent *de, struct label *delabel)
{
 struct mac_lomac *ml;
 const char *dn;
 int lomac_type;

 ml = SLOT(delabel);
 dn = devtoname(dev);
 if (strcmp(dn, "null") == 0 ||
     strcmp(dn, "zero") == 0 ||
     strcmp(dn, "random") == 0 ||
     strncmp(dn, "fd/", strlen("fd/")) == 0 ||
     strncmp(dn, "ttyv", strlen("ttyv")) == 0)
  lomac_type = MAC_LOMAC_TYPE_EQUAL;
 else if (ptys_equal &&
     (strncmp(dn, "ttyp", strlen("ttyp")) == 0 ||
     strncmp(dn, "pts/", strlen("pts/")) == 0 ||
     strncmp(dn, "ptyp", strlen("ptyp")) == 0))
  lomac_type = MAC_LOMAC_TYPE_EQUAL;
 else
  lomac_type = MAC_LOMAC_TYPE_HIGH;
 lomac_set_single(ml, lomac_type, 0);
}
