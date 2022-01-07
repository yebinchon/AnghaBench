; ModuleID = '/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_main_thread.c'
source_filename = "/home/carl/AnghaBench/freebsd/tools/tools/netmap/extr_pkt-gen.c_main_thread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i64, i64, i32, i32, %struct.TYPE_3__, i32, i32*, i32 }
%struct.TYPE_3__ = type { i64, i64, i64, i32 }
%struct.glob_arg = type { i32, i32, i32*, i64, double, i64, i64, i32 }
%struct.my_ctrs = type { i64, i64, i64, i64, i32 }
%struct.timeval = type { i32, i32 }
%struct.timespec = type { i32 }

@targs = common dso_local global %struct.TYPE_4__* null, align 8
@OPT_PPS_STATS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@STATS_WIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"[avg/std %s/%s pps]\00", align 1
@normalize = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [64 x i8] c"%spps %s(%spkts %sbps in %llu usec) %.2f avg_batch %d min_space\00", align 1
@DEV_NETMAP = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [34 x i8] c"ouch, thread %d exited with error\00", align 1
@TD_TYPE_SENDER = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"Sent\00", align 1
@TD_TYPE_RECEIVER = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [9 x i8] c"Received\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.glob_arg*)* @main_thread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @main_thread(%struct.glob_arg* %0) #0 {
  %2 = alloca %struct.glob_arg*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.my_ctrs, align 8
  %5 = alloca %struct.my_ctrs, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.timeval, align 4
  %8 = alloca %struct.timeval, align 4
  %9 = alloca [40 x i8], align 16
  %10 = alloca [40 x i8], align 16
  %11 = alloca [40 x i8], align 16
  %12 = alloca [100 x i8], align 16
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.my_ctrs, align 8
  %16 = alloca double, align 8
  %17 = alloca i32, align 4
  %18 = alloca double, align 8
  %19 = alloca double, align 8
  %20 = alloca i32, align 4
  %21 = alloca %struct.timespec, align 4
  %22 = alloca %struct.timespec, align 4
  %23 = alloca %struct.timespec, align 4
  %24 = alloca %struct.timespec, align 4
  %25 = alloca %struct.timeval, align 4
  %26 = alloca %struct.timeval, align 4
  store %struct.glob_arg* %0, %struct.glob_arg** %2, align 8
  %27 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %4, i32 0, i32 2
  store i64 0, i64* %27, align 8
  %28 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %4, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %4, i32 0, i32 0
  store i64 0, i64* %29, align 8
  %30 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %4, i32 0, i32 4
  %31 = call i32 @gettimeofday(i32* %30, i32* null)
  br label %32

32:                                               ; preds = %329, %45, %1
  store i32 0, i32* %17, align 4
  %33 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %4, i32 0, i32 4
  %34 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 4
  %35 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %36 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %35, i32 0, i32 7
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @wait_for_next_report(i32* %33, i32* %34, i32 %37)
  store i32 %38, i32* %14, align 4
  %39 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 2
  store i64 0, i64* %39, align 8
  %40 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 1
  store i64 0, i64* %40, align 8
  %41 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 0
  store i64 0, i64* %41, align 8
  %42 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 3
  store i64 0, i64* %42, align 8
  %43 = load i32, i32* %14, align 4
  %44 = icmp slt i32 %43, 10000
  br i1 %44, label %45, label %46

45:                                               ; preds = %32
  br label %32

46:                                               ; preds = %32
  store i32 0, i32* %3, align 4
  br label %47

47:                                               ; preds = %112, %46
  %48 = load i32, i32* %3, align 4
  %49 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %50 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = icmp slt i32 %48, %51
  br i1 %52, label %53, label %115

53:                                               ; preds = %47
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %55 = load i32, i32* %3, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 4
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %60
  store i64 %63, i64* %61, align 8
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %65 = load i32, i32* %3, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %67, i32 0, i32 4
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = add nsw i64 %72, %70
  store i64 %73, i64* %71, align 8
  %74 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %75 = load i32, i32* %3, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 4
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %78, i32 0, i32 2
  %80 = load i64, i64* %79, align 8
  %81 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 2
  %82 = load i64, i64* %81, align 8
  %83 = add nsw i64 %82, %80
  store i64 %83, i64* %81, align 8
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %85 = load i32, i32* %3, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %86
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 4
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 3
  %90 = load i32, i32* %89, align 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = add nsw i64 %93, %91
  store i64 %94, i64* %92, align 8
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %96 = load i32, i32* %3, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %97
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 4
  %100 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %99, i32 0, i32 3
  store i32 99999, i32* %100, align 8
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %102 = load i32, i32* %3, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %53
  %109 = load i32, i32* %17, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %17, align 4
  br label %111

111:                                              ; preds = %108, %53
  br label %112

112:                                              ; preds = %111
  %113 = load i32, i32* %3, align 4
  %114 = add nsw i32 %113, 1
  store i32 %114, i32* %3, align 4
  br label %47

115:                                              ; preds = %47
  %116 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 0
  %117 = load i64, i64* %116, align 8
  %118 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %4, i32 0, i32 0
  %119 = load i64, i64* %118, align 8
  %120 = sub nsw i64 %117, %119
  %121 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %15, i32 0, i32 0
  store i64 %120, i64* %121, align 8
  %122 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %4, i32 0, i32 1
  %125 = load i64, i64* %124, align 8
  %126 = sub nsw i64 %123, %125
  %127 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %15, i32 0, i32 1
  store i64 %126, i64* %127, align 8
  %128 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 2
  %129 = load i64, i64* %128, align 8
  %130 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %4, i32 0, i32 2
  %131 = load i64, i64* %130, align 8
  %132 = sub nsw i64 %129, %131
  %133 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %15, i32 0, i32 2
  store i64 %132, i64* %133, align 8
  %134 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %15, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = mul nsw i64 %135, 1000000
  %137 = load i32, i32* %14, align 4
  %138 = sdiv i32 %137, 2
  %139 = sext i32 %138 to i64
  %140 = add nsw i64 %136, %139
  %141 = load i32, i32* %14, align 4
  %142 = sext i32 %141 to i64
  %143 = sdiv i64 %140, %142
  %144 = trunc i64 %143 to i32
  store i32 %144, i32* %13, align 4
  %145 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %15, i32 0, i32 2
  %146 = load i64, i64* %145, align 8
  %147 = icmp sgt i64 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %115
  %149 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %15, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = sitofp i64 %150 to double
  %152 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %15, i32 0, i32 2
  %153 = load i64, i64* %152, align 8
  %154 = sitofp i64 %153 to double
  %155 = fdiv double %151, %154
  br label %157

156:                                              ; preds = %115
  br label %157

157:                                              ; preds = %156, %148
  %158 = phi double [ %155, %148 ], [ 0.000000e+00, %156 ]
  store double %158, double* %16, align 8
  %159 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %160 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %159, i32 0, i32 1
  %161 = load i32, i32* %160, align 4
  %162 = load i32, i32* @OPT_PPS_STATS, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %168, label %165

165:                                              ; preds = %157
  %166 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %167 = call i32 @strcpy(i8* %166, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  br label %281

168:                                              ; preds = %157
  store double 0.000000e+00, double* %18, align 8
  store double 0.000000e+00, double* %19, align 8
  store i32 0, i32* %20, align 4
  %169 = load i32, i32* %13, align 4
  %170 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %171 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %170, i32 0, i32 2
  %172 = load i32*, i32** %171, align 8
  %173 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %174 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %173, i32 0, i32 3
  %175 = load i64, i64* %174, align 8
  %176 = getelementptr inbounds i32, i32* %172, i64 %175
  store i32 %169, i32* %176, align 4
  %177 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %178 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %177, i32 0, i32 3
  %179 = load i64, i64* %178, align 8
  %180 = add i64 %179, 1
  %181 = load i32, i32* @STATS_WIN, align 4
  %182 = sext i32 %181 to i64
  %183 = urem i64 %180, %182
  %184 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %185 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %184, i32 0, i32 3
  store i64 %183, i64* %185, align 8
  store i32 0, i32* %3, align 4
  br label %186

186:                                              ; preds = %213, %168
  %187 = load i32, i32* %3, align 4
  %188 = load i32, i32* @STATS_WIN, align 4
  %189 = icmp slt i32 %187, %188
  br i1 %189, label %190, label %216

190:                                              ; preds = %186
  %191 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %192 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %191, i32 0, i32 2
  %193 = load i32*, i32** %192, align 8
  %194 = load i32, i32* %3, align 4
  %195 = sext i32 %194 to i64
  %196 = getelementptr inbounds i32, i32* %193, i64 %195
  %197 = load i32, i32* %196, align 4
  %198 = sitofp i32 %197 to double
  %199 = load double, double* %18, align 8
  %200 = fadd double %199, %198
  store double %200, double* %18, align 8
  %201 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %202 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %201, i32 0, i32 2
  %203 = load i32*, i32** %202, align 8
  %204 = load i32, i32* %3, align 4
  %205 = sext i32 %204 to i64
  %206 = getelementptr inbounds i32, i32* %203, i64 %205
  %207 = load i32, i32* %206, align 4
  %208 = icmp ne i32 %207, 0
  br i1 %208, label %209, label %212

209:                                              ; preds = %190
  %210 = load i32, i32* %20, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %20, align 4
  br label %212

212:                                              ; preds = %209, %190
  br label %213

213:                                              ; preds = %212
  %214 = load i32, i32* %3, align 4
  %215 = add nsw i32 %214, 1
  store i32 %215, i32* %3, align 4
  br label %186

216:                                              ; preds = %186
  %217 = load i32, i32* %20, align 4
  %218 = sitofp i32 %217 to double
  %219 = load double, double* %18, align 8
  %220 = fdiv double %219, %218
  store double %220, double* %18, align 8
  store i32 0, i32* %3, align 4
  br label %221

221:                                              ; preds = %259, %216
  %222 = load i32, i32* %3, align 4
  %223 = load i32, i32* @STATS_WIN, align 4
  %224 = icmp slt i32 %222, %223
  br i1 %224, label %225, label %262

225:                                              ; preds = %221
  %226 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %227 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %226, i32 0, i32 2
  %228 = load i32*, i32** %227, align 8
  %229 = load i32, i32* %3, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds i32, i32* %228, i64 %230
  %232 = load i32, i32* %231, align 4
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %234, label %235

234:                                              ; preds = %225
  br label %259

235:                                              ; preds = %225
  %236 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %237 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %236, i32 0, i32 2
  %238 = load i32*, i32** %237, align 8
  %239 = load i32, i32* %3, align 4
  %240 = sext i32 %239 to i64
  %241 = getelementptr inbounds i32, i32* %238, i64 %240
  %242 = load i32, i32* %241, align 4
  %243 = sitofp i32 %242 to double
  %244 = load double, double* %18, align 8
  %245 = fsub double %243, %244
  %246 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %247 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %246, i32 0, i32 2
  %248 = load i32*, i32** %247, align 8
  %249 = load i32, i32* %3, align 4
  %250 = sext i32 %249 to i64
  %251 = getelementptr inbounds i32, i32* %248, i64 %250
  %252 = load i32, i32* %251, align 4
  %253 = sitofp i32 %252 to double
  %254 = load double, double* %18, align 8
  %255 = fsub double %253, %254
  %256 = fmul double %245, %255
  %257 = load double, double* %19, align 8
  %258 = fadd double %257, %256
  store double %258, double* %19, align 8
  br label %259

259:                                              ; preds = %235, %234
  %260 = load i32, i32* %3, align 4
  %261 = add nsw i32 %260, 1
  store i32 %261, i32* %3, align 4
  br label %221

262:                                              ; preds = %221
  %263 = load i32, i32* %20, align 4
  %264 = sitofp i32 %263 to double
  %265 = load double, double* %19, align 8
  %266 = fdiv double %265, %264
  store double %266, double* %19, align 8
  %267 = load double, double* %19, align 8
  %268 = call double @sqrt(double %267) #4
  store double %268, double* %19, align 8
  %269 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %270 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 0
  %271 = load double, double* %18, align 8
  %272 = fptosi double %271 to i32
  %273 = load i32, i32* @normalize, align 4
  %274 = call i8* @norm(i8* %270, i32 %272, i32 %273)
  %275 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %276 = load double, double* %19, align 8
  %277 = fptosi double %276 to i32
  %278 = load i32, i32* @normalize, align 4
  %279 = call i8* @norm(i8* %275, i32 %277, i32 %278)
  %280 = call i32 @snprintf(i8* %269, i32 100, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i8* %274, i8* %279)
  br label %281

281:                                              ; preds = %262, %165
  %282 = getelementptr inbounds [40 x i8], [40 x i8]* %9, i64 0, i64 0
  %283 = load i32, i32* %13, align 4
  %284 = load i32, i32* @normalize, align 4
  %285 = call i8* @norm(i8* %282, i32 %283, i32 %284)
  %286 = getelementptr inbounds [100 x i8], [100 x i8]* %12, i64 0, i64 0
  %287 = getelementptr inbounds [40 x i8], [40 x i8]* %10, i64 0, i64 0
  %288 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %15, i32 0, i32 0
  %289 = load i64, i64* %288, align 8
  %290 = sitofp i64 %289 to double
  %291 = fptosi double %290 to i32
  %292 = load i32, i32* @normalize, align 4
  %293 = call i8* @norm(i8* %287, i32 %291, i32 %292)
  %294 = getelementptr inbounds [40 x i8], [40 x i8]* %11, i64 0, i64 0
  %295 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %15, i32 0, i32 1
  %296 = load i64, i64* %295, align 8
  %297 = sitofp i64 %296 to double
  %298 = fmul double %297, 8.000000e+00
  %299 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %15, i32 0, i32 0
  %300 = load i64, i64* %299, align 8
  %301 = sitofp i64 %300 to double
  %302 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %303 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %302, i32 0, i32 4
  %304 = load double, double* %303, align 8
  %305 = fmul double %301, %304
  %306 = fadd double %298, %305
  %307 = fmul double 1.000000e+06, %306
  %308 = load i32, i32* %14, align 4
  %309 = sitofp i32 %308 to double
  %310 = fdiv double %307, %309
  %311 = fptosi double %310 to i32
  %312 = load i32, i32* @normalize, align 4
  %313 = call i8* @norm(i8* %294, i32 %311, i32 %312)
  %314 = load i32, i32* %14, align 4
  %315 = sext i32 %314 to i64
  %316 = load double, double* %16, align 8
  %317 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 3
  %318 = load i64, i64* %317, align 8
  %319 = trunc i64 %318 to i32
  %320 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8* %285, i8* %286, i8* %293, i8* %313, i64 %315, double %316, i32 %319)
  %321 = bitcast %struct.my_ctrs* %4 to i8*
  %322 = bitcast %struct.my_ctrs* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %321, i8* align 8 %322, i64 40, i1 false)
  %323 = load i32, i32* %17, align 4
  %324 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %325 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 8
  %327 = icmp eq i32 %323, %326
  br i1 %327, label %328, label %329

328:                                              ; preds = %281
  br label %330

329:                                              ; preds = %281
  br label %32

330:                                              ; preds = %328
  %331 = call i32 @timerclear(%struct.timeval* %7)
  %332 = call i32 @timerclear(%struct.timeval* %8)
  %333 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 2
  store i64 0, i64* %333, align 8
  %334 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 1
  store i64 0, i64* %334, align 8
  %335 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 0
  store i64 0, i64* %335, align 8
  store i32 0, i32* %3, align 4
  br label %336

336:                                              ; preds = %477, %330
  %337 = load i32, i32* %3, align 4
  %338 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %339 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 8
  %341 = icmp slt i32 %337, %340
  br i1 %341, label %342, label %480

342:                                              ; preds = %336
  %343 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %344 = load i32, i32* %3, align 4
  %345 = sext i32 %344 to i64
  %346 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %343, i64 %345
  %347 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  br i1 %349, label %350, label %358

350:                                              ; preds = %342
  %351 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %352 = load i32, i32* %3, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %351, i64 %353
  %355 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %354, i32 0, i32 7
  %356 = load i32, i32* %355, align 8
  %357 = call i32 @pthread_join(i32 %356, i32* null)
  br label %358

358:                                              ; preds = %350, %342
  %359 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %360 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %359, i32 0, i32 5
  %361 = load i64, i64* %360, align 8
  %362 = load i64, i64* @DEV_NETMAP, align 8
  %363 = icmp eq i64 %361, %362
  br i1 %363, label %364, label %377

364:                                              ; preds = %358
  %365 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %366 = load i32, i32* %3, align 4
  %367 = sext i32 %366 to i64
  %368 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %365, i64 %367
  %369 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %368, i32 0, i32 6
  %370 = load i32*, i32** %369, align 8
  %371 = call i32 @nm_close(i32* %370)
  %372 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %373 = load i32, i32* %3, align 4
  %374 = sext i32 %373 to i64
  %375 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %372, i64 %374
  %376 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %375, i32 0, i32 6
  store i32* null, i32** %376, align 8
  br label %385

377:                                              ; preds = %358
  %378 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %379 = load i32, i32* %3, align 4
  %380 = sext i32 %379 to i64
  %381 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %378, i64 %380
  %382 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %381, i32 0, i32 5
  %383 = load i32, i32* %382, align 8
  %384 = call i32 @close(i32 %383)
  br label %385

385:                                              ; preds = %377, %364
  %386 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %387 = load i32, i32* %3, align 4
  %388 = sext i32 %387 to i64
  %389 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %386, i64 %388
  %390 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %389, i32 0, i32 1
  %391 = load i64, i64* %390, align 8
  %392 = icmp eq i64 %391, 0
  br i1 %392, label %393, label %396

393:                                              ; preds = %385
  %394 = load i32, i32* %3, align 4
  %395 = call i32 (i8*, ...) @D(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.3, i64 0, i64 0), i32 %394)
  br label %396

396:                                              ; preds = %393, %385
  %397 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %398 = load i32, i32* %3, align 4
  %399 = sext i32 %398 to i64
  %400 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %397, i64 %399
  %401 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %400, i32 0, i32 4
  %402 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %401, i32 0, i32 0
  %403 = load i64, i64* %402, align 8
  %404 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 0
  %405 = load i64, i64* %404, align 8
  %406 = add nsw i64 %405, %403
  store i64 %406, i64* %404, align 8
  %407 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %408 = load i32, i32* %3, align 4
  %409 = sext i32 %408 to i64
  %410 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %407, i64 %409
  %411 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %410, i32 0, i32 4
  %412 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %411, i32 0, i32 1
  %413 = load i64, i64* %412, align 8
  %414 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 1
  %415 = load i64, i64* %414, align 8
  %416 = add nsw i64 %415, %413
  store i64 %416, i64* %414, align 8
  %417 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %418 = load i32, i32* %3, align 4
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %417, i64 %419
  %421 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %420, i32 0, i32 4
  %422 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %421, i32 0, i32 2
  %423 = load i64, i64* %422, align 8
  %424 = getelementptr inbounds %struct.my_ctrs, %struct.my_ctrs* %5, i32 0, i32 2
  %425 = load i64, i64* %424, align 8
  %426 = add nsw i64 %425, %423
  store i64 %426, i64* %424, align 8
  %427 = call i32 @timeval2spec(%struct.timeval* %7)
  %428 = getelementptr inbounds %struct.timespec, %struct.timespec* %23, i32 0, i32 0
  store i32 %427, i32* %428, align 4
  %429 = bitcast %struct.timespec* %21 to i8*
  %430 = bitcast %struct.timespec* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %429, i8* align 4 %430, i64 4, i1 false)
  %431 = call i32 @timeval2spec(%struct.timeval* %8)
  %432 = getelementptr inbounds %struct.timespec, %struct.timespec* %24, i32 0, i32 0
  store i32 %431, i32* %432, align 4
  %433 = bitcast %struct.timespec* %22 to i8*
  %434 = bitcast %struct.timespec* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %433, i8* align 4 %434, i64 4, i1 false)
  %435 = call i32 @timerisset(%struct.timeval* %7)
  %436 = icmp ne i32 %435, 0
  br i1 %436, label %437, label %445

437:                                              ; preds = %396
  %438 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %439 = load i32, i32* %3, align 4
  %440 = sext i32 %439 to i64
  %441 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %438, i64 %440
  %442 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %441, i32 0, i32 3
  %443 = call i64 @timespec_ge(i32* %442, %struct.timespec* %21)
  %444 = icmp ne i64 %443, 0
  br i1 %444, label %445, label %455

445:                                              ; preds = %437, %396
  %446 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %447 = load i32, i32* %3, align 4
  %448 = sext i32 %447 to i64
  %449 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %446, i64 %448
  %450 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %449, i32 0, i32 3
  %451 = call i64 @timespec2val(i32* %450)
  %452 = bitcast %struct.timeval* %25 to i64*
  store i64 %451, i64* %452, align 4
  %453 = bitcast %struct.timeval* %7 to i8*
  %454 = bitcast %struct.timeval* %25 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %453, i8* align 4 %454, i64 8, i1 false)
  br label %455

455:                                              ; preds = %445, %437
  %456 = call i32 @timerisset(%struct.timeval* %8)
  %457 = icmp ne i32 %456, 0
  br i1 %457, label %458, label %466

458:                                              ; preds = %455
  %459 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %460 = load i32, i32* %3, align 4
  %461 = sext i32 %460 to i64
  %462 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %459, i64 %461
  %463 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %462, i32 0, i32 2
  %464 = call i64 @timespec_ge(i32* %463, %struct.timespec* %22)
  %465 = icmp ne i64 %464, 0
  br i1 %465, label %466, label %476

466:                                              ; preds = %458, %455
  %467 = load %struct.TYPE_4__*, %struct.TYPE_4__** @targs, align 8
  %468 = load i32, i32* %3, align 4
  %469 = sext i32 %468 to i64
  %470 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %467, i64 %469
  %471 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %470, i32 0, i32 2
  %472 = call i64 @timespec2val(i32* %471)
  %473 = bitcast %struct.timeval* %26 to i64*
  store i64 %472, i64* %473, align 4
  %474 = bitcast %struct.timeval* %8 to i8*
  %475 = bitcast %struct.timeval* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %474, i8* align 4 %475, i64 8, i1 false)
  br label %476

476:                                              ; preds = %466, %458
  br label %477

477:                                              ; preds = %476
  %478 = load i32, i32* %3, align 4
  %479 = add nsw i32 %478, 1
  store i32 %479, i32* %3, align 4
  br label %336

480:                                              ; preds = %336
  %481 = call i32 @timersub(%struct.timeval* %8, %struct.timeval* %7, %struct.timeval* %8)
  %482 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 0
  %483 = load i32, i32* %482, align 4
  %484 = sitofp i32 %483 to double
  %485 = getelementptr inbounds %struct.timeval, %struct.timeval* %8, i32 0, i32 1
  %486 = load i32, i32* %485, align 4
  %487 = sitofp i32 %486 to double
  %488 = fmul double 0x3EB0C6F7A0B5ED8D, %487
  %489 = fadd double %484, %488
  store double %489, double* %6, align 8
  %490 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %491 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %490, i32 0, i32 6
  %492 = load i64, i64* %491, align 8
  %493 = load i64, i64* @TD_TYPE_SENDER, align 8
  %494 = icmp eq i64 %492, %493
  br i1 %494, label %495, label %499

495:                                              ; preds = %480
  %496 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %497 = load double, double* %6, align 8
  %498 = call i32 @tx_output(%struct.glob_arg* %496, %struct.my_ctrs* %5, double %497, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  br label %510

499:                                              ; preds = %480
  %500 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %501 = getelementptr inbounds %struct.glob_arg, %struct.glob_arg* %500, i32 0, i32 6
  %502 = load i64, i64* %501, align 8
  %503 = load i64, i64* @TD_TYPE_RECEIVER, align 8
  %504 = icmp eq i64 %502, %503
  br i1 %504, label %505, label %509

505:                                              ; preds = %499
  %506 = load %struct.glob_arg*, %struct.glob_arg** %2, align 8
  %507 = load double, double* %6, align 8
  %508 = call i32 @tx_output(%struct.glob_arg* %506, %struct.my_ctrs* %5, double %507, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i64 0, i64 0))
  br label %509

509:                                              ; preds = %505, %499
  br label %510

510:                                              ; preds = %509, %495
  ret void
}

declare dso_local i32 @gettimeofday(i32*, i32*) #1

declare dso_local i32 @wait_for_next_report(i32*, i32*, i32) #1

declare dso_local i32 @strcpy(i8*, i8*) #1

; Function Attrs: nounwind
declare dso_local double @sqrt(double) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, i8*) #1

declare dso_local i8* @norm(i8*, i32, i32) #1

declare dso_local i32 @D(i8*, ...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

declare dso_local i32 @timerclear(%struct.timeval*) #1

declare dso_local i32 @pthread_join(i32, i32*) #1

declare dso_local i32 @nm_close(i32*) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @timeval2spec(%struct.timeval*) #1

declare dso_local i32 @timerisset(%struct.timeval*) #1

declare dso_local i64 @timespec_ge(i32*, %struct.timespec*) #1

declare dso_local i64 @timespec2val(i32*) #1

declare dso_local i32 @timersub(%struct.timeval*, %struct.timeval*, %struct.timeval*) #1

declare dso_local i32 @tx_output(%struct.glob_arg*, %struct.my_ctrs*, double, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
