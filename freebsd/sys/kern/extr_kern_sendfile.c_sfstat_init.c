
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct sfstat {int dummy; } ;


 int COUNTER_ARRAY_ALLOC (int ,int,int ) ;
 int M_WAITOK ;
 int sfstat ;

__attribute__((used)) static void
sfstat_init(const void *unused)
{

 COUNTER_ARRAY_ALLOC(sfstat, sizeof(struct sfstat) / sizeof(uint64_t),
     M_WAITOK);
}
