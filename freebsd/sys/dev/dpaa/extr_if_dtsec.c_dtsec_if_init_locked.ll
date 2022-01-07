; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_if_init_locked.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/dpaa/extr_if_dtsec.c_dtsec_if_init_locked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dtsec_softc = type { i32, %struct.TYPE_2__*, i32, i64, i32 }
%struct.TYPE_2__ = type { i32 }

@E_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"couldn't set MAC address.\0A\00", align 1
@hz = common dso_local global i32 0, align 4
@dtsec_if_tick = common dso_local global i32 0, align 4
@IFF_UP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"initialization error.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dtsec_softc*)* @dtsec_if_init_locked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtsec_if_init_locked(%struct.dtsec_softc* %0) #0 {
  %2 = alloca %struct.dtsec_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.dtsec_softc* %0, %struct.dtsec_softc** %2, align 8
  %4 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %5 = call i32 @DTSEC_LOCK_ASSERT(%struct.dtsec_softc* %4)
  %6 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %7 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %6, i32 0, i32 4
  %8 = load i32, i32* %7, align 8
  %9 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %10 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %9, i32 0, i32 1
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = call i64 @IF_LLADDR(%struct.TYPE_2__* %11)
  %13 = inttoptr i64 %12 to i32*
  %14 = call i32 @FM_MAC_ModifyMacAddr(i32 %8, i32* %13)
  store i32 %14, i32* %3, align 4
  %15 = load i32, i32* %3, align 4
  %16 = load i32, i32* @E_OK, align 4
  %17 = icmp ne i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %20 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @device_printf(i32 %21, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  br label %59

23:                                               ; preds = %1
  %24 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %25 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %24, i32 0, i32 3
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %35

28:                                               ; preds = %23
  %29 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %30 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %29, i32 0, i32 2
  %31 = load i32, i32* @hz, align 4
  %32 = load i32, i32* @dtsec_if_tick, align 4
  %33 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %34 = call i32 @callout_reset(i32* %30, i32 %31, i32 %32, %struct.dtsec_softc* %33)
  br label %35

35:                                               ; preds = %28, %23
  %36 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %37 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @IFF_UP, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %35
  %45 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %46 = call i32 @dtsec_if_enable_locked(%struct.dtsec_softc* %45)
  store i32 %46, i32* %3, align 4
  %47 = load i32, i32* %3, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %59

50:                                               ; preds = %44
  br label %58

51:                                               ; preds = %35
  %52 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %53 = call i32 @dtsec_if_disable_locked(%struct.dtsec_softc* %52)
  store i32 %53, i32* %3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %51
  br label %59

57:                                               ; preds = %51
  br label %58

58:                                               ; preds = %57, %50
  br label %66

59:                                               ; preds = %56, %49, %18
  %60 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %61 = call i32 @dtsec_if_deinit_locked(%struct.dtsec_softc* %60)
  %62 = load %struct.dtsec_softc*, %struct.dtsec_softc** %2, align 8
  %63 = getelementptr inbounds %struct.dtsec_softc, %struct.dtsec_softc* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @device_printf(i32 %64, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %66

66:                                               ; preds = %59, %58
  ret void
}

declare dso_local i32 @DTSEC_LOCK_ASSERT(%struct.dtsec_softc*) #1

declare dso_local i32 @FM_MAC_ModifyMacAddr(i32, i32*) #1

declare dso_local i64 @IF_LLADDR(%struct.TYPE_2__*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @callout_reset(i32*, i32, i32, %struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_if_enable_locked(%struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_if_disable_locked(%struct.dtsec_softc*) #1

declare dso_local i32 @dtsec_if_deinit_locked(%struct.dtsec_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
