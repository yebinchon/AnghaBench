
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct promise_raid_conf {int dummy; } ;


 int M_MD_PROMISE ;
 int M_WAITOK ;
 struct promise_raid_conf* malloc (int,int ,int ) ;
 int memcpy (struct promise_raid_conf*,struct promise_raid_conf*,int) ;

__attribute__((used)) static struct promise_raid_conf *
promise_meta_copy(struct promise_raid_conf *meta)
{
 struct promise_raid_conf *nmeta;

 nmeta = malloc(sizeof(*nmeta), M_MD_PROMISE, M_WAITOK);
 memcpy(nmeta, meta, sizeof(*nmeta));
 return (nmeta);
}
