
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int hash; } ;
typedef int hash ;


 int memcpy (unsigned int*,int ,int) ;

__attribute__((used)) static inline unsigned int oidhash(const struct object_id *oid)
{




 unsigned int hash;
 memcpy(&hash, oid->hash, sizeof(hash));
 return hash;
}
