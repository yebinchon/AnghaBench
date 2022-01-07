; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i64 (%struct.urtw_softc*)*, i32, i32, i32, i32 }

@URTW_RUNNING = common dso_local global i32 0, align 4
@URTW_CMD = common dso_local global i32 0, align 4
@URTW_CMD_RX_ENABLE = common dso_local global i32 0, align 4
@URTW_CMD_TX_ENABLE = common dso_local global i32 0, align 4
@URTW_EPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@URTW_CONFIG4 = common dso_local global i32 0, align 4
@URTW_CONFIG4_VCOOFF = common dso_local global i32 0, align 4
@URTW_EPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"failed to stop (%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.urtw_softc*)* @urtw_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @urtw_stop(%struct.urtw_softc* %0) #0 {
  %2 = alloca %struct.urtw_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %2, align 8
  %5 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %6 = call i32 @URTW_ASSERT_LOCKED(%struct.urtw_softc* %5)
  %7 = load i32, i32* @URTW_RUNNING, align 4
  %8 = xor i32 %7, -1
  %9 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %10 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = and i32 %11, %8
  store i32 %12, i32* %10, align 4
  %13 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %14 = call i64 @urtw_intr_disable(%struct.urtw_softc* %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %1
  br label %64

18:                                               ; preds = %1
  %19 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %20 = load i32, i32* @URTW_CMD, align 4
  %21 = call i32 @urtw_read8_m(%struct.urtw_softc* %19, i32 %20, i32* %3)
  %22 = load i32, i32* @URTW_CMD_RX_ENABLE, align 4
  %23 = load i32, i32* @URTW_CMD_TX_ENABLE, align 4
  %24 = or i32 %22, %23
  %25 = xor i32 %24, -1
  %26 = load i32, i32* %3, align 4
  %27 = and i32 %26, %25
  store i32 %27, i32* %3, align 4
  %28 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %29 = load i32, i32* @URTW_CMD, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @urtw_write8_m(%struct.urtw_softc* %28, i32 %29, i32 %30)
  %32 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %33 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %32, i32 0, i32 0
  %34 = load i64 (%struct.urtw_softc*)*, i64 (%struct.urtw_softc*)** %33, align 8
  %35 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %36 = call i64 %34(%struct.urtw_softc* %35)
  store i64 %36, i64* %4, align 8
  %37 = load i64, i64* %4, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %18
  br label %64

40:                                               ; preds = %18
  %41 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %42 = load i32, i32* @URTW_EPROM_CMD_CONFIG, align 4
  %43 = call i64 @urtw_set_mode(%struct.urtw_softc* %41, i32 %42)
  store i64 %43, i64* %4, align 8
  %44 = load i64, i64* %4, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %40
  br label %64

47:                                               ; preds = %40
  %48 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %49 = load i32, i32* @URTW_CONFIG4, align 4
  %50 = call i32 @urtw_read8_m(%struct.urtw_softc* %48, i32 %49, i32* %3)
  %51 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %52 = load i32, i32* @URTW_CONFIG4, align 4
  %53 = load i32, i32* %3, align 4
  %54 = load i32, i32* @URTW_CONFIG4_VCOOFF, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @urtw_write8_m(%struct.urtw_softc* %51, i32 %52, i32 %55)
  %57 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %58 = load i32, i32* @URTW_EPROM_CMD_NORMAL, align 4
  %59 = call i64 @urtw_set_mode(%struct.urtw_softc* %57, i32 %58)
  store i64 %59, i64* %4, align 8
  %60 = load i64, i64* %4, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %47
  br label %64

63:                                               ; preds = %47
  br label %64

64:                                               ; preds = %63, %62, %46, %39, %17
  %65 = load i64, i64* %4, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %69 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %68, i32 0, i32 3
  %70 = load i32, i32* %69, align 8
  %71 = load i64, i64* %4, align 8
  %72 = call i32 @usbd_errstr(i64 %71)
  %73 = call i32 @device_printf(i32 %70, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %72)
  br label %74

74:                                               ; preds = %67, %64
  %75 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %76 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %75, i32 0, i32 2
  %77 = call i32 @usb_callout_stop(i32* %76)
  %78 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %79 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %78, i32 0, i32 1
  %80 = call i32 @callout_stop(i32* %79)
  %81 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %82 = call i32 @urtw_abort_xfers(%struct.urtw_softc* %81)
  ret void
}

declare dso_local i32 @URTW_ASSERT_LOCKED(%struct.urtw_softc*) #1

declare dso_local i64 @urtw_intr_disable(%struct.urtw_softc*) #1

declare dso_local i32 @urtw_read8_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i32 @urtw_write8_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i64 @urtw_set_mode(%struct.urtw_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*, i32) #1

declare dso_local i32 @usbd_errstr(i64) #1

declare dso_local i32 @usb_callout_stop(i32*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @urtw_abort_xfers(%struct.urtw_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
