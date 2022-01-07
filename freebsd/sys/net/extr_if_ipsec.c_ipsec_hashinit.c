
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipsec_iflist {int dummy; } ;


 int CK_LIST_INIT (struct ipsec_iflist*) ;
 int IPSEC_HASH_SIZE ;
 int M_IPSEC ;
 int M_WAITOK ;
 struct ipsec_iflist* malloc (int,int ,int ) ;

__attribute__((used)) static struct ipsec_iflist *
ipsec_hashinit(void)
{
 struct ipsec_iflist *hash;
 int i;

 hash = malloc(sizeof(struct ipsec_iflist) * IPSEC_HASH_SIZE,
     M_IPSEC, M_WAITOK);
 for (i = 0; i < IPSEC_HASH_SIZE; i++)
  CK_LIST_INIT(&hash[i]);

 return (hash);
}
