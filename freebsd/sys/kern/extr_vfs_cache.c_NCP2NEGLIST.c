
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neglist {int dummy; } ;
struct namecache {int dummy; } ;


 uintptr_t ncneghash ;
 struct neglist* neglists ;

__attribute__((used)) static inline struct neglist *
NCP2NEGLIST(struct namecache *ncp)
{

 return (&neglists[(((uintptr_t)(ncp) >> 8) & ncneghash)]);
}
