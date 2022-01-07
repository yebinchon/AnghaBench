; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_binuptime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_binuptime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timehands = type { i64, i32, %struct.bintime }
%struct.bintime = type { i32 }

@timehands = common dso_local global %struct.timehands* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @binuptime(%struct.bintime* %0) #0 {
  %2 = alloca %struct.bintime*, align 8
  %3 = alloca %struct.timehands*, align 8
  %4 = alloca i64, align 8
  store %struct.bintime* %0, %struct.bintime** %2, align 8
  br label %5

5:                                                ; preds = %33, %1
  %6 = load %struct.timehands*, %struct.timehands** @timehands, align 8
  store %struct.timehands* %6, %struct.timehands** %3, align 8
  %7 = load %struct.timehands*, %struct.timehands** %3, align 8
  %8 = getelementptr inbounds %struct.timehands, %struct.timehands* %7, i32 0, i32 0
  %9 = call i64 @atomic_load_acq_int(i64* %8)
  store i64 %9, i64* %4, align 8
  %10 = load %struct.bintime*, %struct.bintime** %2, align 8
  %11 = load %struct.timehands*, %struct.timehands** %3, align 8
  %12 = getelementptr inbounds %struct.timehands, %struct.timehands* %11, i32 0, i32 2
  %13 = bitcast %struct.bintime* %10 to i8*
  %14 = bitcast %struct.bintime* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load %struct.bintime*, %struct.bintime** %2, align 8
  %16 = load %struct.timehands*, %struct.timehands** %3, align 8
  %17 = getelementptr inbounds %struct.timehands, %struct.timehands* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.timehands*, %struct.timehands** %3, align 8
  %20 = call i32 @tc_delta(%struct.timehands* %19)
  %21 = mul nsw i32 %18, %20
  %22 = call i32 @bintime_addx(%struct.bintime* %15, i32 %21)
  %23 = call i32 (...) @atomic_thread_fence_acq()
  br label %24

24:                                               ; preds = %5
  %25 = load i64, i64* %4, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %33, label %27

27:                                               ; preds = %24
  %28 = load i64, i64* %4, align 8
  %29 = load %struct.timehands*, %struct.timehands** %3, align 8
  %30 = getelementptr inbounds %struct.timehands, %struct.timehands* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %28, %31
  br label %33

33:                                               ; preds = %27, %24
  %34 = phi i1 [ true, %24 ], [ %32, %27 ]
  br i1 %34, label %5, label %35

35:                                               ; preds = %33
  ret void
}

declare dso_local i64 @atomic_load_acq_int(i64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @bintime_addx(%struct.bintime*, i32) #1

declare dso_local i32 @tc_delta(%struct.timehands*) #1

declare dso_local i32 @atomic_thread_fence_acq(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
