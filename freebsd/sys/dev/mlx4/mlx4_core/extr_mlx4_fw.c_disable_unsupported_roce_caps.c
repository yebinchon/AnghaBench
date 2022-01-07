
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long u32 ;


 unsigned long MLX4_FLAG_ROCE_V1_V2 ;
 int MLX4_GET (unsigned long,void*,int ) ;
 int MLX4_PUT (void*,unsigned long,int ) ;
 int QUERY_DEV_CAP_BMME_FLAGS_OFFSET ;
 int QUERY_DEV_CAP_EXT_2_FLAGS_OFFSET ;
 int QUERY_DEV_CAP_EXT_FLAGS_OFFSET ;

__attribute__((used)) static void disable_unsupported_roce_caps(void *buf)
{
 u32 flags;

 MLX4_GET(flags, buf, QUERY_DEV_CAP_EXT_FLAGS_OFFSET);
 flags &= ~(1UL << 31);
 MLX4_PUT(buf, flags, QUERY_DEV_CAP_EXT_FLAGS_OFFSET);
 MLX4_GET(flags, buf, QUERY_DEV_CAP_EXT_2_FLAGS_OFFSET);
 flags &= ~(1UL << 24);
 MLX4_PUT(buf, flags, QUERY_DEV_CAP_EXT_2_FLAGS_OFFSET);
 MLX4_GET(flags, buf, QUERY_DEV_CAP_BMME_FLAGS_OFFSET);
 flags &= ~(MLX4_FLAG_ROCE_V1_V2);
 MLX4_PUT(buf, flags, QUERY_DEV_CAP_BMME_FLAGS_OFFSET);
}
