
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smbioc_oshare {int ioc_password; int ioc_stype; int ioc_share; int ioc_group; int ioc_owner; int ioc_rights; int ioc_mode; } ;
struct smb_sharespec {int pass; int stype; int name; int group; int owner; int rights; int mode; } ;


 int bzero (struct smb_sharespec*,int) ;

__attribute__((used)) static int
smb_usr_share2spec(struct smbioc_oshare *dp, struct smb_sharespec *spec)
{
 bzero(spec, sizeof(*spec));
 spec->mode = dp->ioc_mode;
 spec->rights = dp->ioc_rights;
 spec->owner = dp->ioc_owner;
 spec->group = dp->ioc_group;
 spec->name = dp->ioc_share;
 spec->stype = dp->ioc_stype;
 spec->pass = dp->ioc_password;
 return 0;
}
