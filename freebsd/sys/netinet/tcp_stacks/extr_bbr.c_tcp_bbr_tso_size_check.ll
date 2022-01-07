; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_tcp_bbr_tso_size_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_tcp_bbr_tso_size_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_7__*, i64, %struct.TYPE_10__*, i64 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i64, i32, i32 }

@BBR_MIN_SEG = common dso_local global i32 0, align 4
@BBR_UNIT = common dso_local global i32 0, align 4
@ONE_POINT_TWO_MEG = common dso_local global i32 0, align 4
@PACE_MAX_IP_BYTES = common dso_local global i32 0, align 4
@bbr_all_get_min = common dso_local global i64 0, align 8
@FIVETWELVE_MBPS = common dso_local global i32 0, align 4
@SB_TLS_IFNET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i32)* @tcp_bbr_tso_size_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_bbr_tso_size_check(%struct.tcp_bbr* %0, i32 %1) #0 {
  %3 = alloca %struct.tcp_bbr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %14 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %15 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %14, i32 0, i32 6
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %20 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %2
  %24 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %25 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %24, i32 0, i32 6
  %26 = load %struct.TYPE_10__*, %struct.TYPE_10__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %30 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = sub nsw i64 %28, %31
  %33 = trunc i64 %32 to i32
  store i32 %33, i32* %8, align 4
  br label %42

34:                                               ; preds = %2
  %35 = load i32, i32* @BBR_MIN_SEG, align 4
  %36 = sext i32 %35 to i64
  %37 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %38 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = sub nsw i64 %36, %39
  %41 = trunc i64 %40 to i32
  store i32 %41, i32* %8, align 4
  br label %42

42:                                               ; preds = %34, %23
  %43 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %44 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %43, i32 0, i32 3
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  store i32 %46, i32* %6, align 4
  %47 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %48 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %147

51:                                               ; preds = %42
  %52 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %53 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %52, i32 0, i32 2
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %71

56:                                               ; preds = %51
  %57 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %58 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %57, i32 0, i32 6
  %59 = load %struct.TYPE_10__*, %struct.TYPE_10__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %63 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = sub nsw i64 %61, %64
  %66 = mul nsw i64 %65, 2
  %67 = trunc i64 %66 to i32
  %68 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %69 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  store i32 %67, i32* %70, align 4
  br label %100

71:                                               ; preds = %51
  %72 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %73 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %72, i32 0, i32 7
  %74 = load i64, i64* %73, align 8
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %85

76:                                               ; preds = %71
  %77 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %78 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %79 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %78, i32 0, i32 6
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %79, align 8
  %81 = call i32 @bbr_initial_cwnd(%struct.tcp_bbr* %77, %struct.TYPE_10__* %80)
  %82 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %83 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %83, i32 0, i32 1
  store i32 %81, i32* %84, align 4
  br label %99

85:                                               ; preds = %71
  %86 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %87 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %86, i32 0, i32 6
  %88 = load %struct.TYPE_10__*, %struct.TYPE_10__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %92 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %91, i32 0, i32 0
  %93 = load i64, i64* %92, align 8
  %94 = sub nsw i64 %90, %93
  %95 = trunc i64 %94 to i32
  %96 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %97 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %96, i32 0, i32 3
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 1
  store i32 %95, i32* %98, align 4
  br label %99

99:                                               ; preds = %85, %76
  br label %100

100:                                              ; preds = %99, %56
  %101 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %102 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %101, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %107 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %106, i32 0, i32 6
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %105, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %100
  %113 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %114 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %113, i32 0, i32 6
  %115 = load %struct.TYPE_10__*, %struct.TYPE_10__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %115, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = trunc i64 %117 to i32
  %119 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %120 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %119, i32 0, i32 3
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 0
  store i32 %118, i32* %121, align 8
  br label %122

122:                                              ; preds = %112, %100
  %123 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %124 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %123, i32 0, i32 3
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load i32, i32* %8, align 4
  %130 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %131 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %130, i32 0, i32 3
  %132 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %131, i32 0, i32 1
  store i32 %129, i32* %132, align 4
  br label %133

133:                                              ; preds = %128, %122
  %134 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %135 = load i32, i32* %4, align 4
  %136 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %137 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %136, i32 0, i32 3
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load i32, i32* %6, align 4
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @bbr_log_type_tsosize(%struct.tcp_bbr* %134, i32 %135, i32 %139, i32 %140, i32 %141, i32 %142, i32 0)
  %144 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %145 = load i32, i32* %4, align 4
  %146 = call i32 @bbr_adjust_for_hw_pacing(%struct.tcp_bbr* %144, i32 %145)
  br label %387

147:                                              ; preds = %42
  %148 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %149 = call i32 @bbr_get_bw(%struct.tcp_bbr* %148)
  store i32 %149, i32* %5, align 4
  %150 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %151 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %150, i32 0, i32 6
  %152 = load %struct.TYPE_10__*, %struct.TYPE_10__** %151, align 8
  %153 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 8
  %155 = call i64 @IN_RECOVERY(i32 %154)
  %156 = icmp ne i64 %155, 0
  br i1 %156, label %157, label %164

157:                                              ; preds = %147
  %158 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %159 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  %161 = icmp eq i64 %160, 0
  br i1 %161, label %162, label %164

162:                                              ; preds = %157
  %163 = load i32, i32* %8, align 4
  store i32 %163, i32* %7, align 4
  br label %315

164:                                              ; preds = %157, %147
  %165 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %166 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %165, i32 0, i32 2
  %167 = load i64, i64* %166, align 8
  %168 = icmp ne i64 %167, 0
  br i1 %168, label %169, label %211

169:                                              ; preds = %164
  %170 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %171 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %171, i32 0, i32 2
  %173 = load i32, i32* %172, align 8
  %174 = load i32, i32* @BBR_UNIT, align 4
  %175 = icmp ne i32 %173, %174
  br i1 %175, label %176, label %186

176:                                              ; preds = %169
  %177 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %178 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %177, i32 0, i32 3
  %179 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 8
  %181 = load i32, i32* %5, align 4
  %182 = mul nsw i32 %181, %180
  store i32 %182, i32* %5, align 4
  %183 = load i32, i32* @BBR_UNIT, align 4
  %184 = load i32, i32* %5, align 4
  %185 = sdiv i32 %184, %183
  store i32 %185, i32* %5, align 4
  br label %186

186:                                              ; preds = %176, %169
  %187 = load i32, i32* %5, align 4
  %188 = sdiv i32 %187, 1024
  store i32 %188, i32* %9, align 4
  %189 = load i32, i32* %9, align 4
  %190 = icmp sgt i32 %189, 65536
  br i1 %190, label %191, label %192

191:                                              ; preds = %186
  store i32 65536, i32* %9, align 4
  br label %192

192:                                              ; preds = %191, %186
  %193 = load i32, i32* %9, align 4
  %194 = load i32, i32* %8, align 4
  %195 = sdiv i32 %193, %194
  store i32 %195, i32* %7, align 4
  %196 = load i32, i32* %5, align 4
  %197 = load i32, i32* @ONE_POINT_TWO_MEG, align 4
  %198 = icmp slt i32 %196, %197
  br i1 %198, label %199, label %200

199:                                              ; preds = %192
  store i32 1, i32* %11, align 4
  br label %201

200:                                              ; preds = %192
  store i32 2, i32* %11, align 4
  br label %201

201:                                              ; preds = %200, %199
  %202 = load i32, i32* %7, align 4
  %203 = load i32, i32* %11, align 4
  %204 = icmp slt i32 %202, %203
  br i1 %204, label %205, label %207

205:                                              ; preds = %201
  %206 = load i32, i32* %11, align 4
  store i32 %206, i32* %7, align 4
  br label %207

207:                                              ; preds = %205, %201
  %208 = load i32, i32* %8, align 4
  %209 = load i32, i32* %7, align 4
  %210 = mul nsw i32 %209, %208
  store i32 %210, i32* %7, align 4
  br label %314

211:                                              ; preds = %164
  %212 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %213 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %212, i32 0, i32 5
  %214 = load i64, i64* %213, align 8
  %215 = icmp ne i64 %214, 0
  br i1 %215, label %216, label %222

216:                                              ; preds = %211
  %217 = load i32, i32* @PACE_MAX_IP_BYTES, align 4
  %218 = load i32, i32* %8, align 4
  %219 = sdiv i32 %217, %218
  %220 = load i32, i32* %8, align 4
  %221 = mul nsw i32 %219, %220
  store i32 %221, i32* %7, align 4
  br label %313

222:                                              ; preds = %211
  %223 = load i32, i32* %5, align 4
  %224 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %225 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %225, i32 0, i32 3
  %227 = load i32, i32* %226, align 4
  %228 = icmp sle i32 %223, %227
  br i1 %228, label %229, label %277

229:                                              ; preds = %222
  %230 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %231 = load i32, i32* @BBR_UNIT, align 4
  %232 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %233 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %232, i32 0, i32 3
  %234 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %233, i32 0, i32 8
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* %5, align 4
  %237 = call i32 @bbr_get_pacing_length(%struct.tcp_bbr* %230, i32 %231, i32 %235, i32 %236)
  store i32 %237, i32* %12, align 4
  %238 = load i32, i32* %12, align 4
  %239 = load i32, i32* %8, align 4
  %240 = icmp sgt i32 %238, %239
  br i1 %240, label %241, label %260

241:                                              ; preds = %229
  %242 = load i32, i32* %12, align 4
  %243 = load i32, i32* %8, align 4
  %244 = sdiv i32 %242, %243
  store i32 %244, i32* %7, align 4
  %245 = load i32, i32* %7, align 4
  %246 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %247 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %246, i32 0, i32 3
  %248 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %247, i32 0, i32 4
  %249 = load i32, i32* %248, align 8
  %250 = icmp sgt i32 %245, %249
  br i1 %250, label %251, label %256

251:                                              ; preds = %241
  %252 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %253 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %252, i32 0, i32 3
  %254 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %253, i32 0, i32 4
  %255 = load i32, i32* %254, align 8
  store i32 %255, i32* %7, align 4
  br label %256

256:                                              ; preds = %251, %241
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* %7, align 4
  %259 = mul nsw i32 %258, %257
  store i32 %259, i32* %7, align 4
  br label %276

260:                                              ; preds = %229
  %261 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %262 = call i32 @bbr_minseg(%struct.tcp_bbr* %261)
  store i32 %262, i32* %13, align 4
  %263 = load i32, i32* %12, align 4
  %264 = load i32, i32* %13, align 4
  %265 = icmp sgt i32 %263, %264
  br i1 %265, label %266, label %273

266:                                              ; preds = %260
  %267 = load i64, i64* @bbr_all_get_min, align 8
  %268 = icmp eq i64 %267, 0
  br i1 %268, label %269, label %273

269:                                              ; preds = %266
  %270 = load i32, i32* %12, align 4
  %271 = load i32, i32* %13, align 4
  %272 = call i32 @rounddown(i32 %270, i32 %271)
  store i32 %272, i32* %7, align 4
  br label %275

273:                                              ; preds = %266, %260
  %274 = load i32, i32* %13, align 4
  store i32 %274, i32* %7, align 4
  br label %275

275:                                              ; preds = %273, %269
  br label %276

276:                                              ; preds = %275, %256
  br label %312

277:                                              ; preds = %222
  %278 = load i32, i32* %5, align 4
  %279 = load i32, i32* @FIVETWELVE_MBPS, align 4
  %280 = icmp sgt i32 %278, %279
  br i1 %280, label %281, label %285

281:                                              ; preds = %277
  %282 = load i32, i32* @PACE_MAX_IP_BYTES, align 4
  %283 = load i32, i32* %8, align 4
  %284 = call i32 @rounddown(i32 %282, i32 %283)
  store i32 %284, i32* %7, align 4
  br label %311

285:                                              ; preds = %277
  %286 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %287 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %286, i32 0, i32 3
  %288 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %287, i32 0, i32 5
  %289 = load i32, i32* %288, align 4
  %290 = load i32, i32* %5, align 4
  %291 = sdiv i32 %290, %289
  store i32 %291, i32* %5, align 4
  %292 = load i32, i32* %5, align 4
  %293 = load i32, i32* %8, align 4
  %294 = call i32 @roundup(i32 %292, i32 %293)
  store i32 %294, i32* %7, align 4
  %295 = load i32, i32* %7, align 4
  %296 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %297 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %296, i32 0, i32 3
  %298 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %297, i32 0, i32 4
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* %8, align 4
  %301 = mul nsw i32 %299, %300
  %302 = icmp slt i32 %295, %301
  br i1 %302, label %303, label %310

303:                                              ; preds = %285
  %304 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %305 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %304, i32 0, i32 3
  %306 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %305, i32 0, i32 4
  %307 = load i32, i32* %306, align 8
  %308 = load i32, i32* %8, align 4
  %309 = mul nsw i32 %307, %308
  store i32 %309, i32* %7, align 4
  br label %310

310:                                              ; preds = %303, %285
  br label %311

311:                                              ; preds = %310, %281
  br label %312

312:                                              ; preds = %311, %276
  br label %313

313:                                              ; preds = %312, %216
  br label %314

314:                                              ; preds = %313, %207
  br label %315

315:                                              ; preds = %314, %162
  %316 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %317 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %316, i32 0, i32 3
  %318 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %317, i32 0, i32 6
  %319 = load i32, i32* %318, align 8
  %320 = icmp ne i32 %319, 0
  br i1 %320, label %321, label %337

321:                                              ; preds = %315
  %322 = load i32, i32* %7, align 4
  %323 = load i32, i32* %8, align 4
  %324 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %325 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %324, i32 0, i32 3
  %326 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %325, i32 0, i32 6
  %327 = load i32, i32* %326, align 8
  %328 = mul nsw i32 %323, %327
  %329 = icmp slt i32 %322, %328
  br i1 %329, label %330, label %337

330:                                              ; preds = %321
  %331 = load i32, i32* %8, align 4
  %332 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %333 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %332, i32 0, i32 3
  %334 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %333, i32 0, i32 6
  %335 = load i32, i32* %334, align 8
  %336 = mul nsw i32 %331, %335
  store i32 %336, i32* %7, align 4
  br label %337

337:                                              ; preds = %330, %321, %315
  %338 = load i32, i32* %7, align 4
  %339 = load i32, i32* @PACE_MAX_IP_BYTES, align 4
  %340 = icmp sgt i32 %338, %339
  br i1 %340, label %341, label %345

341:                                              ; preds = %337
  %342 = load i32, i32* @PACE_MAX_IP_BYTES, align 4
  %343 = load i32, i32* %8, align 4
  %344 = call i32 @rounddown(i32 %342, i32 %343)
  store i32 %344, i32* %7, align 4
  br label %345

345:                                              ; preds = %341, %337
  %346 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %347 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %346, i32 0, i32 3
  %348 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %347, i32 0, i32 7
  %349 = load i32, i32* %348, align 4
  %350 = icmp ne i32 %349, 0
  br i1 %350, label %351, label %367

351:                                              ; preds = %345
  %352 = load i32, i32* %7, align 4
  %353 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %354 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %353, i32 0, i32 3
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 7
  %356 = load i32, i32* %355, align 4
  %357 = load i32, i32* %8, align 4
  %358 = mul nsw i32 %356, %357
  %359 = icmp sgt i32 %352, %358
  br i1 %359, label %360, label %367

360:                                              ; preds = %351
  %361 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %362 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %361, i32 0, i32 3
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 7
  %364 = load i32, i32* %363, align 4
  %365 = load i32, i32* %8, align 4
  %366 = mul nsw i32 %364, %365
  store i32 %366, i32* %7, align 4
  br label %367

367:                                              ; preds = %360, %351, %345
  %368 = load i32, i32* %6, align 4
  %369 = load i32, i32* %7, align 4
  %370 = icmp ne i32 %368, %369
  br i1 %370, label %371, label %383

371:                                              ; preds = %367
  %372 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %373 = load i32, i32* %4, align 4
  %374 = load i32, i32* %7, align 4
  %375 = load i32, i32* %10, align 4
  %376 = load i32, i32* %6, align 4
  %377 = load i32, i32* %8, align 4
  %378 = call i32 @bbr_log_type_tsosize(%struct.tcp_bbr* %372, i32 %373, i32 %374, i32 %375, i32 %376, i32 %377, i32 0)
  %379 = load i32, i32* %7, align 4
  %380 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %381 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %380, i32 0, i32 3
  %382 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %381, i32 0, i32 1
  store i32 %379, i32* %382, align 4
  br label %383

383:                                              ; preds = %371, %367
  %384 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %385 = load i32, i32* %4, align 4
  %386 = call i32 @bbr_adjust_for_hw_pacing(%struct.tcp_bbr* %384, i32 %385)
  br label %387

387:                                              ; preds = %383, %133
  ret void
}

declare dso_local i32 @bbr_initial_cwnd(%struct.tcp_bbr*, %struct.TYPE_10__*) #1

declare dso_local i32 @bbr_log_type_tsosize(%struct.tcp_bbr*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @bbr_adjust_for_hw_pacing(%struct.tcp_bbr*, i32) #1

declare dso_local i32 @bbr_get_bw(%struct.tcp_bbr*) #1

declare dso_local i64 @IN_RECOVERY(i32) #1

declare dso_local i32 @bbr_get_pacing_length(%struct.tcp_bbr*, i32, i32, i32) #1

declare dso_local i32 @bbr_minseg(%struct.tcp_bbr*) #1

declare dso_local i32 @rounddown(i32, i32) #1

declare dso_local i32 @roundup(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
