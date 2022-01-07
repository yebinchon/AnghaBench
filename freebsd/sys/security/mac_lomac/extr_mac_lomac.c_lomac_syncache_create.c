
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mac_lomac {int dummy; } ;
struct label {int dummy; } ;
struct inpcb {struct label* inp_label; } ;


 struct mac_lomac* SLOT (struct label*) ;
 int lomac_copy (struct mac_lomac*,struct mac_lomac*) ;

__attribute__((used)) static void
lomac_syncache_create(struct label *label, struct inpcb *inp)
{
 struct mac_lomac *source, *dest;

 source = SLOT(inp->inp_label);
 dest = SLOT(label);
 lomac_copy(source, dest);
}
