; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/ps3/extr_if_glc.c_glc_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.glc_softc = type { i64, i64, i32, i32, %struct.TYPE_2__*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"device timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @glc_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @glc_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.glc_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.glc_softc*
  store %struct.glc_softc* %5, %struct.glc_softc** %3, align 8
  %6 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %7 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %6, i32 0, i32 7
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @mtx_assert(i32* %7, i32 %8)
  %10 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %11 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %10, i32 0, i32 6
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %14 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %13, i32 0, i32 5
  %15 = load i32, i32* %14, align 8
  %16 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %17 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %16, i32 0, i32 4
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %20 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @lv1_net_start_rx_dma(i32 %12, i32 %15, i32 %24, i32 0)
  %26 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %27 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  br i1 %29, label %36, label %30

30:                                               ; preds = %1
  %31 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %32 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = add nsw i64 %33, -1
  store i64 %34, i64* %32, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %30, %1
  %37 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %38 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %37, i32 0, i32 3
  %39 = load i32, i32* @hz, align 4
  %40 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %41 = call i32 @callout_reset(i32* %38, i32 %39, void (i8*)* @glc_tick, %struct.glc_softc* %40)
  br label %49

42:                                               ; preds = %30
  %43 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %44 = getelementptr inbounds %struct.glc_softc, %struct.glc_softc* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @device_printf(i32 %45, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %47 = load %struct.glc_softc*, %struct.glc_softc** %3, align 8
  %48 = call i32 @glc_init_locked(%struct.glc_softc* %47)
  br label %49

49:                                               ; preds = %42, %36
  ret void
}

declare dso_local i32 @mtx_assert(i32*, i32) #1

declare dso_local i32 @lv1_net_start_rx_dma(i32, i32, i32, i32) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.glc_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @glc_init_locked(%struct.glc_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
