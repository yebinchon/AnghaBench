; ModuleID = '/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_sysclock_snap2bintime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/kern/extr_kern_tc.c_sysclock_snap2bintime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sysclock_snap = type { i32, %struct.TYPE_4__, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32, %struct.bintime, i32, %struct.bintime }
%struct.bintime = type { i32 }
%struct.TYPE_3__ = type { i32, %struct.bintime }

@FBCLOCK_UPTIME = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@FFCLOCK_LEAPSEC = common dso_local global i32 0, align 4
@FFCLOCK_LERP = common dso_local global i32 0, align 4
@FFCLOCK_UPTIME = common dso_local global i32 0, align 4
@ffclock_boottime = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sysclock_snap2bintime(%struct.sysclock_snap* %0, %struct.bintime* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sysclock_snap*, align 8
  %7 = alloca %struct.bintime*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.bintime, align 4
  store %struct.sysclock_snap* %0, %struct.sysclock_snap** %6, align 8
  store %struct.bintime* %1, %struct.bintime** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* %8, align 4
  switch i32 %11, label %44 [
    i32 129, label %12
  ]

12:                                               ; preds = %4
  %13 = load %struct.bintime*, %struct.bintime** %7, align 8
  %14 = load %struct.sysclock_snap*, %struct.sysclock_snap** %6, align 8
  %15 = getelementptr inbounds %struct.sysclock_snap, %struct.sysclock_snap* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 1
  %17 = bitcast %struct.bintime* %13 to i8*
  %18 = bitcast %struct.bintime* %16 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %17, i8* align 4 %18, i64 4, i1 false)
  %19 = load %struct.sysclock_snap*, %struct.sysclock_snap** %6, align 8
  %20 = getelementptr inbounds %struct.sysclock_snap, %struct.sysclock_snap* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %34

23:                                               ; preds = %12
  %24 = load %struct.bintime*, %struct.bintime** %7, align 8
  %25 = load %struct.sysclock_snap*, %struct.sysclock_snap** %6, align 8
  %26 = getelementptr inbounds %struct.sysclock_snap, %struct.sysclock_snap* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.sysclock_snap*, %struct.sysclock_snap** %6, align 8
  %30 = getelementptr inbounds %struct.sysclock_snap, %struct.sysclock_snap* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = mul nsw i32 %28, %31
  %33 = call i32 @bintime_addx(%struct.bintime* %24, i32 %32)
  br label %34

34:                                               ; preds = %23, %12
  %35 = load i32, i32* %9, align 4
  %36 = load i32, i32* @FBCLOCK_UPTIME, align 4
  %37 = and i32 %35, %36
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = call i32 @getboottimebin(%struct.bintime* %10)
  %41 = load %struct.bintime*, %struct.bintime** %7, align 8
  %42 = call i32 @bintime_add(%struct.bintime* %41, %struct.bintime* %10)
  br label %43

43:                                               ; preds = %39, %34
  br label %46

44:                                               ; preds = %4
  %45 = load i32, i32* @EINVAL, align 4
  store i32 %45, i32* %5, align 4
  br label %47

46:                                               ; preds = %43
  store i32 0, i32* %5, align 4
  br label %47

47:                                               ; preds = %46, %44
  %48 = load i32, i32* %5, align 4
  ret i32 %48
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @bintime_addx(%struct.bintime*, i32) #2

declare dso_local i32 @getboottimebin(%struct.bintime*) #2

declare dso_local i32 @bintime_add(%struct.bintime*, %struct.bintime*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
