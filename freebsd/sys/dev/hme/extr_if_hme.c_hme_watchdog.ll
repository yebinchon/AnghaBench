; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_watchdog.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/hme/extr_if_hme.c_hme_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hme_softc = type { i64, i32, i32, %struct.ifnet* }
%struct.ifnet = type { i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@HME_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"device timeout\0A\00", align 1
@bootverbose = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [26 x i8] c"device timeout (no link)\0A\00", align 1
@IFCOUNTER_OERRORS = common dso_local global i32 0, align 4
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@EJUSTRETURN = common dso_local global i32 0, align 4
@HME_SEBI_STAT = common dso_local global i32 0, align 4
@KTR_HME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hme_softc*)* @hme_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hme_watchdog(%struct.hme_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hme_softc*, align 8
  %4 = alloca %struct.ifnet*, align 8
  store %struct.hme_softc* %0, %struct.hme_softc** %3, align 8
  %5 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %6 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %5, i32 0, i32 3
  %7 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  store %struct.ifnet* %7, %struct.ifnet** %4, align 8
  %8 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %9 = load i32, i32* @MA_OWNED, align 4
  %10 = call i32 @HME_LOCK_ASSERT(%struct.hme_softc* %8, i32 %9)
  %11 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %12 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %21, label %15

15:                                               ; preds = %1
  %16 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %17 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = add nsw i64 %18, -1
  store i64 %19, i64* %17, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %58

22:                                               ; preds = %15
  %23 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %24 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @HME_LINK, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %34

29:                                               ; preds = %22
  %30 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %31 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @device_printf(i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %43

34:                                               ; preds = %22
  %35 = load i64, i64* @bootverbose, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %39 = getelementptr inbounds %struct.hme_softc, %struct.hme_softc* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @device_printf(i32 %40, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %42

42:                                               ; preds = %37, %34
  br label %43

43:                                               ; preds = %42, %29
  %44 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %45 = load i32, i32* @IFCOUNTER_OERRORS, align 4
  %46 = call i32 @if_inc_counter(%struct.ifnet* %44, i32 %45, i32 1)
  %47 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %48 = xor i32 %47, -1
  %49 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %50 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, %48
  store i32 %52, i32* %50, align 4
  %53 = load %struct.hme_softc*, %struct.hme_softc** %3, align 8
  %54 = call i32 @hme_init_locked(%struct.hme_softc* %53)
  %55 = load %struct.ifnet*, %struct.ifnet** %4, align 8
  %56 = call i32 @hme_start_locked(%struct.ifnet* %55)
  %57 = load i32, i32* @EJUSTRETURN, align 4
  store i32 %57, i32* %2, align 4
  br label %58

58:                                               ; preds = %43, %21
  %59 = load i32, i32* %2, align 4
  ret i32 %59
}

declare dso_local i32 @HME_LOCK_ASSERT(%struct.hme_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @if_inc_counter(%struct.ifnet*, i32, i32) #1

declare dso_local i32 @hme_init_locked(%struct.hme_softc*) #1

declare dso_local i32 @hme_start_locked(%struct.ifnet*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
