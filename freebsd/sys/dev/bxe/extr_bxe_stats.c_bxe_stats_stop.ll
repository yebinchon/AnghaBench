; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_stats_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_stats_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_stats_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_stats_stop(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %4 = load i32, i32* @FALSE, align 4
  store i32 %4, i32* %3, align 4
  %5 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %6 = call i32 @bxe_stats_comp(%struct.bxe_softc* %5)
  %7 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %8 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %1
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %14 = call i64 @bxe_hw_stats_update(%struct.bxe_softc* %13)
  %15 = icmp eq i64 %14, 0
  %16 = zext i1 %15 to i32
  store i32 %16, i32* %3, align 4
  br label %17

17:                                               ; preds = %12, %1
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %19 = call i64 @bxe_storm_stats_update(%struct.bxe_softc* %18)
  %20 = icmp eq i64 %19, 0
  %21 = zext i1 %20 to i32
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  %24 = load i32, i32* %3, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %17
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %28 = call i32 @bxe_net_stats_update(%struct.bxe_softc* %27)
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %30 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %26
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %36 = call i32 @bxe_port_stats_stop(%struct.bxe_softc* %35)
  br label %37

37:                                               ; preds = %34, %26
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %39 = call i32 @bxe_hw_stats_post(%struct.bxe_softc* %38)
  %40 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %41 = call i32 @bxe_stats_comp(%struct.bxe_softc* %40)
  br label %42

42:                                               ; preds = %37, %17
  ret void
}

declare dso_local i32 @bxe_stats_comp(%struct.bxe_softc*) #1

declare dso_local i64 @bxe_hw_stats_update(%struct.bxe_softc*) #1

declare dso_local i64 @bxe_storm_stats_update(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_net_stats_update(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_port_stats_stop(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_hw_stats_post(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
