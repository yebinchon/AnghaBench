; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ffec/extr_if_ffec.c_ffec_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffec_softc = type { i64, i32, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ffec_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffec_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ffec_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ffec_softc*
  store %struct.ffec_softc* %7, %struct.ffec_softc** %3, align 8
  %8 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %9 = call i32 @FFEC_ASSERT_LOCKED(%struct.ffec_softc* %8)
  %10 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %11 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %10, i32 0, i32 4
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %4, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %1
  br label %61

20:                                               ; preds = %1
  %21 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %22 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp sgt i64 %23, 0
  br i1 %24, label %25, label %35

25:                                               ; preds = %20
  %26 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %27 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = add nsw i64 %28, -1
  store i64 %29, i64* %27, align 8
  %30 = icmp eq i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %25
  %32 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %33 = call i32 @ffec_txfinish_locked(%struct.ffec_softc* %32)
  br label %34

34:                                               ; preds = %31, %25
  br label %35

35:                                               ; preds = %34, %20
  %36 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %37 = call i32 @ffec_harvest_stats(%struct.ffec_softc* %36)
  %38 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %39 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  store i32 %40, i32* %5, align 4
  %41 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %42 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @mii_tick(i32 %43)
  %45 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %46 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %35
  %50 = load i32, i32* %5, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %49
  %53 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %54 = call i32 @ffec_txstart_locked(%struct.ffec_softc* %53)
  br label %55

55:                                               ; preds = %52, %49, %35
  %56 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %57 = getelementptr inbounds %struct.ffec_softc, %struct.ffec_softc* %56, i32 0, i32 2
  %58 = load i32, i32* @hz, align 4
  %59 = load %struct.ffec_softc*, %struct.ffec_softc** %3, align 8
  %60 = call i32 @callout_reset(i32* %57, i32 %58, void (i8*)* @ffec_tick, %struct.ffec_softc* %59)
  br label %61

61:                                               ; preds = %55, %19
  ret void
}

declare dso_local i32 @FFEC_ASSERT_LOCKED(%struct.ffec_softc*) #1

declare dso_local i32 @ffec_txfinish_locked(%struct.ffec_softc*) #1

declare dso_local i32 @ffec_harvest_stats(%struct.ffec_softc*) #1

declare dso_local i32 @mii_tick(i32) #1

declare dso_local i32 @ffec_txstart_locked(%struct.ffec_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.ffec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
