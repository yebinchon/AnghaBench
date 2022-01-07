
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ucred {int dummy; } ;
struct pipepair {int dummy; } ;
struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;


 struct mac_lomac* SLOT (struct label*) ;
 int try_relabel (struct mac_lomac*,struct mac_lomac*) ;

__attribute__((used)) static void
lomac_pipe_relabel(struct ucred *cred, struct pipepair *pp,
    struct label *pplabel, struct label *newlabel)
{
 struct mac_lomac *source, *dest;

 source = SLOT(newlabel);
 dest = SLOT(pplabel);

 try_relabel(source, dest);
}
