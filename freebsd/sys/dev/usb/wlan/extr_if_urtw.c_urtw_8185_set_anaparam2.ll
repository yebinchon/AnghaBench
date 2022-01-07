; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8185_set_anaparam2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8185_set_anaparam2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32 }

@URTW_EPROM_CMD_CONFIG = common dso_local global i32 0, align 4
@URTW_CONFIG3 = common dso_local global i32 0, align 4
@URTW_CONFIG3_ANAPARAM_WRITE = common dso_local global i32 0, align 4
@URTW_ANAPARAM2 = common dso_local global i32 0, align 4
@URTW_EPROM_CMD_NORMAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urtw_softc*, i32)* @urtw_8185_set_anaparam2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urtw_8185_set_anaparam2(%struct.urtw_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.urtw_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %8 = load i32, i32* @URTW_EPROM_CMD_CONFIG, align 4
  %9 = call i64 @urtw_set_mode(%struct.urtw_softc* %7, i32 %8)
  store i64 %9, i64* %6, align 8
  %10 = load i64, i64* %6, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  br label %44

13:                                               ; preds = %2
  %14 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %15 = load i32, i32* @URTW_CONFIG3, align 4
  %16 = call i32 @urtw_read8_m(%struct.urtw_softc* %14, i32 %15, i32* %5)
  %17 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %18 = load i32, i32* @URTW_CONFIG3, align 4
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @URTW_CONFIG3_ANAPARAM_WRITE, align 4
  %21 = or i32 %19, %20
  %22 = call i32 @urtw_write8_m(%struct.urtw_softc* %17, i32 %18, i32 %21)
  %23 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %24 = load i32, i32* @URTW_ANAPARAM2, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @urtw_write32_m(%struct.urtw_softc* %23, i32 %24, i32 %25)
  %27 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %28 = load i32, i32* @URTW_CONFIG3, align 4
  %29 = call i32 @urtw_read8_m(%struct.urtw_softc* %27, i32 %28, i32* %5)
  %30 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %31 = load i32, i32* @URTW_CONFIG3, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @URTW_CONFIG3_ANAPARAM_WRITE, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = call i32 @urtw_write8_m(%struct.urtw_softc* %30, i32 %31, i32 %35)
  %37 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %38 = load i32, i32* @URTW_EPROM_CMD_NORMAL, align 4
  %39 = call i64 @urtw_set_mode(%struct.urtw_softc* %37, i32 %38)
  store i64 %39, i64* %6, align 8
  %40 = load i64, i64* %6, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %13
  br label %44

43:                                               ; preds = %13
  br label %44

44:                                               ; preds = %43, %42, %12
  %45 = load i64, i64* %6, align 8
  ret i64 %45
}

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
