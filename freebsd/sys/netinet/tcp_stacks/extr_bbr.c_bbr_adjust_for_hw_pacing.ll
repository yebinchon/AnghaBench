; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_adjust_for_hw_pacing.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/tcp_stacks/extr_bbr.c_bbr_adjust_for_hw_pacing.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcp_bbr = type { i64, i64, i64, %struct.TYPE_6__, %struct.TYPE_4__* }
%struct.TYPE_6__ = type { i32, i32, %struct.tcp_hwrate_limit_table* }
%struct.tcp_hwrate_limit_table = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }

@bbr_hdwr_pace_adjust = common dso_local global i32 0, align 4
@BBR_MIN_SEG = common dso_local global i32 0, align 4
@BBR_UNIT = common dso_local global i32 0, align 4
@bbr_hdwr_pace_floor = common dso_local global i64 0, align 8
@PACE_MAX_IP_BYTES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tcp_bbr*, i32)* @bbr_adjust_for_hw_pacing to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bbr_adjust_for_hw_pacing(%struct.tcp_bbr* %0, i32 %1) #0 {
  %3 = alloca %struct.tcp_bbr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.tcp_hwrate_limit_table*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.tcp_bbr* %0, %struct.tcp_bbr** %3, align 8
  store i32 %1, i32* %4, align 4
  %12 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %13 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp eq i64 %14, 0
  br i1 %15, label %30, label %16

16:                                               ; preds = %2
  %17 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %18 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %17, i32 0, i32 4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = call i64 @IN_RECOVERY(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %30, label %24

24:                                               ; preds = %16
  %25 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %26 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 2
  %28 = load %struct.tcp_hwrate_limit_table*, %struct.tcp_hwrate_limit_table** %27, align 8
  %29 = icmp eq %struct.tcp_hwrate_limit_table* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %24, %16, %2
  br label %258

31:                                               ; preds = %24
  %32 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %33 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31
  br label %258

37:                                               ; preds = %31
  %38 = load i32, i32* @bbr_hdwr_pace_adjust, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %258

41:                                               ; preds = %37
  %42 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %43 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 2
  %45 = load %struct.tcp_hwrate_limit_table*, %struct.tcp_hwrate_limit_table** %44, align 8
  store %struct.tcp_hwrate_limit_table* %45, %struct.tcp_hwrate_limit_table** %5, align 8
  %46 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %47 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %46, i32 0, i32 4
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %52 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp sgt i64 %50, %53
  br i1 %54, label %55, label %66

55:                                               ; preds = %41
  %56 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %57 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %62 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  %65 = trunc i64 %64 to i32
  store i32 %65, i32* %8, align 4
  br label %74

66:                                               ; preds = %41
  %67 = load i32, i32* @BBR_MIN_SEG, align 4
  %68 = sext i32 %67 to i64
  %69 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %70 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = sub nsw i64 %68, %71
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %8, align 4
  br label %74

74:                                               ; preds = %66, %55
  %75 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %76 = load i32, i32* @BBR_UNIT, align 4
  %77 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %78 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %4, align 4
  %82 = call i32 @bbr_get_pacing_delay(%struct.tcp_bbr* %75, i32 %76, i32 %80, i32 %81, i32 1)
  store i32 %82, i32* %6, align 4
  %83 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %84 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* %8, align 4
  %88 = sdiv i32 %86, %87
  store i32 %88, i32* %11, align 4
  %89 = load %struct.tcp_hwrate_limit_table*, %struct.tcp_hwrate_limit_table** %5, align 8
  %90 = getelementptr inbounds %struct.tcp_hwrate_limit_table, %struct.tcp_hwrate_limit_table* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = mul nsw i32 %92, %91
  store i32 %93, i32* %11, align 4
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %11, align 4
  %96 = icmp sgt i32 %94, %95
  br i1 %96, label %97, label %101

97:                                               ; preds = %74
  %98 = load i32, i32* %6, align 4
  %99 = load i32, i32* %11, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %10, align 4
  br label %102

101:                                              ; preds = %74
  store i32 0, i32* %10, align 4
  br label %102

102:                                              ; preds = %101, %97
  %103 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %104 = load i32, i32* %4, align 4
  %105 = load i32, i32* %10, align 4
  %106 = load i32, i32* %6, align 4
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %109 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %108, i32 0, i32 3
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 0
  %111 = load i32, i32* %110, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sdiv i32 %111, %112
  %114 = call i32 @bbr_log_type_tsosize(%struct.tcp_bbr* %103, i32 %104, i32 %105, i32 %106, i32 %107, i32 %113, i32 1)
  %115 = load i32, i32* %10, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %174

117:                                              ; preds = %102
  %118 = load i32, i32* %10, align 4
  %119 = load %struct.tcp_hwrate_limit_table*, %struct.tcp_hwrate_limit_table** %5, align 8
  %120 = getelementptr inbounds %struct.tcp_hwrate_limit_table, %struct.tcp_hwrate_limit_table* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %123 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %122, i32 0, i32 3
  %124 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @max(i32 %121, i32 %125)
  %127 = icmp slt i32 %118, %126
  br i1 %127, label %128, label %174

128:                                              ; preds = %117
  %129 = load i32, i32* %6, align 4
  %130 = load %struct.tcp_hwrate_limit_table*, %struct.tcp_hwrate_limit_table** %5, align 8
  %131 = getelementptr inbounds %struct.tcp_hwrate_limit_table, %struct.tcp_hwrate_limit_table* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = add nsw i32 %129, %132
  %134 = load %struct.tcp_hwrate_limit_table*, %struct.tcp_hwrate_limit_table** %5, align 8
  %135 = getelementptr inbounds %struct.tcp_hwrate_limit_table, %struct.tcp_hwrate_limit_table* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = sdiv i32 %133, %136
  %138 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %139 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %138, i32 0, i32 3
  %140 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %8, align 4
  %143 = sdiv i32 %141, %142
  %144 = call i32 @max(i32 %137, i32 %143)
  store i32 %144, i32* %7, align 4
  %145 = load i32, i32* @bbr_hdwr_pace_adjust, align 4
  %146 = load i32, i32* %7, align 4
  %147 = mul nsw i32 %146, %145
  store i32 %147, i32* %7, align 4
  %148 = load i64, i64* @bbr_hdwr_pace_floor, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %170

150:                                              ; preds = %128
  %151 = load i32, i32* %7, align 4
  %152 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %153 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %152, i32 0, i32 3
  %154 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %153, i32 0, i32 2
  %155 = load %struct.tcp_hwrate_limit_table*, %struct.tcp_hwrate_limit_table** %154, align 8
  %156 = getelementptr inbounds %struct.tcp_hwrate_limit_table, %struct.tcp_hwrate_limit_table* %155, i32 0, i32 1
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %151, %159
  br i1 %160, label %161, label %170

161:                                              ; preds = %150
  %162 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %163 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %162, i32 0, i32 3
  %164 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %163, i32 0, i32 2
  %165 = load %struct.tcp_hwrate_limit_table*, %struct.tcp_hwrate_limit_table** %164, align 8
  %166 = getelementptr inbounds %struct.tcp_hwrate_limit_table, %struct.tcp_hwrate_limit_table* %165, i32 0, i32 1
  %167 = load %struct.TYPE_5__*, %struct.TYPE_5__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 4
  store i32 %169, i32* %7, align 4
  br label %170

170:                                              ; preds = %161, %150, %128
  %171 = load i32, i32* %8, align 4
  %172 = load i32, i32* %7, align 4
  %173 = mul nsw i32 %172, %171
  store i32 %173, i32* %7, align 4
  br label %213

174:                                              ; preds = %117, %102
  %175 = load i32, i32* %10, align 4
  %176 = icmp eq i32 %175, 0
  br i1 %176, label %177, label %207

177:                                              ; preds = %174
  %178 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %179 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @bbr_hdwr_pace_adjust, align 4
  %183 = mul nsw i32 %181, %182
  store i32 %183, i32* %7, align 4
  %184 = load i64, i64* @bbr_hdwr_pace_floor, align 8
  %185 = icmp ne i64 %184, 0
  br i1 %185, label %186, label %206

186:                                              ; preds = %177
  %187 = load i32, i32* %7, align 4
  %188 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %189 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %188, i32 0, i32 3
  %190 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %189, i32 0, i32 2
  %191 = load %struct.tcp_hwrate_limit_table*, %struct.tcp_hwrate_limit_table** %190, align 8
  %192 = getelementptr inbounds %struct.tcp_hwrate_limit_table, %struct.tcp_hwrate_limit_table* %191, i32 0, i32 1
  %193 = load %struct.TYPE_5__*, %struct.TYPE_5__** %192, align 8
  %194 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 4
  %196 = icmp slt i32 %187, %195
  br i1 %196, label %197, label %206

197:                                              ; preds = %186
  %198 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %199 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %198, i32 0, i32 3
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 2
  %201 = load %struct.tcp_hwrate_limit_table*, %struct.tcp_hwrate_limit_table** %200, align 8
  %202 = getelementptr inbounds %struct.tcp_hwrate_limit_table, %struct.tcp_hwrate_limit_table* %201, i32 0, i32 1
  %203 = load %struct.TYPE_5__*, %struct.TYPE_5__** %202, align 8
  %204 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %203, i32 0, i32 0
  %205 = load i32, i32* %204, align 4
  store i32 %205, i32* %7, align 4
  br label %206

206:                                              ; preds = %197, %186, %177
  br label %212

207:                                              ; preds = %174
  %208 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %209 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %208, i32 0, i32 3
  %210 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  store i32 %211, i32* %7, align 4
  br label %212

212:                                              ; preds = %207, %206
  br label %213

213:                                              ; preds = %212, %170
  %214 = load i32, i32* %7, align 4
  %215 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %216 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %215, i32 0, i32 3
  %217 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %216, i32 0, i32 0
  %218 = load i32, i32* %217, align 8
  %219 = icmp sgt i32 %214, %218
  br i1 %219, label %220, label %222

220:                                              ; preds = %213
  %221 = load i32, i32* %7, align 4
  store i32 %221, i32* %9, align 4
  br label %227

222:                                              ; preds = %213
  %223 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %224 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %223, i32 0, i32 3
  %225 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %224, i32 0, i32 0
  %226 = load i32, i32* %225, align 8
  store i32 %226, i32* %9, align 4
  br label %227

227:                                              ; preds = %222, %220
  %228 = load i32, i32* %9, align 4
  %229 = load i32, i32* @PACE_MAX_IP_BYTES, align 4
  %230 = load i32, i32* %8, align 4
  %231 = sub nsw i32 %229, %230
  %232 = icmp sge i32 %228, %231
  br i1 %232, label %233, label %237

233:                                              ; preds = %227
  %234 = load i32, i32* @PACE_MAX_IP_BYTES, align 4
  %235 = load i32, i32* %8, align 4
  %236 = sub nsw i32 %234, %235
  store i32 %236, i32* %9, align 4
  br label %237

237:                                              ; preds = %233, %227
  %238 = load i32, i32* %9, align 4
  %239 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %240 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %239, i32 0, i32 3
  %241 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 8
  %243 = icmp ne i32 %238, %242
  br i1 %243, label %244, label %258

244:                                              ; preds = %237
  %245 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %246 = load i32, i32* %4, align 4
  %247 = load i32, i32* %9, align 4
  %248 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %249 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %248, i32 0, i32 3
  %250 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %249, i32 0, i32 0
  %251 = load i32, i32* %250, align 8
  %252 = load i32, i32* %8, align 4
  %253 = call i32 @bbr_log_type_tsosize(%struct.tcp_bbr* %245, i32 %246, i32 %247, i32 0, i32 %251, i32 %252, i32 0)
  %254 = load i32, i32* %9, align 4
  %255 = load %struct.tcp_bbr*, %struct.tcp_bbr** %3, align 8
  %256 = getelementptr inbounds %struct.tcp_bbr, %struct.tcp_bbr* %255, i32 0, i32 3
  %257 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %256, i32 0, i32 0
  store i32 %254, i32* %257, align 8
  br label %258

258:                                              ; preds = %30, %36, %40, %244, %237
  ret void
}

declare dso_local i64 @IN_RECOVERY(i32) #1

declare dso_local i32 @bbr_get_pacing_delay(%struct.tcp_bbr*, i32, i32, i32, i32) #1

declare dso_local i32 @bbr_log_type_tsosize(%struct.tcp_bbr*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
