; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_rx_mbuf_chain.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/oce/extr_oce_if.c_oce_rx_mbuf_chain.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.oce_rq = type { i64, %struct.TYPE_6__, i32, %struct.TYPE_9__*, i32, %struct.oce_packet_desc*, i32 }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_9__ = type { i64, i64 }
%struct.oce_packet_desc = type { %struct.mbuf*, i32 }
%struct.mbuf = type { %struct.TYPE_7__, i32*, %struct.mbuf*, i32, i64 }
%struct.TYPE_7__ = type { i32, i32, i64 }
%struct.oce_common_cqe_info = type { i64, i64, i64, i32, i64 }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [59 x i8] c"oce_rx_mbuf_chain: Invalid RX completion - Queue is empty\0A\00", align 1
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@CSUM_DATA_VALID = common dso_local global i32 0, align 4
@CSUM_PSEUDO_HDR = common dso_local global i32 0, align 4
@CSUM_IP_CHECKED = common dso_local global i32 0, align 4
@CSUM_IP_VALID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.oce_rq*, %struct.oce_common_cqe_info*, %struct.mbuf**)* @oce_rx_mbuf_chain to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @oce_rx_mbuf_chain(%struct.oce_rq* %0, %struct.oce_common_cqe_info* %1, %struct.mbuf** %2) #0 {
  %4 = alloca %struct.oce_rq*, align 8
  %5 = alloca %struct.oce_common_cqe_info*, align 8
  %6 = alloca %struct.mbuf**, align 8
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.oce_packet_desc*, align 8
  %12 = alloca %struct.mbuf*, align 8
  store %struct.oce_rq* %0, %struct.oce_rq** %4, align 8
  store %struct.oce_common_cqe_info* %1, %struct.oce_common_cqe_info** %5, align 8
  store %struct.mbuf** %2, %struct.mbuf*** %6, align 8
  %13 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %14 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %13, i32 0, i32 6
  %15 = load i32, i32* %14, align 8
  %16 = sext i32 %15 to i64
  %17 = inttoptr i64 %16 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %17, %struct.TYPE_8__** %7, align 8
  store i64 0, i64* %8, align 8
  store i64 0, i64* %9, align 8
  %18 = load %struct.oce_common_cqe_info*, %struct.oce_common_cqe_info** %5, align 8
  %19 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  store %struct.mbuf* null, %struct.mbuf** %12, align 8
  store i64 0, i64* %8, align 8
  br label %21

21:                                               ; preds = %221, %3
  %22 = load i64, i64* %8, align 8
  %23 = load %struct.oce_common_cqe_info*, %struct.oce_common_cqe_info** %5, align 8
  %24 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = icmp slt i64 %22, %25
  br i1 %26, label %27, label %224

27:                                               ; preds = %21
  %28 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %29 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %28, i32 0, i32 3
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %34 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %33, i32 0, i32 3
  %35 = load %struct.TYPE_9__*, %struct.TYPE_9__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = icmp eq i64 %32, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %27
  %40 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @device_printf(i32 %42, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str, i64 0, i64 0))
  br label %225

44:                                               ; preds = %27
  %45 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %46 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %45, i32 0, i32 5
  %47 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %46, align 8
  %48 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %49 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %48, i32 0, i32 3
  %50 = load %struct.TYPE_9__*, %struct.TYPE_9__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %47, i64 %52
  store %struct.oce_packet_desc* %53, %struct.oce_packet_desc** %11, align 8
  %54 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %55 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %11, align 8
  %58 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %61 = call i32 @bus_dmamap_sync(i32 %56, i32 %59, i32 %60)
  %62 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %63 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %11, align 8
  %66 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @bus_dmamap_unload(i32 %64, i32 %67)
  %69 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %70 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %69, i32 0, i32 3
  %71 = load %struct.TYPE_9__*, %struct.TYPE_9__** %70, align 8
  %72 = call i32 @RING_GET(%struct.TYPE_9__* %71, i32 1)
  %73 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %74 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = add nsw i32 %75, -1
  store i32 %76, i32* %74, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %79 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp sgt i64 %77, %81
  br i1 %82, label %83, label %88

83:                                               ; preds = %44
  %84 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %85 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  br label %90

88:                                               ; preds = %44
  %89 = load i64, i64* %10, align 8
  br label %90

90:                                               ; preds = %88, %83
  %91 = phi i64 [ %87, %83 ], [ %89, %88 ]
  store i64 %91, i64* %9, align 8
  %92 = load i64, i64* %9, align 8
  %93 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %11, align 8
  %94 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %93, i32 0, i32 0
  %95 = load %struct.mbuf*, %struct.mbuf** %94, align 8
  %96 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %95, i32 0, i32 4
  store i64 %92, i64* %96, align 8
  %97 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %98 = icmp ne %struct.mbuf* %97, null
  br i1 %98, label %99, label %124

99:                                               ; preds = %90
  %100 = load i32, i32* @M_PKTHDR, align 4
  %101 = xor i32 %100, -1
  %102 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %11, align 8
  %103 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %102, i32 0, i32 0
  %104 = load %struct.mbuf*, %struct.mbuf** %103, align 8
  %105 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 8
  %107 = and i32 %106, %101
  store i32 %107, i32* %105, align 8
  %108 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %11, align 8
  %109 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %108, i32 0, i32 0
  %110 = load %struct.mbuf*, %struct.mbuf** %109, align 8
  %111 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %112 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %111, i32 0, i32 2
  store %struct.mbuf* %110, %struct.mbuf** %112, align 8
  %113 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %114 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %120

117:                                              ; preds = %99
  %118 = load %struct.mbuf*, %struct.mbuf** %12, align 8
  %119 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %118, i32 0, i32 1
  store i32* null, i32** %119, align 8
  br label %120

120:                                              ; preds = %117, %99
  %121 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %11, align 8
  %122 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %121, i32 0, i32 0
  %123 = load %struct.mbuf*, %struct.mbuf** %122, align 8
  store %struct.mbuf* %123, %struct.mbuf** %12, align 8
  br label %215

124:                                              ; preds = %90
  %125 = load i64, i64* %10, align 8
  %126 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %11, align 8
  %127 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %126, i32 0, i32 0
  %128 = load %struct.mbuf*, %struct.mbuf** %127, align 8
  %129 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %128, i32 0, i32 0
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  store i64 %125, i64* %130, align 8
  %131 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %132 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %124
  %136 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %11, align 8
  %137 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %136, i32 0, i32 0
  %138 = load %struct.mbuf*, %struct.mbuf** %137, align 8
  %139 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %138, i32 0, i32 1
  store i32* null, i32** %139, align 8
  br label %140

140:                                              ; preds = %135, %124
  %141 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %11, align 8
  %142 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %141, i32 0, i32 0
  %143 = load %struct.mbuf*, %struct.mbuf** %142, align 8
  %144 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %143, i32 0, i32 0
  %145 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %144, i32 0, i32 0
  store i32 0, i32* %145, align 8
  %146 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %147 = call i64 @IF_CSUM_ENABLED(%struct.TYPE_8__* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %210

149:                                              ; preds = %140
  %150 = load %struct.oce_common_cqe_info*, %struct.oce_common_cqe_info** %5, align 8
  %151 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %150, i32 0, i32 4
  %152 = load i64, i64* %151, align 8
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %193

154:                                              ; preds = %149
  %155 = load %struct.oce_common_cqe_info*, %struct.oce_common_cqe_info** %5, align 8
  %156 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %155, i32 0, i32 3
  %157 = load i32, i32* %156, align 8
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %170, label %159

159:                                              ; preds = %154
  %160 = load i32, i32* @CSUM_DATA_VALID, align 4
  %161 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %162 = or i32 %160, %161
  %163 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %11, align 8
  %164 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %163, i32 0, i32 0
  %165 = load %struct.mbuf*, %struct.mbuf** %164, align 8
  %166 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %165, i32 0, i32 0
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 8
  %169 = or i32 %168, %162
  store i32 %169, i32* %167, align 8
  br label %187

170:                                              ; preds = %154
  %171 = load %struct.oce_rq*, %struct.oce_rq** %4, align 8
  %172 = getelementptr inbounds %struct.oce_rq, %struct.oce_rq* %171, i32 0, i32 0
  %173 = load i64, i64* %172, align 8
  %174 = icmp ne i64 %173, 0
  br i1 %174, label %175, label %186

175:                                              ; preds = %170
  %176 = load i32, i32* @CSUM_DATA_VALID, align 4
  %177 = load i32, i32* @CSUM_PSEUDO_HDR, align 4
  %178 = or i32 %176, %177
  %179 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %11, align 8
  %180 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %179, i32 0, i32 0
  %181 = load %struct.mbuf*, %struct.mbuf** %180, align 8
  %182 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %178
  store i32 %185, i32* %183, align 8
  br label %186

186:                                              ; preds = %175, %170
  br label %187

187:                                              ; preds = %186, %159
  %188 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %11, align 8
  %189 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %188, i32 0, i32 0
  %190 = load %struct.mbuf*, %struct.mbuf** %189, align 8
  %191 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %190, i32 0, i32 0
  %192 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %191, i32 0, i32 1
  store i32 65535, i32* %192, align 4
  br label %193

193:                                              ; preds = %187, %149
  %194 = load %struct.oce_common_cqe_info*, %struct.oce_common_cqe_info** %5, align 8
  %195 = getelementptr inbounds %struct.oce_common_cqe_info, %struct.oce_common_cqe_info* %194, i32 0, i32 2
  %196 = load i64, i64* %195, align 8
  %197 = icmp ne i64 %196, 0
  br i1 %197, label %198, label %209

198:                                              ; preds = %193
  %199 = load i32, i32* @CSUM_IP_CHECKED, align 4
  %200 = load i32, i32* @CSUM_IP_VALID, align 4
  %201 = or i32 %199, %200
  %202 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %11, align 8
  %203 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %202, i32 0, i32 0
  %204 = load %struct.mbuf*, %struct.mbuf** %203, align 8
  %205 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = or i32 %207, %201
  store i32 %208, i32* %206, align 8
  br label %209

209:                                              ; preds = %198, %193
  br label %210

210:                                              ; preds = %209, %140
  %211 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %11, align 8
  %212 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %211, i32 0, i32 0
  %213 = load %struct.mbuf*, %struct.mbuf** %212, align 8
  store %struct.mbuf* %213, %struct.mbuf** %12, align 8
  %214 = load %struct.mbuf**, %struct.mbuf*** %6, align 8
  store %struct.mbuf* %213, %struct.mbuf** %214, align 8
  br label %215

215:                                              ; preds = %210, %120
  %216 = load %struct.oce_packet_desc*, %struct.oce_packet_desc** %11, align 8
  %217 = getelementptr inbounds %struct.oce_packet_desc, %struct.oce_packet_desc* %216, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %217, align 8
  %218 = load i64, i64* %9, align 8
  %219 = load i64, i64* %10, align 8
  %220 = sub nsw i64 %219, %218
  store i64 %220, i64* %10, align 8
  br label %221

221:                                              ; preds = %215
  %222 = load i64, i64* %8, align 8
  %223 = add nsw i64 %222, 1
  store i64 %223, i64* %8, align 8
  br label %21

224:                                              ; preds = %21
  br label %225

225:                                              ; preds = %224, %39
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @RING_GET(%struct.TYPE_9__*, i32) #1

declare dso_local i64 @IF_CSUM_ENABLED(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
