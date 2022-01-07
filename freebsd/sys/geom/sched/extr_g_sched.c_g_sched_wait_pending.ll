; ModuleID = '/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_wait_pending.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/geom/sched/extr_g_sched.c_g_sched_wait_pending.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.g_geom = type { %struct.g_sched_softc* }
%struct.g_sched_softc = type { i64, i32 }

@ticks = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [19 x i8] c"sched_wait_pending\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.g_geom*)* @g_sched_wait_pending to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @g_sched_wait_pending(%struct.g_geom* %0) #0 {
  %2 = alloca %struct.g_geom*, align 8
  %3 = alloca %struct.g_sched_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.g_geom* %0, %struct.g_geom** %2, align 8
  %5 = load %struct.g_geom*, %struct.g_geom** %2, align 8
  %6 = getelementptr inbounds %struct.g_geom, %struct.g_geom* %5, i32 0, i32 0
  %7 = load %struct.g_sched_softc*, %struct.g_sched_softc** %6, align 8
  store %struct.g_sched_softc* %7, %struct.g_sched_softc** %3, align 8
  %8 = load i32, i32* @ticks, align 4
  %9 = load i32, i32* @hz, align 4
  %10 = add nsw i32 %8, %9
  store i32 %10, i32* %4, align 4
  %11 = call i32 (...) @g_topology_assert()
  br label %12

12:                                               ; preds = %24, %1
  %13 = load %struct.g_sched_softc*, %struct.g_sched_softc** %3, align 8
  %14 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %12
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @ticks, align 4
  %20 = sub nsw i32 %18, %19
  %21 = icmp sge i32 %20, 0
  br label %22

22:                                               ; preds = %17, %12
  %23 = phi i1 [ false, %12 ], [ %21, %17 ]
  br i1 %23, label %24, label %31

24:                                               ; preds = %22
  %25 = load %struct.g_geom*, %struct.g_geom** %2, align 8
  %26 = load %struct.g_sched_softc*, %struct.g_sched_softc** %3, align 8
  %27 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %26, i32 0, i32 1
  %28 = load i32, i32* @hz, align 4
  %29 = sdiv i32 %28, 4
  %30 = call i32 @msleep(%struct.g_geom* %25, i32* %27, i32 0, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %29)
  br label %12

31:                                               ; preds = %22
  %32 = load %struct.g_sched_softc*, %struct.g_sched_softc** %3, align 8
  %33 = getelementptr inbounds %struct.g_sched_softc, %struct.g_sched_softc* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @ETIMEDOUT, align 4
  br label %39

38:                                               ; preds = %31
  br label %39

39:                                               ; preds = %38, %36
  %40 = phi i32 [ %37, %36 ], [ 0, %38 ]
  ret i32 %40
}

declare dso_local i32 @g_topology_assert(...) #1

declare dso_local i32 @msleep(%struct.g_geom*, i32*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
