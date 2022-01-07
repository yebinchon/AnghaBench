; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_rxfilter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sis/extr_if_sis.c_sis_rxfilter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sis_softc = type { i64 }

@SIS_TYPE_83815 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sis_softc*)* @sis_rxfilter to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sis_rxfilter(%struct.sis_softc* %0) #0 {
  %2 = alloca %struct.sis_softc*, align 8
  store %struct.sis_softc* %0, %struct.sis_softc** %2, align 8
  %3 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %4 = call i32 @SIS_LOCK_ASSERT(%struct.sis_softc* %3)
  %5 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %6 = getelementptr inbounds %struct.sis_softc, %struct.sis_softc* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @SIS_TYPE_83815, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %12 = call i32 @sis_rxfilter_ns(%struct.sis_softc* %11)
  br label %16

13:                                               ; preds = %1
  %14 = load %struct.sis_softc*, %struct.sis_softc** %2, align 8
  %15 = call i32 @sis_rxfilter_sis(%struct.sis_softc* %14)
  br label %16

16:                                               ; preds = %13, %10
  ret void
}

declare dso_local i32 @SIS_LOCK_ASSERT(%struct.sis_softc*) #1

declare dso_local i32 @sis_rxfilter_ns(%struct.sis_softc*) #1

declare dso_local i32 @sis_rxfilter_sis(%struct.sis_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
