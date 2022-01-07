; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_droq.c_lio_droq_fast_process_packets.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/liquidio/base/extr_lio_droq.c_lio_droq_fast_process_packets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.octeon_device = type { i32 }
%struct.lio_droq = type { i64, i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__, i32, i32, i32, %struct.TYPE_6__*, i32 }
%struct.TYPE_8__ = type { i32, i32, i32 }
%struct.TYPE_7__ = type { i64, i32, i32 (%struct.mbuf*, i64, %union.octeon_rh*, %struct.lio_droq.0*, i32)* }
%struct.mbuf = type { i32 }
%union.octeon_rh = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.lio_droq.0 = type opaque
%struct.TYPE_6__ = type { %struct.mbuf*, i64 }
%struct.lio_droq_info = type { i64, %union.octeon_rh }

@.str = private unnamed_addr constant [37 x i8] c"DROQ[%d] idx: %d len:0, pkt_cnt: %d\0A\00", align 1
@LIO_DROQ_INFO_SIZE = common dso_local global i32 0, align 4
@HD_OMIT_CHARS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.octeon_device*, %struct.lio_droq*, i64)* @lio_droq_fast_process_packets to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @lio_droq_fast_process_packets(%struct.octeon_device* %0, %struct.lio_droq* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.octeon_device*, align 8
  %6 = alloca %struct.lio_droq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.lio_droq_info*, align 8
  %9 = alloca %union.octeon_rh*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.mbuf*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.mbuf*, align 8
  %20 = alloca i32, align 4
  store %struct.octeon_device* %0, %struct.octeon_device** %5, align 8
  store %struct.lio_droq* %1, %struct.lio_droq** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 0, i64* %12, align 8
  %21 = load i64, i64* %7, align 8
  store i64 %21, i64* %11, align 8
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %297, %3
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* %11, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %300

26:                                               ; preds = %22
  store %struct.mbuf* null, %struct.mbuf** %13, align 8
  store i64 0, i64* %14, align 8
  %27 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %28 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %27, i32 0, i32 9
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %28, align 8
  %30 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %31 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i64 %32
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 1
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.lio_droq_info*
  store %struct.lio_droq_info* %36, %struct.lio_droq_info** %8, align 8
  %37 = load %struct.lio_droq_info*, %struct.lio_droq_info** %8, align 8
  %38 = bitcast %struct.lio_droq_info* %37 to i32*
  %39 = call i32 @lio_swap_8B_data(i32* %38, i32 2)
  %40 = load %struct.lio_droq_info*, %struct.lio_droq_info** %8, align 8
  %41 = getelementptr inbounds %struct.lio_droq_info, %struct.lio_droq_info* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %72, label %44

44:                                               ; preds = %26
  %45 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %46 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %47 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %46, i32 0, i32 10
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %50 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = call i32 @lio_dev_err(%struct.octeon_device* %45, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %48, i64 %51, i64 %52)
  %54 = load %struct.lio_droq_info*, %struct.lio_droq_info** %8, align 8
  %55 = bitcast %struct.lio_droq_info* %54 to i32*
  %56 = load i32, i32* @LIO_DROQ_INFO_SIZE, align 4
  %57 = load i32, i32* @HD_OMIT_CHARS, align 4
  %58 = call i32 @hexdump(i32* %55, i32 %56, i32* null, i32 %57)
  %59 = load i64, i64* %10, align 8
  %60 = add nsw i64 %59, 1
  store i64 %60, i64* %10, align 8
  %61 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %62 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %65 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %64, i32 0, i32 8
  %66 = load i32, i32* %65, align 8
  %67 = call i8* @lio_incr_index(i64 %63, i32 1, i32 %66)
  %68 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %69 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %69, align 8
  br label %300

72:                                               ; preds = %26
  %73 = load %struct.lio_droq_info*, %struct.lio_droq_info** %8, align 8
  %74 = getelementptr inbounds %struct.lio_droq_info, %struct.lio_droq_info* %73, i32 0, i32 1
  store %union.octeon_rh* %74, %union.octeon_rh** %9, align 8
  %75 = load %struct.lio_droq_info*, %struct.lio_droq_info** %8, align 8
  %76 = getelementptr inbounds %struct.lio_droq_info, %struct.lio_droq_info* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = add nsw i64 %77, 8
  store i64 %78, i64* %76, align 8
  %79 = load i32, i32* @LIO_DROQ_INFO_SIZE, align 4
  %80 = add nsw i32 %79, 7
  %81 = sdiv i32 %80, 8
  %82 = load %union.octeon_rh*, %union.octeon_rh** %9, align 8
  %83 = bitcast %union.octeon_rh* %82 to %struct.TYPE_5__*
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, %81
  store i32 %86, i32* %84, align 4
  %87 = load %struct.lio_droq_info*, %struct.lio_droq_info** %8, align 8
  %88 = getelementptr inbounds %struct.lio_droq_info, %struct.lio_droq_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* %12, align 8
  %91 = add nsw i64 %90, %89
  store i64 %91, i64* %12, align 8
  %92 = load %union.octeon_rh*, %union.octeon_rh** %9, align 8
  %93 = call i64 @lio_opcode_slow_path(%union.octeon_rh* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %72
  %96 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %97 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %98 = load %union.octeon_rh*, %union.octeon_rh** %9, align 8
  %99 = load %struct.lio_droq_info*, %struct.lio_droq_info** %8, align 8
  %100 = call i64 @lio_droq_dispatch_pkt(%struct.octeon_device* %96, %struct.lio_droq* %97, %union.octeon_rh* %98, %struct.lio_droq_info* %99)
  store i64 %100, i64* %15, align 8
  %101 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %102 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* %15, align 8
  %105 = trunc i64 %104 to i32
  %106 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %107 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %106, i32 0, i32 8
  %108 = load i32, i32* %107, align 8
  %109 = call i8* @lio_incr_index(i64 %103, i32 %105, i32 %108)
  %110 = ptrtoint i8* %109 to i64
  %111 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %112 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %111, i32 0, i32 0
  store i64 %110, i64* %112, align 8
  %113 = load i64, i64* %15, align 8
  %114 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %115 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %114, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = add nsw i64 %116, %113
  store i64 %117, i64* %115, align 8
  br label %276

118:                                              ; preds = %72
  %119 = load %struct.lio_droq_info*, %struct.lio_droq_info** %8, align 8
  %120 = getelementptr inbounds %struct.lio_droq_info, %struct.lio_droq_info* %119, i32 0, i32 0
  %121 = load i64, i64* %120, align 8
  %122 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %123 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = icmp sle i64 %121, %124
  br i1 %125, label %126, label %165

126:                                              ; preds = %118
  %127 = load %struct.lio_droq_info*, %struct.lio_droq_info** %8, align 8
  %128 = getelementptr inbounds %struct.lio_droq_info, %struct.lio_droq_info* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  store i64 %129, i64* %14, align 8
  %130 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %131 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %130, i32 0, i32 9
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %134 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %136, i32 0, i32 0
  %138 = load %struct.mbuf*, %struct.mbuf** %137, align 8
  store %struct.mbuf* %138, %struct.mbuf** %13, align 8
  %139 = load i64, i64* %14, align 8
  %140 = trunc i64 %139 to i32
  %141 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %142 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %141, i32 0, i32 0
  store i32 %140, i32* %142, align 4
  %143 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %144 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %143, i32 0, i32 9
  %145 = load %struct.TYPE_6__*, %struct.TYPE_6__** %144, align 8
  %146 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %147 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %146, i32 0, i32 0
  %148 = load i64, i64* %147, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %145, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %149, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %150, align 8
  %151 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %152 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %151, i32 0, i32 0
  %153 = load i64, i64* %152, align 8
  %154 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %155 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %154, i32 0, i32 8
  %156 = load i32, i32* %155, align 8
  %157 = call i8* @lio_incr_index(i64 %153, i32 1, i32 %156)
  %158 = ptrtoint i8* %157 to i64
  %159 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %160 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %159, i32 0, i32 0
  store i64 %158, i64* %160, align 8
  %161 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %162 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %161, i32 0, i32 1
  %163 = load i64, i64* %162, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %162, align 8
  br label %247

165:                                              ; preds = %118
  store i32 0, i32* %16, align 4
  store i64 0, i64* %14, align 8
  br label %166

166:                                              ; preds = %219, %165
  %167 = load i64, i64* %14, align 8
  %168 = load %struct.lio_droq_info*, %struct.lio_droq_info** %8, align 8
  %169 = getelementptr inbounds %struct.lio_droq_info, %struct.lio_droq_info* %168, i32 0, i32 0
  %170 = load i64, i64* %169, align 8
  %171 = icmp slt i64 %167, %170
  br i1 %171, label %172, label %246

172:                                              ; preds = %166
  %173 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %174 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = trunc i64 %175 to i32
  store i32 %176, i32* %18, align 4
  %177 = load i64, i64* %14, align 8
  %178 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %179 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %178, i32 0, i32 2
  %180 = load i64, i64* %179, align 8
  %181 = add nsw i64 %177, %180
  %182 = load %struct.lio_droq_info*, %struct.lio_droq_info** %8, align 8
  %183 = getelementptr inbounds %struct.lio_droq_info, %struct.lio_droq_info* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = icmp sgt i64 %181, %184
  br i1 %185, label %186, label %192

186:                                              ; preds = %172
  %187 = load %struct.lio_droq_info*, %struct.lio_droq_info** %8, align 8
  %188 = getelementptr inbounds %struct.lio_droq_info, %struct.lio_droq_info* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load i64, i64* %14, align 8
  %191 = sub nsw i64 %189, %190
  br label %196

192:                                              ; preds = %172
  %193 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %194 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %193, i32 0, i32 2
  %195 = load i64, i64* %194, align 8
  br label %196

196:                                              ; preds = %192, %186
  %197 = phi i64 [ %191, %186 ], [ %195, %192 ]
  %198 = trunc i64 %197 to i32
  store i32 %198, i32* %17, align 4
  %199 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %200 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %199, i32 0, i32 9
  %201 = load %struct.TYPE_6__*, %struct.TYPE_6__** %200, align 8
  %202 = load i32, i32* %18, align 4
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i64 %203
  %205 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %204, i32 0, i32 0
  %206 = load %struct.mbuf*, %struct.mbuf** %205, align 8
  store %struct.mbuf* %206, %struct.mbuf** %19, align 8
  %207 = load i32, i32* %17, align 4
  %208 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %209 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %208, i32 0, i32 0
  store i32 %207, i32* %209, align 4
  %210 = load i32, i32* %16, align 4
  %211 = call i64 @__predict_true(i32 %210)
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %217

213:                                              ; preds = %196
  %214 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %215 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %216 = call i32 @m_cat(%struct.mbuf* %214, %struct.mbuf* %215)
  br label %219

217:                                              ; preds = %196
  %218 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  store %struct.mbuf* %218, %struct.mbuf** %13, align 8
  store i32 1, i32* %16, align 4
  br label %219

219:                                              ; preds = %217, %213
  %220 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %221 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %220, i32 0, i32 9
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %224 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i64 %225
  %227 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %226, i32 0, i32 0
  store %struct.mbuf* null, %struct.mbuf** %227, align 8
  %228 = load i32, i32* %17, align 4
  %229 = sext i32 %228 to i64
  %230 = load i64, i64* %14, align 8
  %231 = add nsw i64 %230, %229
  store i64 %231, i64* %14, align 8
  %232 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %233 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %232, i32 0, i32 0
  %234 = load i64, i64* %233, align 8
  %235 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %236 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %235, i32 0, i32 8
  %237 = load i32, i32* %236, align 8
  %238 = call i8* @lio_incr_index(i64 %234, i32 1, i32 %237)
  %239 = ptrtoint i8* %238 to i64
  %240 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %241 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %240, i32 0, i32 0
  store i64 %239, i64* %241, align 8
  %242 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %243 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %242, i32 0, i32 1
  %244 = load i64, i64* %243, align 8
  %245 = add nsw i64 %244, 1
  store i64 %245, i64* %243, align 8
  br label %166

246:                                              ; preds = %166
  br label %247

247:                                              ; preds = %246, %126
  %248 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %249 = icmp ne %struct.mbuf* %248, null
  br i1 %249, label %250, label %275

250:                                              ; preds = %247
  %251 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %252 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %251, i32 0, i32 5
  %253 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %252, i32 0, i32 2
  %254 = load i32 (%struct.mbuf*, i64, %union.octeon_rh*, %struct.lio_droq.0*, i32)*, i32 (%struct.mbuf*, i64, %union.octeon_rh*, %struct.lio_droq.0*, i32)** %253, align 8
  %255 = icmp ne i32 (%struct.mbuf*, i64, %union.octeon_rh*, %struct.lio_droq.0*, i32)* %254, null
  br i1 %255, label %256, label %271

256:                                              ; preds = %250
  %257 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %258 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %257, i32 0, i32 5
  %259 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %258, i32 0, i32 2
  %260 = load i32 (%struct.mbuf*, i64, %union.octeon_rh*, %struct.lio_droq.0*, i32)*, i32 (%struct.mbuf*, i64, %union.octeon_rh*, %struct.lio_droq.0*, i32)** %259, align 8
  %261 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %262 = load i64, i64* %14, align 8
  %263 = load %union.octeon_rh*, %union.octeon_rh** %9, align 8
  %264 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %265 = bitcast %struct.lio_droq* %264 to %struct.lio_droq.0*
  %266 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %267 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %266, i32 0, i32 5
  %268 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %267, i32 0, i32 1
  %269 = load i32, i32* %268, align 8
  %270 = call i32 %260(%struct.mbuf* %261, i64 %262, %union.octeon_rh* %263, %struct.lio_droq.0* %265, i32 %269)
  br label %274

271:                                              ; preds = %250
  %272 = load %struct.mbuf*, %struct.mbuf** %13, align 8
  %273 = call i32 @lio_recv_buffer_free(%struct.mbuf* %272)
  br label %274

274:                                              ; preds = %271, %256
  br label %275

275:                                              ; preds = %274, %247
  br label %276

276:                                              ; preds = %275, %95
  %277 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %278 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %277, i32 0, i32 1
  %279 = load i64, i64* %278, align 8
  %280 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %281 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %280, i32 0, i32 3
  %282 = load i64, i64* %281, align 8
  %283 = icmp sge i64 %279, %282
  br i1 %283, label %284, label %296

284:                                              ; preds = %276
  %285 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %286 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %287 = call i32 @lio_droq_refill(%struct.octeon_device* %285, %struct.lio_droq* %286)
  store i32 %287, i32* %20, align 4
  %288 = call i32 (...) @wmb()
  %289 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %290 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %291 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %290, i32 0, i32 7
  %292 = load i32, i32* %291, align 4
  %293 = load i32, i32* %20, align 4
  %294 = call i32 @lio_write_csr32(%struct.octeon_device* %289, i32 %292, i32 %293)
  %295 = call i32 (...) @__compiler_membar()
  br label %296

296:                                              ; preds = %284, %276
  br label %297

297:                                              ; preds = %296
  %298 = load i64, i64* %10, align 8
  %299 = add nsw i64 %298, 1
  store i64 %299, i64* %10, align 8
  br label %22

300:                                              ; preds = %44, %22
  %301 = load i64, i64* %10, align 8
  %302 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %303 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %302, i32 0, i32 4
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 2
  %305 = load i32, i32* %304, align 8
  %306 = sext i32 %305 to i64
  %307 = add nsw i64 %306, %301
  %308 = trunc i64 %307 to i32
  store i32 %308, i32* %304, align 8
  %309 = load i64, i64* %12, align 8
  %310 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %311 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %310, i32 0, i32 4
  %312 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %311, i32 0, i32 1
  %313 = load i32, i32* %312, align 4
  %314 = sext i32 %313 to i64
  %315 = add nsw i64 %314, %309
  %316 = trunc i64 %315 to i32
  store i32 %316, i32* %312, align 4
  %317 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %318 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %317, i32 0, i32 6
  %319 = call i32 @tcp_lro_flush_all(i32* %318)
  %320 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %321 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %320, i32 0, i32 5
  %322 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = icmp ne i64 %323, 0
  br i1 %324, label %325, label %348

325:                                              ; preds = %300
  %326 = load i64, i64* %7, align 8
  %327 = load i64, i64* %10, align 8
  %328 = sub nsw i64 %326, %327
  %329 = icmp ne i64 %328, 0
  br i1 %329, label %330, label %348

330:                                              ; preds = %325
  %331 = load %struct.octeon_device*, %struct.octeon_device** %5, align 8
  %332 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %333 = load i64, i64* %7, align 8
  %334 = load i64, i64* %10, align 8
  %335 = sub nsw i64 %333, %334
  %336 = call i32 @lio_droq_drop_packets(%struct.octeon_device* %331, %struct.lio_droq* %332, i64 %335)
  %337 = load i64, i64* %7, align 8
  %338 = load i64, i64* %10, align 8
  %339 = sub nsw i64 %337, %338
  %340 = load %struct.lio_droq*, %struct.lio_droq** %6, align 8
  %341 = getelementptr inbounds %struct.lio_droq, %struct.lio_droq* %340, i32 0, i32 4
  %342 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %341, i32 0, i32 0
  %343 = load i32, i32* %342, align 8
  %344 = sext i32 %343 to i64
  %345 = add nsw i64 %344, %339
  %346 = trunc i64 %345 to i32
  store i32 %346, i32* %342, align 8
  %347 = load i64, i64* %7, align 8
  store i64 %347, i64* %4, align 8
  br label %350

348:                                              ; preds = %325, %300
  %349 = load i64, i64* %10, align 8
  store i64 %349, i64* %4, align 8
  br label %350

350:                                              ; preds = %348, %330
  %351 = load i64, i64* %4, align 8
  ret i64 %351
}

declare dso_local i32 @lio_swap_8B_data(i32*, i32) #1

declare dso_local i32 @lio_dev_err(%struct.octeon_device*, i8*, i32, i64, i64) #1

declare dso_local i32 @hexdump(i32*, i32, i32*, i32) #1

declare dso_local i8* @lio_incr_index(i64, i32, i32) #1

declare dso_local i64 @lio_opcode_slow_path(%union.octeon_rh*) #1

declare dso_local i64 @lio_droq_dispatch_pkt(%struct.octeon_device*, %struct.lio_droq*, %union.octeon_rh*, %struct.lio_droq_info*) #1

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @m_cat(%struct.mbuf*, %struct.mbuf*) #1

declare dso_local i32 @lio_recv_buffer_free(%struct.mbuf*) #1

declare dso_local i32 @lio_droq_refill(%struct.octeon_device*, %struct.lio_droq*) #1

declare dso_local i32 @wmb(...) #1

declare dso_local i32 @lio_write_csr32(%struct.octeon_device*, i32, i32) #1

declare dso_local i32 @__compiler_membar(...) #1

declare dso_local i32 @tcp_lro_flush_all(i32*) #1

declare dso_local i32 @lio_droq_drop_packets(%struct.octeon_device*, %struct.lio_droq*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
