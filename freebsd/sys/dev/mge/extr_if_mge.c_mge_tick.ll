; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mge/extr_if_mge.c_mge_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mge_softc = type { i32, i64, i32, i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"mge_tick while PHY not attached\00", align 1
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @mge_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mge_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.mge_softc*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.mge_softc*
  store %struct.mge_softc* %5, %struct.mge_softc** %3, align 8
  %6 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %7 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp eq i32 %8, 1
  %10 = zext i1 %9 to i32
  %11 = call i32 @KASSERT(i32 %10, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %12 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %13 = call i32 @MGE_GLOBAL_LOCK(%struct.mge_softc* %12)
  %14 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %15 = call i32 @mge_watchdog(%struct.mge_softc* %14)
  %16 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %17 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %16, i32 0, i32 4
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = call i32 @mii_tick(%struct.TYPE_4__* %18)
  %20 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %21 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %24 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %23, i32 0, i32 4
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %22, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %1
  %31 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %32 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @mge_ifmedia_upd(i32 %33)
  br label %35

35:                                               ; preds = %30, %1
  %36 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %37 = call i32 @MGE_GLOBAL_UNLOCK(%struct.mge_softc* %36)
  %38 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %39 = getelementptr inbounds %struct.mge_softc, %struct.mge_softc* %38, i32 0, i32 2
  %40 = load i32, i32* @hz, align 4
  %41 = load %struct.mge_softc*, %struct.mge_softc** %3, align 8
  %42 = call i32 @callout_reset(i32* %39, i32 %40, void (i8*)* @mge_tick, %struct.mge_softc* %41)
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @MGE_GLOBAL_LOCK(%struct.mge_softc*) #1

declare dso_local i32 @mge_watchdog(%struct.mge_softc*) #1

declare dso_local i32 @mii_tick(%struct.TYPE_4__*) #1

declare dso_local i32 @mge_ifmedia_upd(i32) #1

declare dso_local i32 @MGE_GLOBAL_UNLOCK(%struct.mge_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.mge_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
