; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_softc = type { i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@IFCOUNTER_COLLISIONS = common dso_local global i32 0, align 4
@HME_MACI_NCCNT = common dso_local global i32 0, align 4
@HME_MACI_FCCNT = common dso_local global i32 0, align 4
@HME_MACI_EXCNT = common dso_local global i32 0, align 4
@HME_MACI_LTCNT = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i64 0, align 8
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @hme_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hme_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.hme_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.hme_softc*
  store %struct.hme_softc* %6, %struct.hme_softc** %3, align 8
  %7 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %8 = load i32, i32* @MA_OWNED, align 4
  %9 = call i32 @HME_LOCK_ASSERT(%struct.hme_softc* %7, i32 %8)
  %10 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %11 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %10, i32 0, i32 2
  %12 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  store %struct.ifnet* %12, %struct.ifnet** %4, align 8
  %13 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %14 = load i32, i32* @IFCOUNTER_COLLISIONS, align 4
  %15 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %16 = load i32, i32* @HME_MACI_NCCNT, align 4
  %17 = call i64 @HME_MAC_READ_4(%struct.hme_softc* %15, i32 %16)
  %18 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %19 = load i32, i32* @HME_MACI_FCCNT, align 4
  %20 = call i64 @HME_MAC_READ_4(%struct.hme_softc* %18, i32 %19)
  %21 = add nsw i64 %17, %20
  %22 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %23 = load i32, i32* @HME_MACI_EXCNT, align 4
  %24 = call i64 @HME_MAC_READ_4(%struct.hme_softc* %22, i32 %23)
  %25 = add nsw i64 %21, %24
  %26 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %27 = load i32, i32* @HME_MACI_LTCNT, align 4
  %28 = call i64 @HME_MAC_READ_4(%struct.hme_softc* %26, i32 %27)
  %29 = add nsw i64 %25, %28
  %30 = call i32 @if_inc_counter(%struct.ifnet* %13, i32 %14, i64 %29)
  %31 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %32 = load i32, i32* @HME_MACI_NCCNT, align 4
  %33 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %31, i32 %32, i32 0)
  %34 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %35 = load i32, i32* @HME_MACI_FCCNT, align 4
  %36 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %34, i32 %35, i32 0)
  %37 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %38 = load i32, i32* @HME_MACI_EXCNT, align 4
  %39 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %37, i32 %38, i32 0)
  %40 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %41 = load i32, i32* @HME_MACI_LTCNT, align 4
  %42 = call i32 @HME_MAC_WRITE_4(%struct.hme_softc* %40, i32 %41, i32 0)
  %43 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %44 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @mii_tick(i32 %45)
  %47 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %48 = call i64 @hme_watchdog(%struct.hme_softc* %47)
  %49 = load i64, i64* @EJUSTRETURN, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %1
  br label %58

52:                                               ; preds = %1
  %53 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %54 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %53, i32 0, i32 0
  %55 = load i32, i32* @hz, align 4
  %56 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %57 = call i32 @callout_reset(i32* %54, i32 %55, void (i8*)* @hme_tick, %struct.hme_softc* %56)
  br label %58

58:                                               ; preds = %52, %51
  ret void
}

declare dso_local i32 @HME_LOCK_ASSERT(%struct.hme_softc*, i32) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i64) #1

declare dso_local i64 @HME_MAC_READ_4(%struct.hme_softc*, i32) #1

declare dso_local i32 @HME_MAC_WRITE_4(%struct.hme_softc*, i32, i32) #1

declare dso_local i32 @mii_tick(i32) #1

declare dso_local i64 @hme_watchdog(%struct.hme_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.hme_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
