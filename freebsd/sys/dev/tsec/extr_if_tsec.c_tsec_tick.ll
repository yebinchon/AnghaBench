; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/tsec/extr_if_tsec.c_tsec_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tsec_softc = type { i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @tsec_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tsec_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.tsec_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.tsec_softc*
  store %struct.tsec_softc* %7, %struct.tsec_softc** %3, align 8
  %8 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %9 = call i32 @TSEC_GLOBAL_LOCK(%struct.tsec_softc* %8)
  %10 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %11 = call i32 @tsec_watchdog(%struct.tsec_softc* %10)
  %12 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %13 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %12, i32 0, i32 3
  %14 = load %struct.ifnet*, %struct.ifnet** %13, align 8
  store %struct.ifnet* %14, %struct.ifnet** %4, align 8
  %15 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %16 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %5, align 4
  %18 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %19 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @mii_tick(i32 %20)
  %22 = load i32, i32* %5, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %37

24:                                               ; preds = %1
  %25 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %26 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %37

29:                                               ; preds = %24
  %30 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %31 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %30, i32 0, i32 0
  %32 = call i32 @IFQ_DRV_IS_EMPTY(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %29
  %35 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %36 = call i32 @tsec_start_locked(%struct.ifnet* %35)
  br label %37

37:                                               ; preds = %34, %29, %24, %1
  %38 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %39 = getelementptr inbounds %struct.tsec_softc, %struct.tsec_softc* %38, i32 0, i32 1
  %40 = load i32, i32* @hz, align 4
  %41 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %42 = call i32 @callout_reset(i32* %39, i32 %40, void (i8*)* @tsec_tick, %struct.tsec_softc* %41)
  %43 = load %struct.tsec_softc*, %struct.tsec_softc** %3, align 8
  %44 = call i32 @TSEC_GLOBAL_UNLOCK(%struct.tsec_softc* %43)
  ret void
}

declare dso_local i32 @TSEC_GLOBAL_LOCK(%struct.tsec_softc*) #1

declare dso_local i32 @tsec_watchdog(%struct.tsec_softc*) #1

declare dso_local i32 @mii_tick(i32) #1

declare dso_local i32 @IFQ_DRV_IS_EMPTY(i32*) #1

declare dso_local i32 @tsec_start_locked(%struct.ifnet*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.tsec_softc*) #1

declare dso_local i32 @TSEC_GLOBAL_UNLOCK(%struct.tsec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
