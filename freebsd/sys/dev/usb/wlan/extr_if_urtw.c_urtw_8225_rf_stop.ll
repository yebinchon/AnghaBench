; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225_rf_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225_rf_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32 }

@URTW_EPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@URTW_CONFIG3 = common dso_local global i32 0, align 4
@URTW_CONFIG3_ANAPARAM_WRITE = common dso_local global i32 0, align 4
@URTW_RTL8187B = common dso_local global i32 0, align 4
@URTW_ANAPARAM2 = common dso_local global i32 0, align 4
@URTW_8187B_8225_ANAPARAM2_OFF = common dso_local global i32 0, align 4
@URTW_ANAPARAM = common dso_local global i32 0, align 4
@URTW_8187B_8225_ANAPARAM_OFF = common dso_local global i32 0, align 4
@URTW_ANAPARAM3 = common dso_local global i32 0, align 4
@URTW_8187B_8225_ANAPARAM3_OFF = common dso_local global i32 0, align 4
@URTW_8225_ANAPARAM2_OFF = common dso_local global i32 0, align 4
@URTW_8225_ANAPARAM_OFF = common dso_local global i32 0, align 4
@URTW_EPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urtw_softc*)* @urtw_8225_rf_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urtw_8225_rf_stop(%struct.urtw_softc* %0) #0 {
  %2 = alloca %struct.urtw_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %2, align 8
  %5 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %6 = call i32 @urtw_8225_write(%struct.urtw_softc* %5, i32 4, i32 31)
  %7 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %8 = load i32, i32* @URTW_EPROM_CMD_CONFIG, align 4
  %9 = call i64 @urtw_set_mode(%struct.urtw_softc* %7, i32 %8)
  store i64 %9, i64* %4, align 8
  %10 = load i64, i64* %4, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  br label %66

13:                                               ; preds = %1
  %14 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %15 = load i32, i32* @URTW_CONFIG3, align 4
  %16 = call i32 @urtw_read8_m(%struct.urtw_softc* %14, i32 %15, i32* %3)
  %17 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %18 = load i32, i32* @URTW_CONFIG3, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @URTW_CONFIG3_ANAPARAM_WRITE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @urtw_write8_m(%struct.urtw_softc* %17, i32 %18, i32 %21)
  %23 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %24 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @URTW_RTL8187B, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %13
  %30 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %31 = load i32, i32* @URTW_ANAPARAM2, align 4
  %32 = load i32, i32* @URTW_8187B_8225_ANAPARAM2_OFF, align 4
  %33 = call i32 @urtw_write32_m(%struct.urtw_softc* %30, i32 %31, i32 %32)
  %34 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %35 = load i32, i32* @URTW_ANAPARAM, align 4
  %36 = load i32, i32* @URTW_8187B_8225_ANAPARAM_OFF, align 4
  %37 = call i32 @urtw_write32_m(%struct.urtw_softc* %34, i32 %35, i32 %36)
  %38 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %39 = load i32, i32* @URTW_ANAPARAM3, align 4
  %40 = load i32, i32* @URTW_8187B_8225_ANAPARAM3_OFF, align 4
  %41 = call i32 @urtw_write32_m(%struct.urtw_softc* %38, i32 %39, i32 %40)
  br label %51

42:                                               ; preds = %13
  %43 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %44 = load i32, i32* @URTW_ANAPARAM2, align 4
  %45 = load i32, i32* @URTW_8225_ANAPARAM2_OFF, align 4
  %46 = call i32 @urtw_write32_m(%struct.urtw_softc* %43, i32 %44, i32 %45)
  %47 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %48 = load i32, i32* @URTW_ANAPARAM, align 4
  %49 = load i32, i32* @URTW_8225_ANAPARAM_OFF, align 4
  %50 = call i32 @urtw_write32_m(%struct.urtw_softc* %47, i32 %48, i32 %49)
  br label %51

51:                                               ; preds = %42, %29
  %52 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %53 = load i32, i32* @URTW_CONFIG3, align 4
  %54 = load i32, i32* %3, align 4
  %55 = load i32, i32* @URTW_CONFIG3_ANAPARAM_WRITE, align 4
  %56 = xor i32 %55, -1
  %57 = and i32 %54, %56
  %58 = call i32 @urtw_write8_m(%struct.urtw_softc* %52, i32 %53, i32 %57)
  %59 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %60 = load i32, i32* @URTW_EPROM_CMD_NORMAL, align 4
  %61 = call i64 @urtw_set_mode(%struct.urtw_softc* %59, i32 %60)
  store i64 %61, i64* %4, align 8
  %62 = load i64, i64* %4, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %51
  br label %66

65:                                               ; preds = %51
  br label %66

66:                                               ; preds = %65, %64, %12
  %67 = load i64, i64* %4, align 8
  ret i64 %67
}

declare dso_local i32 @urtw_8225_write(%struct.urtw_softc*, i32, i32) #1

declare dso_local i64 @urtw_set_mode(%struct.urtw_softc*, i32) #1

declare dso_local i32 @urtw_read8_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i32 @urtw_write8_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @urtw_write32_m(%struct.urtw_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
