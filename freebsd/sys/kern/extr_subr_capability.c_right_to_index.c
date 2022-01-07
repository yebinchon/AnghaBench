
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int bit2idx ;


 int CAPIDXBIT (int ) ;
 int assert (int) ;

__attribute__((used)) static __inline int
right_to_index(uint64_t right)
{
 static const int bit2idx[] = {
  -1, 0, 1, -1, 2, -1, -1, -1, 3, -1, -1, -1, -1, -1, -1, -1,
  4, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1
 };
 int idx;

 idx = CAPIDXBIT(right);
 assert(idx >= 0 && idx < sizeof(bit2idx) / sizeof(bit2idx[0]));
 return (bit2idx[idx]);
}
