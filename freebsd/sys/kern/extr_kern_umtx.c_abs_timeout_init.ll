; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_abs_timeout_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_umtx.c_abs_timeout_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.abs_timeout = type { i32, i32, %struct.timespec, i32 }
%struct.timespec = type { i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4
@CLOCK_REALTIME_FAST = common dso_local global i32 0, align 4
@CLOCK_REALTIME_PRECISE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.abs_timeout*, i32, i32, %struct.timespec*)* @abs_timeout_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @abs_timeout_init(%struct.abs_timeout* %0, i32 %1, i32 %2, %struct.timespec* %3) #0 {
  %5 = alloca %struct.abs_timeout*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timespec*, align 8
  store %struct.abs_timeout* %0, %struct.abs_timeout** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.timespec* %3, %struct.timespec** %8, align 8
  %9 = load i32, i32* %6, align 4
  %10 = load %struct.abs_timeout*, %struct.abs_timeout** %5, align 8
  %11 = getelementptr inbounds %struct.abs_timeout, %struct.abs_timeout* %10, i32 0, i32 0
  store i32 %9, i32* %11, align 4
  %12 = load i32, i32* %7, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %4
  %15 = load %struct.abs_timeout*, %struct.abs_timeout** %5, align 8
  %16 = getelementptr inbounds %struct.abs_timeout, %struct.abs_timeout* %15, i32 0, i32 1
  store i32 0, i32* %16, align 4
  %17 = load %struct.abs_timeout*, %struct.abs_timeout** %5, align 8
  %18 = call i32 @abs_timeout_update(%struct.abs_timeout* %17)
  %19 = load %struct.abs_timeout*, %struct.abs_timeout** %5, align 8
  %20 = getelementptr inbounds %struct.abs_timeout, %struct.abs_timeout* %19, i32 0, i32 3
  %21 = load %struct.timespec*, %struct.timespec** %8, align 8
  %22 = load %struct.abs_timeout*, %struct.abs_timeout** %5, align 8
  %23 = getelementptr inbounds %struct.abs_timeout, %struct.abs_timeout* %22, i32 0, i32 2
  %24 = call i32 @timespecadd(i32* %20, %struct.timespec* %21, %struct.timespec* %23)
  br label %55

25:                                               ; preds = %4
  %26 = load %struct.abs_timeout*, %struct.abs_timeout** %5, align 8
  %27 = getelementptr inbounds %struct.abs_timeout, %struct.abs_timeout* %26, i32 0, i32 2
  %28 = load %struct.timespec*, %struct.timespec** %8, align 8
  %29 = bitcast %struct.timespec* %27 to i8*
  %30 = bitcast %struct.timespec* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %29, i8* align 4 %30, i64 4, i1 false)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @CLOCK_REALTIME, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %42, label %34

34:                                               ; preds = %25
  %35 = load i32, i32* %6, align 4
  %36 = load i32, i32* @CLOCK_REALTIME_FAST, align 4
  %37 = icmp eq i32 %35, %36
  br i1 %37, label %42, label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @CLOCK_REALTIME_PRECISE, align 4
  %41 = icmp eq i32 %39, %40
  br label %42

42:                                               ; preds = %38, %34, %25
  %43 = phi i1 [ true, %34 ], [ true, %25 ], [ %41, %38 ]
  %44 = zext i1 %43 to i32
  %45 = load %struct.abs_timeout*, %struct.abs_timeout** %5, align 8
  %46 = getelementptr inbounds %struct.abs_timeout, %struct.abs_timeout* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 4
  %47 = load %struct.abs_timeout*, %struct.abs_timeout** %5, align 8
  %48 = getelementptr inbounds %struct.abs_timeout, %struct.abs_timeout* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %42
  %52 = load %struct.abs_timeout*, %struct.abs_timeout** %5, align 8
  %53 = call i32 @abs_timeout_update(%struct.abs_timeout* %52)
  br label %54

54:                                               ; preds = %51, %42
  br label %55

55:                                               ; preds = %54, %14
  ret void
}

declare dso_local i32 @abs_timeout_update(%struct.abs_timeout*) #1

declare dso_local i32 @timespecadd(i32*, %struct.timespec*, %struct.timespec*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
