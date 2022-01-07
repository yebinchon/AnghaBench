
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_mls {int dummy; } ;
struct label {int dummy; } ;


 int SLOT (struct label*) ;
 int bzero (int ,int) ;

__attribute__((used)) static void
mls_sysvmsg_cleanup(struct label *msglabel)
{

 bzero(SLOT(msglabel), sizeof(struct mac_mls));
}
