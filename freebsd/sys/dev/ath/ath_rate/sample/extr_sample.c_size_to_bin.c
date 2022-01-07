
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_PACKET_SIZE_BINS ;
 int* packet_size_bins ;

__attribute__((used)) static __inline int
size_to_bin(int size)
{
 return NUM_PACKET_SIZE_BINS-1;
}
