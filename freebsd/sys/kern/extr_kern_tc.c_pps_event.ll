; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_pps_event.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_pps_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pps_state = type { i64, i32, i32*, i32, %struct.TYPE_12__*, %struct.TYPE_14__*, %struct.TYPE_11__*, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_12__ = type { i64, i32, i32, %struct.TYPE_11__*, %struct.bintime }
%struct.bintime = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.bintime, %struct.TYPE_13__, i64 }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.timespec, i64, i32, %struct.timespec, i64 }
%struct.timespec = type { i64, i32 }
%struct.TYPE_9__ = type { i32, %struct.timespec, i32, %struct.timespec }
%struct.TYPE_8__ = type { i32, %struct.timespec, %struct.timespec }

@.str = private unnamed_addr constant [30 x i8] c"NULL pps pointer in pps_event\00", align 1
@PPS_CAPTUREASSERT = common dso_local global i32 0, align 4
@PPS_OFFSETASSERT = common dso_local global i32 0, align 4
@PPS_OFFSETCLEAR = common dso_local global i32 0, align 4
@PPS_CAPTURECLEAR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pps_event(%struct.pps_state* %0, i32 %1) #0 {
  %3 = alloca %struct.pps_state*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bintime, align 8
  %6 = alloca %struct.timespec, align 8
  %7 = alloca %struct.timespec*, align 8
  %8 = alloca %struct.timespec*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.pps_state* %0, %struct.pps_state** %3, align 8
  store i32 %1, i32* %4, align 4
  %13 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %14 = icmp ne %struct.pps_state* %13, null
  %15 = zext i1 %14 to i32
  %16 = call i32 @KASSERT(i32 %15, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* %4, align 4
  %18 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %19 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %17, %21
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %194

25:                                               ; preds = %2
  %26 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %27 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %25
  %31 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %32 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %35 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %34, i32 0, i32 4
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %36, i32 0, i32 0
  %38 = call i64 @atomic_load_acq_int(i64* %37)
  %39 = icmp ne i64 %33, %38
  br i1 %39, label %40, label %41

40:                                               ; preds = %30, %25
  br label %194

41:                                               ; preds = %30
  %42 = load i32, i32* %4, align 4
  %43 = load i32, i32* @PPS_CAPTUREASSERT, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %65

45:                                               ; preds = %41
  %46 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %47 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %46, i32 0, i32 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 3
  store %struct.timespec* %48, %struct.timespec** %7, align 8
  %49 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %50 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %49, i32 0, i32 9
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 2
  store %struct.timespec* %51, %struct.timespec** %8, align 8
  %52 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %53 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %52, i32 0, i32 9
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* @PPS_OFFSETASSERT, align 4
  %57 = and i32 %55, %56
  store i32 %57, i32* %11, align 4
  %58 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %59 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  store i32* %61, i32** %10, align 8
  %62 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %63 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %62, i32 0, i32 8
  %64 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %63, i32 0, i32 2
  store i32* %64, i32** %12, align 8
  br label %85

65:                                               ; preds = %41
  %66 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %67 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 1
  store %struct.timespec* %68, %struct.timespec** %7, align 8
  %69 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %70 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %69, i32 0, i32 9
  %71 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %70, i32 0, i32 1
  store %struct.timespec* %71, %struct.timespec** %8, align 8
  %72 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %73 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %72, i32 0, i32 9
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @PPS_OFFSETCLEAR, align 4
  %77 = and i32 %75, %76
  store i32 %77, i32* %11, align 4
  %78 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %79 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 1
  store i32* %81, i32** %10, align 8
  %82 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %83 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %82, i32 0, i32 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32* %84, i32** %12, align 8
  br label %85

85:                                               ; preds = %65, %45
  %86 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %87 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %86, i32 0, i32 6
  %88 = load %struct.TYPE_11__*, %struct.TYPE_11__** %87, align 8
  %89 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %90 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %89, i32 0, i32 4
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 3
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = icmp ne %struct.TYPE_11__* %88, %93
  br i1 %94, label %95, label %114

95:                                               ; preds = %85
  %96 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %97 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %96, i32 0, i32 4
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 3
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %102 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %101, i32 0, i32 6
  store %struct.TYPE_11__* %100, %struct.TYPE_11__** %102, align 8
  %103 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %104 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32*, i32** %10, align 8
  store i32 %105, i32* %106, align 4
  %107 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %108 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %107, i32 0, i32 3
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %111 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 2
  store i32 %109, i32* %113, align 4
  br label %194

114:                                              ; preds = %85
  %115 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %116 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 8
  %118 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %119 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %118, i32 0, i32 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 8
  %123 = sub nsw i32 %117, %122
  store i32 %123, i32* %9, align 4
  %124 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %125 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %124, i32 0, i32 4
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %126, i32 0, i32 3
  %128 = load %struct.TYPE_11__*, %struct.TYPE_11__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* %9, align 4
  %132 = and i32 %131, %130
  store i32 %132, i32* %9, align 4
  %133 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %134 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %133, i32 0, i32 4
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 4
  %137 = bitcast %struct.bintime* %5 to i8*
  %138 = bitcast %struct.bintime* %136 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %137, i8* align 8 %138, i64 16, i1 false)
  %139 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %140 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %139, i32 0, i32 4
  %141 = load %struct.TYPE_12__*, %struct.TYPE_12__** %140, align 8
  %142 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %141, i32 0, i32 2
  %143 = load i32, i32* %142, align 4
  %144 = load i32, i32* %9, align 4
  %145 = mul nsw i32 %143, %144
  %146 = call i32 @bintime_addx(%struct.bintime* %5, i32 %145)
  %147 = call i32 @bintime2timespec(%struct.bintime* %5, %struct.timespec* %6)
  %148 = call i32 (...) @atomic_thread_fence_acq()
  %149 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %150 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %153 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %152, i32 0, i32 4
  %154 = load %struct.TYPE_12__*, %struct.TYPE_12__** %153, align 8
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = icmp ne i64 %151, %156
  br i1 %157, label %158, label %159

158:                                              ; preds = %114
  br label %194

159:                                              ; preds = %114
  %160 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %161 = getelementptr inbounds %struct.pps_state, %struct.pps_state* %160, i32 0, i32 3
  %162 = load i32, i32* %161, align 8
  %163 = load i32*, i32** %10, align 8
  store i32 %162, i32* %163, align 4
  %164 = load i32*, i32** %12, align 8
  %165 = load i32, i32* %164, align 4
  %166 = add nsw i32 %165, 1
  store i32 %166, i32* %164, align 4
  %167 = load %struct.timespec*, %struct.timespec** %7, align 8
  %168 = bitcast %struct.timespec* %167 to i8*
  %169 = bitcast %struct.timespec* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 %169, i64 16, i1 false)
  %170 = load i32, i32* %11, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %191

172:                                              ; preds = %159
  %173 = load %struct.timespec*, %struct.timespec** %7, align 8
  %174 = load %struct.timespec*, %struct.timespec** %8, align 8
  %175 = load %struct.timespec*, %struct.timespec** %7, align 8
  %176 = call i32 @timespecadd(%struct.timespec* %173, %struct.timespec* %174, %struct.timespec* %175)
  %177 = load %struct.timespec*, %struct.timespec** %7, align 8
  %178 = getelementptr inbounds %struct.timespec, %struct.timespec* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = icmp slt i64 %179, 0
  br i1 %180, label %181, label %190

181:                                              ; preds = %172
  %182 = load %struct.timespec*, %struct.timespec** %7, align 8
  %183 = getelementptr inbounds %struct.timespec, %struct.timespec* %182, i32 0, i32 0
  %184 = load i64, i64* %183, align 8
  %185 = add nsw i64 %184, 1000000000
  store i64 %185, i64* %183, align 8
  %186 = load %struct.timespec*, %struct.timespec** %7, align 8
  %187 = getelementptr inbounds %struct.timespec, %struct.timespec* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %188, 1
  store i32 %189, i32* %187, align 8
  br label %190

190:                                              ; preds = %181, %172
  br label %191

191:                                              ; preds = %190, %159
  %192 = load %struct.pps_state*, %struct.pps_state** %3, align 8
  %193 = call i32 @wakeup(%struct.pps_state* %192)
  br label %194

194:                                              ; preds = %191, %158, %95, %40, %24
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @atomic_load_acq_int(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bintime_addx(%struct.bintime*, i32) #1

declare dso_local i32 @bintime2timespec(%struct.bintime*, %struct.timespec*) #1

declare dso_local i32 @atomic_thread_fence_acq(...) #1

declare dso_local i32 @timespecadd(%struct.timespec*, %struct.timespec*, %struct.timespec*) #1

declare dso_local i32 @wakeup(%struct.pps_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
