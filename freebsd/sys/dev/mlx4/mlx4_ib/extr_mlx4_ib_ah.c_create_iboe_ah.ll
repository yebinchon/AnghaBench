; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_ah.c_create_iboe_ah.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mlx4/mlx4_ib/extr_mlx4_ib_ah.c_create_iboe_ah.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ib_ah = type { i32 }
%struct.ib_pd = type { i32 }
%struct.ib_ah_attr = type { i32, i32, i32, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.mlx4_ib_ah = type { %struct.ib_ah, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { %struct.TYPE_12__, %struct.TYPE_9__ }
%struct.TYPE_12__ = type { i32, i32, i8*, %struct.in6_addr*, i32, i8*, i8*, %struct.in6_addr*, %struct.in6_addr* }
%struct.in6_addr = type { i32 }
%struct.TYPE_9__ = type { i8* }
%struct.mlx4_ib_dev = type { %struct.mlx4_dev* }
%struct.mlx4_dev = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }
%union.ib_gid = type { i32 }
%struct.ib_gid_attr = type { i64 }
%struct.TYPE_14__ = type { i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@MLX4_STAT_RATE_OFFSET = common dso_local global i32 0, align 4
@IB_RATE_2_5_GBPS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ib_ah* (%struct.ib_pd*, %struct.ib_ah_attr*, %struct.mlx4_ib_ah*)* @create_iboe_ah to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ib_ah* @create_iboe_ah(%struct.ib_pd* %0, %struct.ib_ah_attr* %1, %struct.mlx4_ib_ah* %2) #0 {
  %4 = alloca %struct.ib_ah*, align 8
  %5 = alloca %struct.ib_pd*, align 8
  %6 = alloca %struct.ib_ah_attr*, align 8
  %7 = alloca %struct.mlx4_ib_ah*, align 8
  %8 = alloca %struct.mlx4_ib_dev*, align 8
  %9 = alloca %struct.mlx4_dev*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.in6_addr, align 4
  %12 = alloca i32, align 4
  %13 = alloca %union.ib_gid, align 4
  %14 = alloca %struct.ib_gid_attr, align 8
  %15 = alloca i32, align 4
  store %struct.ib_pd* %0, %struct.ib_pd** %5, align 8
  store %struct.ib_ah_attr* %1, %struct.ib_ah_attr** %6, align 8
  store %struct.mlx4_ib_ah* %2, %struct.mlx4_ib_ah** %7, align 8
  %16 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %17 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call %struct.mlx4_ib_dev* @to_mdev(i32 %18)
  store %struct.mlx4_ib_dev* %19, %struct.mlx4_ib_dev** %8, align 8
  %20 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %21 = getelementptr inbounds %struct.mlx4_ib_dev, %struct.mlx4_ib_dev* %20, i32 0, i32 0
  %22 = load %struct.mlx4_dev*, %struct.mlx4_dev** %21, align 8
  store %struct.mlx4_dev* %22, %struct.mlx4_dev** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 65535, i32* %12, align 4
  %23 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %24 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %23, i32 0, i32 3
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @memcpy(%struct.in6_addr* %11, i32 %27, i32 4)
  %29 = call i64 @rdma_is_multicast_addr(%struct.in6_addr* %11)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %38

31:                                               ; preds = %3
  store i32 1, i32* %10, align 4
  %32 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %33 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %34, i32 0, i32 8
  %36 = load %struct.in6_addr*, %struct.in6_addr** %35, align 8
  %37 = call i32 @rdma_get_mcast_mac(%struct.in6_addr* %11, %struct.in6_addr* %36)
  br label %49

38:                                               ; preds = %3
  %39 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %40 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %40, i32 0, i32 0
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 8
  %43 = load %struct.in6_addr*, %struct.in6_addr** %42, align 8
  %44 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %45 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %44, i32 0, i32 4
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @ETH_ALEN, align 4
  %48 = call i32 @memcpy(%struct.in6_addr* %43, i32 %46, i32 %47)
  br label %49

49:                                               ; preds = %38, %31
  %50 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %51 = getelementptr inbounds %struct.ib_pd, %struct.ib_pd* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %54 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %57 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @ib_get_cached_gid(i32 %52, i32 %55, i32 %59, %union.ib_gid* %13, %struct.ib_gid_attr* %14)
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %15, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %49
  %64 = load i32, i32* %15, align 4
  %65 = call %struct.ib_ah* @ERR_PTR(i32 %64)
  store %struct.ib_ah* %65, %struct.ib_ah** %4, align 8
  br label %233

66:                                               ; preds = %49
  %67 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %68 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %69, i32 0, i32 7
  %71 = load %struct.in6_addr*, %struct.in6_addr** %70, align 8
  %72 = call i32 @eth_zero_addr(%struct.in6_addr* %71)
  %73 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %14, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %93

76:                                               ; preds = %66
  %77 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %14, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = call i32 @rdma_vlan_dev_vlan_id(i64 %78)
  store i32 %79, i32* %12, align 4
  %80 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %81 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 7
  %84 = load %struct.in6_addr*, %struct.in6_addr** %83, align 8
  %85 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %14, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = call i32 @IF_LLADDR(i64 %86)
  %88 = load i32, i32* @ETH_ALEN, align 4
  %89 = call i32 @memcpy(%struct.in6_addr* %84, i32 %87, i32 %88)
  %90 = getelementptr inbounds %struct.ib_gid_attr, %struct.ib_gid_attr* %14, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @dev_put(i64 %91)
  br label %93

93:                                               ; preds = %76, %66
  %94 = load i32, i32* %12, align 4
  %95 = icmp slt i32 %94, 4096
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %98 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = and i32 %99, 7
  %101 = shl i32 %100, 13
  %102 = load i32, i32* %12, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %12, align 4
  br label %104

104:                                              ; preds = %96, %93
  %105 = load %struct.ib_pd*, %struct.ib_pd** %5, align 8
  %106 = call %struct.TYPE_14__* @to_mpd(%struct.ib_pd* %105)
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %110 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 4
  %112 = shl i32 %111, 24
  %113 = or i32 %108, %112
  %114 = call i8* @cpu_to_be32(i32 %113)
  %115 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %116 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 6
  store i8* %114, i8** %118, align 8
  %119 = load %struct.mlx4_ib_dev*, %struct.mlx4_ib_dev** %8, align 8
  %120 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %121 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %124 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @mlx4_ib_gid_index_to_real_index(%struct.mlx4_ib_dev* %119, i32 %122, i32 %126)
  store i32 %127, i32* %15, align 4
  %128 = load i32, i32* %15, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %104
  %131 = load i32, i32* %15, align 4
  %132 = call %struct.ib_ah* @ERR_PTR(i32 %131)
  store %struct.ib_ah* %132, %struct.ib_ah** %4, align 8
  br label %233

133:                                              ; preds = %104
  %134 = load i32, i32* %15, align 4
  %135 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %136 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %135, i32 0, i32 1
  %137 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %136, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 0
  store i32 %134, i32* %138, align 8
  %139 = load i32, i32* %12, align 4
  %140 = call i8* @cpu_to_be16(i32 %139)
  %141 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %142 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 5
  store i8* %140, i8** %144, align 8
  %145 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %146 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %145, i32 0, i32 3
  %147 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %150 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %150, i32 0, i32 0
  %152 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i32 0, i32 4
  store i32 %148, i32* %152, align 8
  %153 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %154 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %153, i32 0, i32 2
  %155 = load i32, i32* %154, align 4
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %201

157:                                              ; preds = %133
  %158 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %159 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %158, i32 0, i32 2
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @MLX4_STAT_RATE_OFFSET, align 4
  %162 = add nsw i32 %160, %161
  %163 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %164 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %163, i32 0, i32 1
  %165 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %164, i32 0, i32 0
  %166 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %165, i32 0, i32 1
  store i32 %162, i32* %166, align 4
  br label %167

167:                                              ; preds = %193, %157
  %168 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %169 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = load i32, i32* @IB_RATE_2_5_GBPS, align 4
  %174 = load i32, i32* @MLX4_STAT_RATE_OFFSET, align 4
  %175 = add nsw i32 %173, %174
  %176 = icmp sgt i32 %172, %175
  br i1 %176, label %177, label %191

177:                                              ; preds = %167
  %178 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %179 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %178, i32 0, i32 1
  %180 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %180, i32 0, i32 1
  %182 = load i32, i32* %181, align 4
  %183 = shl i32 1, %182
  %184 = load %struct.mlx4_dev*, %struct.mlx4_dev** %9, align 8
  %185 = getelementptr inbounds %struct.mlx4_dev, %struct.mlx4_dev* %184, i32 0, i32 0
  %186 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %185, i32 0, i32 0
  %187 = load i32, i32* %186, align 4
  %188 = and i32 %183, %187
  %189 = icmp ne i32 %188, 0
  %190 = xor i1 %189, true
  br label %191

191:                                              ; preds = %177, %167
  %192 = phi i1 [ false, %167 ], [ %190, %177 ]
  br i1 %192, label %193, label %200

193:                                              ; preds = %191
  %194 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %195 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %194, i32 0, i32 1
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = add nsw i32 %198, -1
  store i32 %199, i32* %197, align 4
  br label %167

200:                                              ; preds = %191
  br label %201

201:                                              ; preds = %200, %133
  %202 = load i32, i32* %10, align 4
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %210

204:                                              ; preds = %201
  %205 = call i8* @cpu_to_be16(i32 49152)
  %206 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %207 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %206, i32 0, i32 1
  %208 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %207, i32 0, i32 1
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 0
  store i8* %205, i8** %209, align 8
  br label %210

210:                                              ; preds = %204, %201
  %211 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %212 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %211, i32 0, i32 1
  %213 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %213, i32 0, i32 3
  %215 = load %struct.in6_addr*, %struct.in6_addr** %214, align 8
  %216 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %217 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i32, i32* %219, align 4
  %221 = call i32 @memcpy(%struct.in6_addr* %215, i32 %220, i32 16)
  %222 = load %struct.ib_ah_attr*, %struct.ib_ah_attr** %6, align 8
  %223 = getelementptr inbounds %struct.ib_ah_attr, %struct.ib_ah_attr* %222, i32 0, i32 1
  %224 = load i32, i32* %223, align 4
  %225 = shl i32 %224, 29
  %226 = call i8* @cpu_to_be32(i32 %225)
  %227 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %228 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %227, i32 0, i32 1
  %229 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %228, i32 0, i32 0
  %230 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %229, i32 0, i32 2
  store i8* %226, i8** %230, align 8
  %231 = load %struct.mlx4_ib_ah*, %struct.mlx4_ib_ah** %7, align 8
  %232 = getelementptr inbounds %struct.mlx4_ib_ah, %struct.mlx4_ib_ah* %231, i32 0, i32 0
  store %struct.ib_ah* %232, %struct.ib_ah** %4, align 8
  br label %233

233:                                              ; preds = %210, %130, %63
  %234 = load %struct.ib_ah*, %struct.ib_ah** %4, align 8
  ret %struct.ib_ah* %234
}

declare dso_local %struct.mlx4_ib_dev* @to_mdev(i32) #1

declare dso_local i32 @memcpy(%struct.in6_addr*, i32, i32) #1

declare dso_local i64 @rdma_is_multicast_addr(%struct.in6_addr*) #1

declare dso_local i32 @rdma_get_mcast_mac(%struct.in6_addr*, %struct.in6_addr*) #1

declare dso_local i32 @ib_get_cached_gid(i32, i32, i32, %union.ib_gid*, %struct.ib_gid_attr*) #1

declare dso_local %struct.ib_ah* @ERR_PTR(i32) #1

declare dso_local i32 @eth_zero_addr(%struct.in6_addr*) #1

declare dso_local i32 @rdma_vlan_dev_vlan_id(i64) #1

declare dso_local i32 @IF_LLADDR(i64) #1

declare dso_local i32 @dev_put(i64) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local %struct.TYPE_14__* @to_mpd(%struct.ib_pd*) #1

declare dso_local i32 @mlx4_ib_gid_index_to_real_index(%struct.mlx4_ib_dev*, i32, i32) #1

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
