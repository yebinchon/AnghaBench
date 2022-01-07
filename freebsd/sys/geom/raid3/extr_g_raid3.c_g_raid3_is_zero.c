
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zeros ;
typedef int uint64_t ;
typedef int u_char ;
struct bio {scalar_t__ bio_length; scalar_t__ bio_data; } ;
typedef scalar_t__ ssize_t ;


 scalar_t__ bcmp (int *,int const*,int) ;

__attribute__((used)) static int
g_raid3_is_zero(struct bio *bp)
{
 static const uint64_t zeros[] = {
     0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0
 };
 u_char *addr;
 ssize_t size;

 size = bp->bio_length;
 addr = (u_char *)bp->bio_data;
 for (; size > 0; size -= sizeof(zeros), addr += sizeof(zeros)) {
  if (bcmp(addr, zeros, sizeof(zeros)) != 0)
   return (0);
 }
 return (1);
}
