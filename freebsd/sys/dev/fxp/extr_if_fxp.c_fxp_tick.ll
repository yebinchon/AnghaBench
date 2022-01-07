; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_tick.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/fxp/extr_if_fxp.c_fxp_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fxp_softc = type { i64, i32, i32*, i32 }

@MA_OWNED = common dso_local global i32 0, align 4
@FXP_MAX_RX_IDLE = common dso_local global i64 0, align 8
@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@FXP_CSR_SCB_COMMAND = common dso_local global i32 0, align 4
@FXP_SCB_COMMAND_CU_DUMPRESET = common dso_local global i32 0, align 4
@hz = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @fxp_tick to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fxp_tick(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.fxp_softc*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %5 = load i8*, i8** %2, align 8
  %6 = bitcast i8* %5 to %struct.fxp_softc*
  store %struct.fxp_softc* %6, %struct.fxp_softc** %3, align 8
  %7 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %8 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %4, align 4
  %10 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %11 = load i32, i32* @MA_OWNED, align 4
  %12 = call i32 @FXP_LOCK_ASSERT(%struct.fxp_softc* %10, i32 %11)
  %13 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %14 = call i32 @fxp_update_stats(%struct.fxp_softc* %13)
  %15 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %16 = call i32 @fxp_txeof(%struct.fxp_softc* %15)
  %17 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %18 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @FXP_MAX_RX_IDLE, align 8
  %21 = icmp sgt i64 %19, %20
  br i1 %21, label %22, label %37

22:                                               ; preds = %1
  %23 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %24 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %23, i32 0, i32 0
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @if_getdrvflags(i32 %25)
  %27 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %33 = call i32 @if_setdrvflagbits(i32 %31, i32 0, i32 %32)
  %34 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %35 = call i32 @fxp_init_body(%struct.fxp_softc* %34, i32 1)
  br label %36

36:                                               ; preds = %30, %22
  br label %65

37:                                               ; preds = %1
  %38 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %39 = load i32, i32* @FXP_CSR_SCB_COMMAND, align 4
  %40 = call i64 @CSR_READ_1(%struct.fxp_softc* %38, i32 %39)
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %37
  %43 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %44 = load i32, i32* @FXP_SCB_COMMAND_CU_DUMPRESET, align 4
  %45 = call i32 @fxp_scb_cmd(%struct.fxp_softc* %43, i32 %44)
  br label %46

46:                                               ; preds = %42, %37
  %47 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %48 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = icmp ne i32* %49, null
  br i1 %50, label %51, label %57

51:                                               ; preds = %46
  %52 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %53 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %52, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = call i32 @device_get_softc(i32* %54)
  %56 = call i32 @mii_tick(i32 %55)
  br label %57

57:                                               ; preds = %51, %46
  %58 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %59 = call i32 @fxp_watchdog(%struct.fxp_softc* %58)
  %60 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %61 = getelementptr inbounds %struct.fxp_softc, %struct.fxp_softc* %60, i32 0, i32 1
  %62 = load i32, i32* @hz, align 4
  %63 = load %struct.fxp_softc*, %struct.fxp_softc** %3, align 8
  %64 = call i32 @callout_reset(i32* %61, i32 %62, void (i8*)* @fxp_tick, %struct.fxp_softc* %63)
  br label %65

65:                                               ; preds = %57, %36
  ret void
}

declare dso_local i32 @FXP_LOCK_ASSERT(%struct.fxp_softc*, i32) #1

declare dso_local i32 @fxp_update_stats(%struct.fxp_softc*) #1

declare dso_local i32 @fxp_txeof(%struct.fxp_softc*) #1

declare dso_local i32 @if_getdrvflags(i32) #1

declare dso_local i32 @if_setdrvflagbits(i32, i32, i32) #1

declare dso_local i32 @fxp_init_body(%struct.fxp_softc*, i32) #1

declare dso_local i64 @CSR_READ_1(%struct.fxp_softc*, i32) #1

declare dso_local i32 @fxp_scb_cmd(%struct.fxp_softc*, i32) #1

declare dso_local i32 @mii_tick(i32) #1

declare dso_local i32 @device_get_softc(i32*) #1

declare dso_local i32 @fxp_watchdog(%struct.fxp_softc*) #1

declare dso_local i32 @callout_reset(i32*, i32, void (i8*)*, %struct.fxp_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
