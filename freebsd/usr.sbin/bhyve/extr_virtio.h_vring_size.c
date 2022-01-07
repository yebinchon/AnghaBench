
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
typedef int u_int ;
struct virtio_used {int dummy; } ;
struct virtio_desc {int dummy; } ;


 int VRING_ALIGN ;
 size_t roundup2 (size_t,int ) ;

__attribute__((used)) static inline size_t
vring_size(u_int qsz)
{
 size_t size;


 size = sizeof(struct virtio_desc) * qsz + sizeof(uint16_t) * (3 + qsz);
 size = roundup2(size, VRING_ALIGN);


 size += sizeof(uint16_t) * 3 + sizeof(struct virtio_used) * qsz;
 size = roundup2(size, VRING_ALIGN);

 return (size);
}
