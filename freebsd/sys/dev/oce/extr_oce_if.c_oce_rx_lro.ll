; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_rx_lro.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_rx_lro.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_rq = type { %struct.TYPE_9__, i64, %struct.TYPE_7__, i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.nic_hwlro_singleton_cqe = type { i32, i32, i64, i64, i32, i32, i32 }
%struct.nic_hwlro_cqe_part2 = type { i32, i32, i64, i32, i32, i32 }
%struct.TYPE_10__ = type { i32, i32, %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32 (%struct.TYPE_11__*, %struct.mbuf*)* }
%struct.mbuf = type { i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64, %struct.TYPE_11__* }
%struct.nic_hwlro_cqe_part1 = type { i64 }
%struct.oce_common_cqe_info = type { i32, i32, i32, i64, i64, i32, i32, i32 }

@FNM_FLEX10_MODE = common dso_local global i32 0, align 4
@M_VLANTAG = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i32 0, align 4
@IFCOUNTER_IPACKETS = common dso_local global i32 0, align 4
@M_HASHTYPE_OPAQUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oce_rq*, %struct.nic_hwlro_singleton_cqe*, %struct.nic_hwlro_cqe_part2*)* @oce_rx_lro to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_rx_lro(%struct.oce_rq* %0, %struct.nic_hwlro_singleton_cqe* %1, %struct.nic_hwlro_cqe_part2* %2) #0 {
  %4 = alloca %struct.oce_rq*, align 8
  %5 = alloca %struct.nic_hwlro_singleton_cqe*, align 8
  %6 = alloca %struct.nic_hwlro_cqe_part2*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca %struct.nic_hwlro_cqe_part1*, align 8
  %9 = alloca %struct.mbuf*, align 8
  %10 = alloca %struct.oce_common_cqe_info, align 8
  store %struct.oce_rq* %0, %struct.oce_rq** %4, align 8
  store %struct.nic_hwlro_singleton_cqe* %1, %struct.nic_hwlro_singleton_cqe** %5, align 8
  store %struct.nic_hwlro_cqe_part2* %2, %struct.nic_hwlro_cqe_part2** %6, align 8
  %11 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %12 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 4
  %14 = sext i32 %13 to i64
  %15 = inttoptr i64 %14 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %15, %struct.TYPE_10__** %7, align 8
  store %struct.nic_hwlro_cqe_part1* null, %struct.nic_hwlro_cqe_part1** %8, align 8
  store %struct.mbuf* null, %struct.mbuf** %9, align 8
  %16 = load %struct.nic_hwlro_cqe_part2*, %struct.nic_hwlro_cqe_part2** %6, align 8
  %17 = icmp eq %struct.nic_hwlro_cqe_part2* %16, null
  br i1 %17, label %18, label %47

18:                                               ; preds = %3
  %19 = load %struct.nic_hwlro_singleton_cqe*, %struct.nic_hwlro_singleton_cqe** %5, align 8
  %20 = getelementptr inbounds %struct.nic_hwlro_singleton_cqe, %struct.nic_hwlro_singleton_cqe* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = load %struct.nic_hwlro_singleton_cqe*, %struct.nic_hwlro_singleton_cqe** %5, align 8
  %24 = getelementptr inbounds %struct.nic_hwlro_singleton_cqe, %struct.nic_hwlro_singleton_cqe* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 1
  store i32 %25, i32* %26, align 4
  %27 = load %struct.nic_hwlro_singleton_cqe*, %struct.nic_hwlro_singleton_cqe** %5, align 8
  %28 = getelementptr inbounds %struct.nic_hwlro_singleton_cqe, %struct.nic_hwlro_singleton_cqe* %27, i32 0, i32 6
  %29 = load i32, i32* %28, align 8
  %30 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 7
  store i32 %29, i32* %30, align 8
  %31 = load %struct.nic_hwlro_singleton_cqe*, %struct.nic_hwlro_singleton_cqe** %5, align 8
  %32 = getelementptr inbounds %struct.nic_hwlro_singleton_cqe, %struct.nic_hwlro_singleton_cqe* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 6
  store i32 %33, i32* %34, align 4
  %35 = load %struct.nic_hwlro_singleton_cqe*, %struct.nic_hwlro_singleton_cqe** %5, align 8
  %36 = getelementptr inbounds %struct.nic_hwlro_singleton_cqe, %struct.nic_hwlro_singleton_cqe* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 5
  store i32 %37, i32* %38, align 8
  %39 = load %struct.nic_hwlro_singleton_cqe*, %struct.nic_hwlro_singleton_cqe** %5, align 8
  %40 = getelementptr inbounds %struct.nic_hwlro_singleton_cqe, %struct.nic_hwlro_singleton_cqe* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 4
  store i64 %41, i64* %42, align 8
  %43 = load %struct.nic_hwlro_singleton_cqe*, %struct.nic_hwlro_singleton_cqe** %5, align 8
  %44 = getelementptr inbounds %struct.nic_hwlro_singleton_cqe, %struct.nic_hwlro_singleton_cqe* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 3
  store i64 %45, i64* %46, align 8
  br label %78

47:                                               ; preds = %3
  %48 = load %struct.nic_hwlro_singleton_cqe*, %struct.nic_hwlro_singleton_cqe** %5, align 8
  %49 = bitcast %struct.nic_hwlro_singleton_cqe* %48 to %struct.nic_hwlro_cqe_part1*
  store %struct.nic_hwlro_cqe_part1* %49, %struct.nic_hwlro_cqe_part1** %8, align 8
  %50 = load %struct.nic_hwlro_cqe_part2*, %struct.nic_hwlro_cqe_part2** %6, align 8
  %51 = getelementptr inbounds %struct.nic_hwlro_cqe_part2, %struct.nic_hwlro_cqe_part2* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 0
  store i32 %52, i32* %53, align 8
  %54 = load %struct.nic_hwlro_cqe_part2*, %struct.nic_hwlro_cqe_part2** %6, align 8
  %55 = getelementptr inbounds %struct.nic_hwlro_cqe_part2, %struct.nic_hwlro_cqe_part2* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.nic_hwlro_cqe_part2*, %struct.nic_hwlro_cqe_part2** %6, align 8
  %59 = getelementptr inbounds %struct.nic_hwlro_cqe_part2, %struct.nic_hwlro_cqe_part2* %58, i32 0, i32 5
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 7
  store i32 %60, i32* %61, align 8
  %62 = load %struct.nic_hwlro_cqe_part2*, %struct.nic_hwlro_cqe_part2** %6, align 8
  %63 = getelementptr inbounds %struct.nic_hwlro_cqe_part2, %struct.nic_hwlro_cqe_part2* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 6
  store i32 %64, i32* %65, align 4
  %66 = load %struct.nic_hwlro_cqe_part2*, %struct.nic_hwlro_cqe_part2** %6, align 8
  %67 = getelementptr inbounds %struct.nic_hwlro_cqe_part2, %struct.nic_hwlro_cqe_part2* %66, i32 0, i32 3
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 5
  store i32 %68, i32* %69, align 8
  %70 = load %struct.nic_hwlro_cqe_part2*, %struct.nic_hwlro_cqe_part2** %6, align 8
  %71 = getelementptr inbounds %struct.nic_hwlro_cqe_part2, %struct.nic_hwlro_cqe_part2* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 4
  store i64 %72, i64* %73, align 8
  %74 = load %struct.nic_hwlro_cqe_part1*, %struct.nic_hwlro_cqe_part1** %8, align 8
  %75 = getelementptr inbounds %struct.nic_hwlro_cqe_part1, %struct.nic_hwlro_cqe_part1* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 3
  store i64 %76, i64* %77, align 8
  br label %78

78:                                               ; preds = %47, %18
  %79 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @BSWAP_16(i32 %80)
  %82 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 1
  store i32 %81, i32* %82, align 4
  %83 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %86 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %85, i32 0, i32 2
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = sdiv i32 %84, %88
  %90 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 2
  store i32 %89, i32* %90, align 8
  %91 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %94 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %93, i32 0, i32 2
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = srem i32 %92, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %103

99:                                               ; preds = %78
  %100 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %100, align 8
  br label %103

103:                                              ; preds = %99, %78
  %104 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %105 = call i32 @oce_rx_mbuf_chain(%struct.oce_rq* %104, %struct.oce_common_cqe_info* %10, %struct.mbuf** %9)
  %106 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %107 = icmp ne %struct.mbuf* %106, null
  br i1 %107, label %108, label %211

108:                                              ; preds = %103
  %109 = load %struct.nic_hwlro_cqe_part2*, %struct.nic_hwlro_cqe_part2** %6, align 8
  %110 = icmp ne %struct.nic_hwlro_cqe_part2* %109, null
  br i1 %110, label %111, label %116

111:                                              ; preds = %108
  %112 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %113 = load %struct.nic_hwlro_cqe_part1*, %struct.nic_hwlro_cqe_part1** %8, align 8
  %114 = load %struct.nic_hwlro_cqe_part2*, %struct.nic_hwlro_cqe_part2** %6, align 8
  %115 = call i32 @oce_correct_header(%struct.mbuf* %112, %struct.nic_hwlro_cqe_part1* %113, %struct.nic_hwlro_cqe_part2* %114)
  br label %116

116:                                              ; preds = %111, %108
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 2
  %119 = load %struct.TYPE_11__*, %struct.TYPE_11__** %118, align 8
  %120 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %121 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 2
  store %struct.TYPE_11__* %119, %struct.TYPE_11__** %122, align 8
  %123 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %171

126:                                              ; preds = %116
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i32, i32* %128, align 8
  %130 = load i32, i32* @FNM_FLEX10_MODE, align 4
  %131 = and i32 %129, %130
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %149

133:                                              ; preds = %126
  %134 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 3
  %135 = load i64, i64* %134, align 8
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %148

137:                                              ; preds = %133
  %138 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %141 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %140, i32 0, i32 1
  %142 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %141, i32 0, i32 0
  store i32 %139, i32* %142, align 8
  %143 = load i32, i32* @M_VLANTAG, align 4
  %144 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %145 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = or i32 %146, %143
  store i32 %147, i32* %145, align 8
  br label %148

148:                                              ; preds = %137, %133
  br label %170

149:                                              ; preds = %126
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  %153 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* @VLAN_VID_MASK, align 4
  %156 = and i32 %154, %155
  %157 = icmp ne i32 %152, %156
  br i1 %157, label %158, label %169

158:                                              ; preds = %149
  %159 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %162 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 0
  store i32 %160, i32* %163, align 8
  %164 = load i32, i32* @M_VLANTAG, align 4
  %165 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %166 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 8
  %168 = or i32 %167, %164
  store i32 %168, i32* %166, align 8
  br label %169

169:                                              ; preds = %158, %149
  br label %170

170:                                              ; preds = %169, %148
  br label %171

171:                                              ; preds = %170, %116
  %172 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %172, i32 0, i32 2
  %174 = load %struct.TYPE_11__*, %struct.TYPE_11__** %173, align 8
  %175 = load i32, i32* @IFCOUNTER_IPACKETS, align 4
  %176 = call i32 @if_inc_counter(%struct.TYPE_11__* %174, i32 %175, i32 1)
  %177 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %177, i32 0, i32 2
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %178, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32 (%struct.TYPE_11__*, %struct.mbuf*)*, i32 (%struct.TYPE_11__*, %struct.mbuf*)** %180, align 8
  %182 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %183 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %182, i32 0, i32 2
  %184 = load %struct.TYPE_11__*, %struct.TYPE_11__** %183, align 8
  %185 = load %struct.mbuf*, %struct.mbuf** %9, align 8
  %186 = call i32 %181(%struct.TYPE_11__* %184, %struct.mbuf* %185)
  %187 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %188 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %187, i32 0, i32 0
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 3
  %190 = load i32, i32* %189, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 4
  %192 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 0
  %193 = load i32, i32* %192, align 8
  %194 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %195 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 8
  %198 = add nsw i32 %197, %193
  store i32 %198, i32* %196, align 8
  %199 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %10, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %202 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %201, i32 0, i32 0
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 1
  %204 = load i32, i32* %203, align 4
  %205 = add nsw i32 %204, %200
  store i32 %205, i32* %203, align 4
  %206 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %207 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %206, i32 0, i32 0
  %208 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %207, i32 0, i32 2
  %209 = load i32, i32* %208, align 8
  %210 = add nsw i32 %209, 1
  store i32 %210, i32* %208, align 8
  br label %211

211:                                              ; preds = %171, %103
  ret void
}

declare dso_local i32 @BSWAP_16(i32) #1

declare dso_local i32 @oce_rx_mbuf_chain(%struct.oce_rq*, %struct.oce_common_cqe_info*, %struct.mbuf**) #1

declare dso_local i32 @oce_correct_header(%struct.mbuf*, %struct.nic_hwlro_cqe_part1*, %struct.nic_hwlro_cqe_part2*) #1

declare dso_local i32 @if_inc_counter(%struct.TYPE_11__*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
