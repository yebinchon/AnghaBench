
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct celockstate {int dummy; } ;


 int bzero (struct celockstate*,int) ;

__attribute__((used)) static inline void
cache_celockstate_init(struct celockstate *cel)
{

 bzero(cel, sizeof(*cel));
}
