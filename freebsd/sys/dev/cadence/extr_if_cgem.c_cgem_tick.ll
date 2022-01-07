; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cadence/extr_if_cgem.c_cgem_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cgem_softc = type { i64, i32, i32, %struct.TYPE_2__, i64, i32* }
%struct.TYPE_2__ = type { i64 }
%struct.mii_data = type { i32 }

@CGEM_NET_CTRL = common dso_local global i32 0, align 4
@CGEM_NET_CTRL_RX_EN = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @cgem_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cgem_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.cgem_softc*, align 8
  %4 = alloca %struct.mii_data*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.cgem_softc*
  store %struct.cgem_softc* %6, %struct.cgem_softc** %3, align 8
  %7 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %8 = call i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc* %7)
  %9 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %10 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %9, i32 0, i32 5
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %1
  %14 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %15 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %14, i32 0, i32 5
  %16 = load i32*, i32** %15, align 8
  %17 = call %struct.mii_data* @device_get_softc(i32* %16)
  store %struct.mii_data* %17, %struct.mii_data** %4, align 8
  %18 = load %struct.mii_data*, %struct.mii_data** %4, align 8
  %19 = call i32 @mii_tick(%struct.mii_data* %18)
  br label %20

20:                                               ; preds = %13, %1
  %21 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %22 = call i32 @cgem_poll_hw_stats(%struct.cgem_softc* %21)
  %23 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %24 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %23, i32 0, i32 4
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %53

27:                                               ; preds = %20
  %28 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %29 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %32 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %30, %34
  br i1 %35, label %36, label %53

36:                                               ; preds = %27
  %37 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %38 = load i32, i32* @CGEM_NET_CTRL, align 4
  %39 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %40 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @CGEM_NET_CTRL_RX_EN, align 4
  %43 = xor i32 %42, -1
  %44 = and i32 %41, %43
  %45 = call i32 @WR4(%struct.cgem_softc* %37, i32 %38, i32 %44)
  %46 = call i32 @DELAY(i32 1)
  %47 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %48 = load i32, i32* @CGEM_NET_CTRL, align 4
  %49 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %50 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @WR4(%struct.cgem_softc* %47, i32 %48, i32 %51)
  br label %53

53:                                               ; preds = %36, %27, %20
  %54 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %55 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %54, i32 0, i32 3
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %59 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %58, i32 0, i32 0
  store i64 %57, i64* %59, align 8
  %60 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %61 = getelementptr inbounds %struct.cgem_softc, %struct.cgem_softc* %60, i32 0, i32 2
  %62 = load i32, i32* @hz, align 4
  %63 = load %struct.cgem_softc*, %struct.cgem_softc** %3, align 8
  %64 = call i32 @callout_reset(i32* %61, i32 %62, void (i8*)* @cgem_tick, %struct.cgem_softc* %63)
  ret void
}

declare dso_local i32 @CGEM_ASSERT_LOCKED(%struct.cgem_softc*) #1

declare dso_local %struct.mii_data* @device_get_softc(i32*) #1

declare dso_local i32 @mii_tick(%struct.mii_data*) #1

declare dso_local i32 @cgem_poll_hw_stats(%struct.cgem_softc*) #1

declare dso_local i32 @WR4(%struct.cgem_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.cgem_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
