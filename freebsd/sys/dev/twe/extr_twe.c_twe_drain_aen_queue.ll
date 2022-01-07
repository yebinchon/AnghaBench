; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_drain_aen_queue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/twe/extr_twe.c_twe_drain_aen_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.twe_softc = type { i32 }

@TWE_PARAM_AEN = common dso_local global i32 0, align 4
@TWE_PARAM_AEN_UnitCode = common dso_local global i32 0, align 4
@TWE_AEN_QUEUE_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.twe_softc*)* @twe_drain_aen_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @twe_drain_aen_queue(%struct.twe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.twe_softc*, align 8
  %4 = alloca i64, align 8
  store %struct.twe_softc* %0, %struct.twe_softc** %3, align 8
  %5 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %6 = call i32 @TWE_IO_ASSERT_LOCKED(%struct.twe_softc* %5)
  br label %7

7:                                                ; preds = %19, %1
  %8 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %9 = load i32, i32* @TWE_PARAM_AEN, align 4
  %10 = load i32, i32* @TWE_PARAM_AEN_UnitCode, align 4
  %11 = call i64 @twe_get_param_2(%struct.twe_softc* %8, i32 %9, i32 %10, i64* %4)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %7
  store i32 1, i32* %2, align 4
  br label %23

14:                                               ; preds = %7
  %15 = load i64, i64* %4, align 8
  %16 = load i64, i64* @TWE_AEN_QUEUE_EMPTY, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32 0, i32* %2, align 4
  br label %23

19:                                               ; preds = %14
  %20 = load %struct.twe_softc*, %struct.twe_softc** %3, align 8
  %21 = load i64, i64* %4, align 8
  %22 = call i32 @twe_enqueue_aen(%struct.twe_softc* %20, i64 %21)
  br label %7

23:                                               ; preds = %18, %13
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @TWE_IO_ASSERT_LOCKED(%struct.twe_softc*) #1

declare dso_local i64 @twe_get_param_2(%struct.twe_softc*, i32, i32, i64*) #1

declare dso_local i32 @twe_enqueue_aen(%struct.twe_softc*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
