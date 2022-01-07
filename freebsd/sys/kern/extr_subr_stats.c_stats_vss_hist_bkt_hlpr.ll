; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_vss_hist_bkt_hlpr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_subr_stats.c_stats_vss_hist_bkt_hlpr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vss_hist_hlpr_info = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { %struct.voistatdata_numeric, %struct.voistatdata_numeric }
%struct.voistatdata_numeric = type { %struct.TYPE_11__, %struct.TYPE_20__, %struct.TYPE_19__, %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }
%struct.TYPE_19__ = type { i64, i64 }
%struct.TYPE_18__ = type { i64, i32 }
%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_12__ = type { i64 }

@BKT_USR = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vss_hist_hlpr_info*, i64, %struct.voistatdata_numeric*, %struct.voistatdata_numeric*)* @stats_vss_hist_bkt_hlpr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @stats_vss_hist_bkt_hlpr(%struct.vss_hist_hlpr_info* %0, i64 %1, %struct.voistatdata_numeric* %2, %struct.voistatdata_numeric* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.vss_hist_hlpr_info*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.voistatdata_numeric*, align 8
  %9 = alloca %struct.voistatdata_numeric*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.vss_hist_hlpr_info* %0, %struct.vss_hist_hlpr_info** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.voistatdata_numeric* %2, %struct.voistatdata_numeric** %8, align 8
  store %struct.voistatdata_numeric* %3, %struct.voistatdata_numeric** %9, align 8
  store i64 0, i64* %10, align 8
  store i32 0, i32* %11, align 4
  %13 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %14 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  switch i32 %15, label %231 [
    i32 139, label %16
    i32 140, label %21
    i32 138, label %34
  ]

16:                                               ; preds = %4
  %17 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %18 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %17, i32 0, i32 5
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  store i64 %20, i64* %10, align 8
  br label %232

21:                                               ; preds = %4
  %22 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %23 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %27 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %26, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = sext i32 %29 to i64
  %31 = load i64, i64* %7, align 8
  %32 = add i64 %30, %31
  %33 = call i64 @stats_pow_u64(i32 %25, i64 %32)
  store i64 %33, i64* %10, align 8
  br label %232

34:                                               ; preds = %4
  store i64 1, i64* %12, align 8
  %35 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %36 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  switch i32 %37, label %214 [
    i32 137, label %38
    i32 134, label %56
    i32 136, label %73
    i32 133, label %91
    i32 135, label %108
    i32 132, label %125
    i32 131, label %142
    i32 129, label %159
    i32 130, label %176
    i32 128, label %195
  ]

38:                                               ; preds = %34
  br label %39

39:                                               ; preds = %52, %38
  %40 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %41 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = load i64, i64* %12, align 8
  %45 = call i64 @stats_pow_u64(i32 %43, i64 %44)
  %46 = trunc i64 %45 to i32
  %47 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %8, align 8
  %48 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = icmp sle i32 %46, %50
  br i1 %51, label %52, label %55

52:                                               ; preds = %39
  %53 = load i64, i64* %12, align 8
  %54 = add nsw i64 %53, 1
  store i64 %54, i64* %12, align 8
  br label %39

55:                                               ; preds = %39
  br label %215

56:                                               ; preds = %34
  br label %57

57:                                               ; preds = %69, %56
  %58 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %59 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i64 @stats_pow_u64(i32 %61, i64 %62)
  %64 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %8, align 8
  %65 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %64, i32 0, i32 4
  %66 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = icmp ule i64 %63, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %57
  %70 = load i64, i64* %12, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %12, align 8
  br label %57

72:                                               ; preds = %57
  br label %215

73:                                               ; preds = %34
  br label %74

74:                                               ; preds = %87, %73
  %75 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %76 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %75, i32 0, i32 3
  %77 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load i64, i64* %12, align 8
  %80 = call i64 @stats_pow_u64(i32 %78, i64 %79)
  %81 = trunc i64 %80 to i32
  %82 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %8, align 8
  %83 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 8
  %86 = icmp sle i32 %81, %85
  br i1 %86, label %87, label %90

87:                                               ; preds = %74
  %88 = load i64, i64* %12, align 8
  %89 = add nsw i64 %88, 1
  store i64 %89, i64* %12, align 8
  br label %74

90:                                               ; preds = %74
  br label %215

91:                                               ; preds = %34
  br label %92

92:                                               ; preds = %104, %91
  %93 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %94 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = load i64, i64* %12, align 8
  %98 = call i64 @stats_pow_u64(i32 %96, i64 %97)
  %99 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %8, align 8
  %100 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %99, i32 0, i32 3
  %101 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp sle i64 %98, %102
  br i1 %103, label %104, label %107

104:                                              ; preds = %92
  %105 = load i64, i64* %12, align 8
  %106 = add nsw i64 %105, 1
  store i64 %106, i64* %12, align 8
  br label %92

107:                                              ; preds = %92
  br label %215

108:                                              ; preds = %34
  br label %109

109:                                              ; preds = %121, %108
  %110 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %111 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %110, i32 0, i32 3
  %112 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* %12, align 8
  %115 = call i64 @stats_pow_u64(i32 %113, i64 %114)
  %116 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %8, align 8
  %117 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %116, i32 0, i32 2
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = icmp sle i64 %115, %119
  br i1 %120, label %121, label %124

121:                                              ; preds = %109
  %122 = load i64, i64* %12, align 8
  %123 = add nsw i64 %122, 1
  store i64 %123, i64* %12, align 8
  br label %109

124:                                              ; preds = %109
  br label %215

125:                                              ; preds = %34
  br label %126

126:                                              ; preds = %138, %125
  %127 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %128 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %127, i32 0, i32 3
  %129 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = load i64, i64* %12, align 8
  %132 = call i64 @stats_pow_u64(i32 %130, i64 %131)
  %133 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %8, align 8
  %134 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %133, i32 0, i32 2
  %135 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp ule i64 %132, %136
  br i1 %137, label %138, label %141

138:                                              ; preds = %126
  %139 = load i64, i64* %12, align 8
  %140 = add nsw i64 %139, 1
  store i64 %140, i64* %12, align 8
  br label %126

141:                                              ; preds = %126
  br label %215

142:                                              ; preds = %34
  br label %143

143:                                              ; preds = %142
  %144 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %145 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %144, i32 0, i32 3
  %146 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 8
  %148 = load i64, i64* %12, align 8
  %149 = call i64 @stats_pow_u64(i32 %147, i64 %148)
  %150 = trunc i64 %149 to i32
  %151 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %8, align 8
  %152 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @Q_GIVAL(i32 %154)
  %156 = icmp sle i32 %150, %155
  br i1 %156, label %157, label %158

157:                                              ; preds = %143
  br label %158

158:                                              ; preds = %157, %143
  br label %159

159:                                              ; preds = %34, %158
  br label %160

160:                                              ; preds = %159
  %161 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %162 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %161, i32 0, i32 3
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 8
  %165 = load i64, i64* %12, align 8
  %166 = call i64 @stats_pow_u64(i32 %164, i64 %165)
  %167 = trunc i64 %166 to i32
  %168 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %8, align 8
  %169 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @Q_GIVAL(i32 %171)
  %173 = icmp sle i32 %167, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %160
  br label %175

175:                                              ; preds = %174, %160
  br label %176

176:                                              ; preds = %34, %175
  br label %177

177:                                              ; preds = %191, %176
  %178 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %179 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %179, i32 0, i32 1
  %181 = load i32, i32* %180, align 8
  %182 = load i64, i64* %12, align 8
  %183 = call i64 @stats_pow_u64(i32 %181, i64 %182)
  %184 = trunc i64 %183 to i32
  %185 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %8, align 8
  %186 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %185, i32 0, i32 0
  %187 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @Q_GIVAL(i32 %188)
  %190 = icmp sle i32 %184, %189
  br i1 %190, label %191, label %194

191:                                              ; preds = %177
  %192 = load i64, i64* %12, align 8
  %193 = add nsw i64 %192, 1
  store i64 %193, i64* %12, align 8
  br label %177

194:                                              ; preds = %177
  br label %215

195:                                              ; preds = %34
  br label %196

196:                                              ; preds = %210, %195
  %197 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %198 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %197, i32 0, i32 3
  %199 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 8
  %201 = load i64, i64* %12, align 8
  %202 = call i64 @stats_pow_u64(i32 %200, i64 %201)
  %203 = trunc i64 %202 to i32
  %204 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %8, align 8
  %205 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %204, i32 0, i32 0
  %206 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @Q_GIVAL(i32 %207)
  %209 = icmp sle i32 %203, %208
  br i1 %209, label %210, label %213

210:                                              ; preds = %196
  %211 = load i64, i64* %12, align 8
  %212 = add nsw i64 %211, 1
  store i64 %212, i64* %12, align 8
  br label %196

213:                                              ; preds = %196
  br label %215

214:                                              ; preds = %34
  br label %215

215:                                              ; preds = %214, %213, %194, %141, %124, %107, %90, %72, %55
  %216 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %217 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %217, i32 0, i32 1
  %219 = load i32, i32* %218, align 8
  %220 = load i64, i64* %12, align 8
  %221 = call i64 @stats_pow_u64(i32 %219, i64 %220)
  %222 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %223 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 0
  %225 = load i64, i64* %224, align 8
  %226 = sdiv i64 %221, %225
  store i64 %226, i64* %10, align 8
  %227 = load i64, i64* %10, align 8
  %228 = icmp eq i64 %227, 0
  br i1 %228, label %229, label %230

229:                                              ; preds = %215
  store i64 1, i64* %10, align 8
  br label %230

230:                                              ; preds = %229, %215
  br label %232

231:                                              ; preds = %4
  br label %232

232:                                              ; preds = %231, %230, %21, %16
  %233 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %234 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %233, i32 0, i32 0
  %235 = load i32, i32* %234, align 8
  %236 = load i32, i32* @BKT_USR, align 4
  %237 = icmp eq i32 %235, %236
  br i1 %237, label %238, label %259

238:                                              ; preds = %232
  %239 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %8, align 8
  %240 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %241 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %240, i32 0, i32 2
  %242 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %241, i32 0, i32 0
  %243 = load %struct.TYPE_15__*, %struct.TYPE_15__** %242, align 8
  %244 = load i64, i64* %7, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %243, i64 %244
  %246 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %245, i32 0, i32 1
  %247 = bitcast %struct.voistatdata_numeric* %239 to i8*
  %248 = bitcast %struct.voistatdata_numeric* %246 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %247, i8* align 8 %248, i64 64, i1 false)
  %249 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %9, align 8
  %250 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %251 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %250, i32 0, i32 2
  %252 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %251, i32 0, i32 0
  %253 = load %struct.TYPE_15__*, %struct.TYPE_15__** %252, align 8
  %254 = load i64, i64* %7, align 8
  %255 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %253, i64 %254
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 0
  %257 = bitcast %struct.voistatdata_numeric* %249 to i8*
  %258 = bitcast %struct.voistatdata_numeric* %256 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %257, i8* align 8 %258, i64 64, i1 false)
  br label %339

259:                                              ; preds = %232
  %260 = load i64, i64* %10, align 8
  %261 = icmp ne i64 %260, 0
  br i1 %261, label %262, label %336

262:                                              ; preds = %259
  %263 = load %struct.vss_hist_hlpr_info*, %struct.vss_hist_hlpr_info** %6, align 8
  %264 = getelementptr inbounds %struct.vss_hist_hlpr_info, %struct.vss_hist_hlpr_info* %263, i32 0, i32 1
  %265 = load i32, i32* %264, align 4
  switch i32 %265, label %334 [
    i32 137, label %266
    i32 134, label %274
    i32 136, label %281
    i32 133, label %289
    i32 135, label %296
    i32 132, label %303
    i32 131, label %310
    i32 129, label %316
    i32 130, label %322
    i32 128, label %328
  ]

266:                                              ; preds = %262
  %267 = load i64, i64* %10, align 8
  %268 = trunc i64 %267 to i32
  %269 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %9, align 8
  %270 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %269, i32 0, i32 4
  %271 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %270, i32 0, i32 1
  %272 = load i32, i32* %271, align 8
  %273 = add nsw i32 %272, %268
  store i32 %273, i32* %271, align 8
  br label %335

274:                                              ; preds = %262
  %275 = load i64, i64* %10, align 8
  %276 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %9, align 8
  %277 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %276, i32 0, i32 4
  %278 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %277, i32 0, i32 0
  %279 = load i64, i64* %278, align 8
  %280 = add i64 %279, %275
  store i64 %280, i64* %278, align 8
  br label %335

281:                                              ; preds = %262
  %282 = load i64, i64* %10, align 8
  %283 = trunc i64 %282 to i32
  %284 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %9, align 8
  %285 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %284, i32 0, i32 3
  %286 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %285, i32 0, i32 1
  %287 = load i32, i32* %286, align 8
  %288 = add nsw i32 %287, %283
  store i32 %288, i32* %286, align 8
  br label %335

289:                                              ; preds = %262
  %290 = load i64, i64* %10, align 8
  %291 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %9, align 8
  %292 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %291, i32 0, i32 3
  %293 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %292, i32 0, i32 0
  %294 = load i64, i64* %293, align 8
  %295 = add nsw i64 %294, %290
  store i64 %295, i64* %293, align 8
  br label %335

296:                                              ; preds = %262
  %297 = load i64, i64* %10, align 8
  %298 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %9, align 8
  %299 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %298, i32 0, i32 2
  %300 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %299, i32 0, i32 0
  %301 = load i64, i64* %300, align 8
  %302 = add nsw i64 %301, %297
  store i64 %302, i64* %300, align 8
  br label %335

303:                                              ; preds = %262
  %304 = load i64, i64* %10, align 8
  %305 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %9, align 8
  %306 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %305, i32 0, i32 2
  %307 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %306, i32 0, i32 1
  %308 = load i64, i64* %307, align 8
  %309 = add i64 %308, %304
  store i64 %309, i64* %307, align 8
  br label %335

310:                                              ; preds = %262
  %311 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %9, align 8
  %312 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %311, i32 0, i32 1
  %313 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %312, i32 0, i32 1
  %314 = load i64, i64* %10, align 8
  %315 = call i32 @Q_QADDI(i32* %313, i64 %314)
  store i32 %315, i32* %11, align 4
  br label %335

316:                                              ; preds = %262
  %317 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %9, align 8
  %318 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %318, i32 0, i32 0
  %320 = load i64, i64* %10, align 8
  %321 = call i32 @Q_QADDI(i32* %319, i64 %320)
  store i32 %321, i32* %11, align 4
  br label %335

322:                                              ; preds = %262
  %323 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %9, align 8
  %324 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %323, i32 0, i32 0
  %325 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %324, i32 0, i32 1
  %326 = load i64, i64* %10, align 8
  %327 = call i32 @Q_QADDI(i32* %325, i64 %326)
  store i32 %327, i32* %11, align 4
  br label %335

328:                                              ; preds = %262
  %329 = load %struct.voistatdata_numeric*, %struct.voistatdata_numeric** %9, align 8
  %330 = getelementptr inbounds %struct.voistatdata_numeric, %struct.voistatdata_numeric* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %330, i32 0, i32 0
  %332 = load i64, i64* %10, align 8
  %333 = call i32 @Q_QADDI(i32* %331, i64 %332)
  store i32 %333, i32* %11, align 4
  br label %335

334:                                              ; preds = %262
  br label %335

335:                                              ; preds = %334, %328, %322, %316, %310, %303, %296, %289, %281, %274, %266
  br label %338

336:                                              ; preds = %259
  %337 = load i32, i32* @EINVAL, align 4
  store i32 %337, i32* %5, align 4
  br label %341

338:                                              ; preds = %335
  br label %339

339:                                              ; preds = %338, %238
  %340 = load i32, i32* %11, align 4
  store i32 %340, i32* %5, align 4
  br label %341

341:                                              ; preds = %339, %336
  %342 = load i32, i32* %5, align 4
  ret i32 %342
}

declare dso_local i64 @stats_pow_u64(i32, i64) #1

declare dso_local i32 @Q_GIVAL(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @Q_QADDI(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
