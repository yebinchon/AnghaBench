; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_stats_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_stats.c_bxe_stats_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_stats_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_stats_start(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %3 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %4 = call i64 @IS_VF(%struct.bxe_softc* %3)
  %5 = icmp ne i64 %4, 0
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  br label %30

7:                                                ; preds = %1
  %8 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %9 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %7
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %15 = call i32 @bxe_port_stats_init(%struct.bxe_softc* %14)
  br label %25

16:                                               ; preds = %7
  %17 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %18 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %16
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %23 = call i32 @bxe_func_stats_init(%struct.bxe_softc* %22)
  br label %24

24:                                               ; preds = %21, %16
  br label %25

25:                                               ; preds = %24, %13
  %26 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %27 = call i32 @bxe_hw_stats_post(%struct.bxe_softc* %26)
  %28 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %29 = call i32 @bxe_storm_stats_post(%struct.bxe_softc* %28)
  br label %30

30:                                               ; preds = %25, %6
  ret void
}

declare dso_local i64 @IS_VF(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_port_stats_init(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_func_stats_init(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_hw_stats_post(%struct.bxe_softc*) #1

declare dso_local i32 @bxe_storm_stats_post(%struct.bxe_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
