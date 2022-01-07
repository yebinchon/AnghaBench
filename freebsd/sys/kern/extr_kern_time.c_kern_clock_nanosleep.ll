; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_clock_nanosleep.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_time.c_kern_clock_nanosleep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thread = type { i64 }
%struct.timespec = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@TIMER_ABSTIME = common dso_local global i32 0, align 4
@ENOTSUP = common dso_local global i32 0, align 4
@rtc_generation = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"kern_clock_gettime: %d\00", align 1
@EWOULDBLOCK = common dso_local global i32 0, align 4
@INT32_MAX = common dso_local global i32 0, align 4
@tc_precexp = common dso_local global i64 0, align 8
@tc_tick_sbt = common dso_local global i64 0, align 8
@nanowait = common dso_local global i32* null, align 8
@curcpu = common dso_local global i64 0, align 8
@PWAIT = common dso_local global i32 0, align 4
@PCATCH = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"nanslp\00", align 1
@C_ABSOLUTE = common dso_local global i32 0, align 4
@ERESTART = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @kern_clock_nanosleep(%struct.thread* %0, i32 %1, i32 %2, %struct.timespec* %3, %struct.timespec* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.thread*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.timespec*, align 8
  %11 = alloca %struct.timespec*, align 8
  %12 = alloca %struct.timespec, align 4
  %13 = alloca %struct.timespec, align 4
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.timespec, align 4
  store %struct.thread* %0, %struct.thread** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store %struct.timespec* %3, %struct.timespec** %10, align 8
  store %struct.timespec* %4, %struct.timespec** %11, align 8
  %22 = load %struct.timespec*, %struct.timespec** %10, align 8
  %23 = getelementptr inbounds %struct.timespec, %struct.timespec* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %31, label %26

26:                                               ; preds = %5
  %27 = load %struct.timespec*, %struct.timespec** %10, align 8
  %28 = getelementptr inbounds %struct.timespec, %struct.timespec* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = icmp sge i32 %29, 1000000000
  br i1 %30, label %31, label %33

31:                                               ; preds = %26, %5
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %6, align 4
  br label %213

33:                                               ; preds = %26
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @TIMER_ABSTIME, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %33
  %40 = load i32, i32* @EINVAL, align 4
  store i32 %40, i32* %6, align 4
  br label %213

41:                                               ; preds = %33
  %42 = load i32, i32* %8, align 4
  switch i32 %42, label %53 [
    i32 136, label %43
    i32 134, label %43
    i32 135, label %43
    i32 133, label %43
    i32 141, label %49
    i32 139, label %49
    i32 140, label %49
    i32 131, label %49
    i32 129, label %49
    i32 130, label %49
    i32 128, label %50
    i32 137, label %50
    i32 138, label %50
    i32 132, label %52
  ]

43:                                               ; preds = %41, %41, %41, %41
  %44 = load i32, i32* %9, align 4
  %45 = load i32, i32* @TIMER_ABSTIME, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  %48 = zext i1 %47 to i32
  store i32 %48, i32* %20, align 4
  br label %55

49:                                               ; preds = %41, %41, %41, %41, %41, %41
  store i32 0, i32* %20, align 4
  br label %55

50:                                               ; preds = %41, %41, %41
  %51 = load i32, i32* @ENOTSUP, align 4
  store i32 %51, i32* %6, align 4
  br label %213

52:                                               ; preds = %41
  br label %53

53:                                               ; preds = %41, %52
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %6, align 4
  br label %213

55:                                               ; preds = %49, %43
  br label %56

56:                                               ; preds = %154, %55
  %57 = load %struct.timespec*, %struct.timespec** %10, align 8
  %58 = bitcast %struct.timespec* %12 to i8*
  %59 = bitcast %struct.timespec* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %58, i8* align 4 %59, i64 8, i1 false)
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* @TIMER_ABSTIME, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %83

64:                                               ; preds = %56
  %65 = load i32, i32* %20, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = call i64 @atomic_load_acq_int(i32* @rtc_generation)
  %69 = load %struct.thread*, %struct.thread** %7, align 8
  %70 = getelementptr inbounds %struct.thread, %struct.thread* %69, i32 0, i32 0
  store i64 %68, i64* %70, align 8
  br label %71

71:                                               ; preds = %67, %64
  %72 = load %struct.thread*, %struct.thread** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = call i32 @kern_clock_gettime(%struct.thread* %72, i32 %73, %struct.timespec* %13)
  store i32 %74, i32* %19, align 4
  %75 = load i32, i32* %19, align 4
  %76 = icmp eq i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = load i32, i32* %19, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = call i32 @KASSERT(i32 %77, i8* %80)
  %82 = call i32 @timespecsub(%struct.timespec* %12, %struct.timespec* %13, %struct.timespec* %12)
  br label %83

83:                                               ; preds = %71, %56
  %84 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %85, 0
  br i1 %86, label %95, label %87

87:                                               ; preds = %83
  %88 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %87
  %92 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %91, %83
  %96 = load i32, i32* @EWOULDBLOCK, align 4
  store i32 %96, i32* %19, align 4
  br label %156

97:                                               ; preds = %91, %87
  %98 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @INT32_MAX, align 4
  %101 = sdiv i32 %100, 2
  %102 = icmp sgt i32 %99, %101
  br i1 %102, label %103, label %113

103:                                              ; preds = %97
  %104 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = load i32, i32* @INT32_MAX, align 4
  %107 = sdiv i32 %106, 2
  %108 = sub nsw i32 %105, %107
  store i32 %108, i32* %18, align 4
  %109 = load i32, i32* %18, align 4
  %110 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sub nsw i32 %111, %109
  store i32 %112, i32* %110, align 4
  br label %114

113:                                              ; preds = %97
  store i32 0, i32* %18, align 4
  br label %114

114:                                              ; preds = %113, %103
  %115 = bitcast %struct.timespec* %12 to i64*
  %116 = load i64, i64* %115, align 4
  %117 = call i64 @tstosbt(i64 %116)
  store i64 %117, i64* %17, align 8
  %118 = load i64, i64* %17, align 8
  store i64 %118, i64* %16, align 8
  %119 = load i64, i64* @tc_precexp, align 8
  %120 = load i64, i64* %16, align 8
  %121 = ashr i64 %120, %119
  store i64 %121, i64* %16, align 8
  %122 = load i64, i64* %17, align 8
  %123 = call i64 @TIMESEL(i64* %14, i64 %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %114
  %126 = load i64, i64* @tc_tick_sbt, align 8
  %127 = load i64, i64* %14, align 8
  %128 = add nsw i64 %127, %126
  store i64 %128, i64* %14, align 8
  br label %129

129:                                              ; preds = %125, %114
  %130 = load i64, i64* %17, align 8
  %131 = load i64, i64* %14, align 8
  %132 = add nsw i64 %131, %130
  store i64 %132, i64* %14, align 8
  %133 = load i32*, i32** @nanowait, align 8
  %134 = load i64, i64* @curcpu, align 8
  %135 = getelementptr inbounds i32, i32* %133, i64 %134
  %136 = load i32, i32* @PWAIT, align 4
  %137 = load i32, i32* @PCATCH, align 4
  %138 = or i32 %136, %137
  %139 = load i64, i64* %14, align 8
  %140 = load i64, i64* %16, align 8
  %141 = load i32, i32* @C_ABSOLUTE, align 4
  %142 = call i32 @tsleep_sbt(i32* %135, i32 %138, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i64 %139, i64 %140, i32 %141)
  store i32 %142, i32* %19, align 4
  br label %143

143:                                              ; preds = %129
  %144 = load i32, i32* %19, align 4
  %145 = icmp eq i32 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %143
  %147 = load i32, i32* %20, align 4
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %154

149:                                              ; preds = %146
  %150 = load %struct.thread*, %struct.thread** %7, align 8
  %151 = getelementptr inbounds %struct.thread, %struct.thread* %150, i32 0, i32 0
  %152 = load i64, i64* %151, align 8
  %153 = icmp eq i64 %152, 0
  br label %154

154:                                              ; preds = %149, %146, %143
  %155 = phi i1 [ false, %146 ], [ false, %143 ], [ %153, %149 ]
  br i1 %155, label %56, label %156

156:                                              ; preds = %154, %95
  %157 = load %struct.thread*, %struct.thread** %7, align 8
  %158 = getelementptr inbounds %struct.thread, %struct.thread* %157, i32 0, i32 0
  store i64 0, i64* %158, align 8
  %159 = load i32, i32* %19, align 4
  %160 = load i32, i32* @EWOULDBLOCK, align 4
  %161 = icmp ne i32 %159, %160
  br i1 %161, label %162, label %212

162:                                              ; preds = %156
  %163 = load i64, i64* %17, align 8
  %164 = call i64 @TIMESEL(i64* %15, i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %170

166:                                              ; preds = %162
  %167 = load i64, i64* @tc_tick_sbt, align 8
  %168 = load i64, i64* %15, align 8
  %169 = add nsw i64 %168, %167
  store i64 %169, i64* %15, align 8
  br label %170

170:                                              ; preds = %166, %162
  %171 = load i64, i64* %15, align 8
  %172 = load i64, i64* %14, align 8
  %173 = icmp sge i64 %171, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %170
  store i32 0, i32* %6, align 4
  br label %213

175:                                              ; preds = %170
  %176 = load i32, i32* %19, align 4
  %177 = load i32, i32* @ERESTART, align 4
  %178 = icmp eq i32 %176, %177
  br i1 %178, label %179, label %181

179:                                              ; preds = %175
  %180 = load i32, i32* @EINTR, align 4
  store i32 %180, i32* %19, align 4
  br label %181

181:                                              ; preds = %179, %175
  %182 = load i32, i32* %9, align 4
  %183 = load i32, i32* @TIMER_ABSTIME, align 4
  %184 = and i32 %182, %183
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %186, label %210

186:                                              ; preds = %181
  %187 = load %struct.timespec*, %struct.timespec** %11, align 8
  %188 = icmp ne %struct.timespec* %187, null
  br i1 %188, label %189, label %210

189:                                              ; preds = %186
  %190 = load i64, i64* %14, align 8
  %191 = load i64, i64* %15, align 8
  %192 = sub nsw i64 %190, %191
  %193 = call i64 @sbttots(i64 %192)
  %194 = bitcast %struct.timespec* %21 to i64*
  store i64 %193, i64* %194, align 4
  %195 = bitcast %struct.timespec* %12 to i8*
  %196 = bitcast %struct.timespec* %21 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %195, i8* align 4 %196, i64 8, i1 false)
  %197 = load i32, i32* %18, align 4
  %198 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  %199 = load i32, i32* %198, align 4
  %200 = add nsw i32 %199, %197
  store i32 %200, i32* %198, align 4
  %201 = getelementptr inbounds %struct.timespec, %struct.timespec* %12, i32 0, i32 1
  %202 = load i32, i32* %201, align 4
  %203 = icmp slt i32 %202, 0
  br i1 %203, label %204, label %206

204:                                              ; preds = %189
  %205 = call i32 @timespecclear(%struct.timespec* %12)
  br label %206

206:                                              ; preds = %204, %189
  %207 = load %struct.timespec*, %struct.timespec** %11, align 8
  %208 = bitcast %struct.timespec* %207 to i8*
  %209 = bitcast %struct.timespec* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %208, i8* align 4 %209, i64 8, i1 false)
  br label %210

210:                                              ; preds = %206, %186, %181
  %211 = load i32, i32* %19, align 4
  store i32 %211, i32* %6, align 4
  br label %213

212:                                              ; preds = %156
  store i32 0, i32* %6, align 4
  br label %213

213:                                              ; preds = %212, %210, %174, %53, %50, %39, %31
  %214 = load i32, i32* %6, align 4
  ret i32 %214
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @atomic_load_acq_int(i32*) #2

declare dso_local i32 @kern_clock_gettime(%struct.thread*, i32, %struct.timespec*) #2

declare dso_local i32 @KASSERT(i32, i8*) #2

declare dso_local i32 @timespecsub(%struct.timespec*, %struct.timespec*, %struct.timespec*) #2

declare dso_local i64 @tstosbt(i64) #2

declare dso_local i64 @TIMESEL(i64*, i64) #2

declare dso_local i32 @tsleep_sbt(i32*, i32, i8*, i64, i64, i32) #2

declare dso_local i64 @sbttots(i64) #2

declare dso_local i32 @timespecclear(%struct.timespec*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
