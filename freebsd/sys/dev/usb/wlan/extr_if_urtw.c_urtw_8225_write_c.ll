; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225_write_c.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225_write_c.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32 }

@URTW_RF_PINS_OUTPUT = common dso_local global i32 0, align 4
@URTW_RF_PINS_MAGIC1 = common dso_local global i32 0, align 4
@URTW_RF_PINS_ENABLE = common dso_local global i32 0, align 4
@URTW_RF_PINS_SELECT = common dso_local global i32 0, align 4
@URTW_RF_PINS_MAGIC2 = common dso_local global i32 0, align 4
@URTW_RF_PINS_MAGIC3 = common dso_local global i32 0, align 4
@URTW_BB_HOST_BANG_EN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urtw_softc*, i32, i32)* @urtw_8225_write_c to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urtw_8225_write_c(%struct.urtw_softc* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.urtw_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %12 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %13 = call i32 @urtw_read16_m(%struct.urtw_softc* %11, i32 %12, i32* %7)
  %14 = load i32, i32* @URTW_RF_PINS_MAGIC1, align 4
  %15 = load i32, i32* %7, align 4
  %16 = and i32 %15, %14
  store i32 %16, i32* %7, align 4
  %17 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %18 = load i32, i32* @URTW_RF_PINS_ENABLE, align 4
  %19 = call i32 @urtw_read16_m(%struct.urtw_softc* %17, i32 %18, i32* %8)
  %20 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %21 = load i32, i32* @URTW_RF_PINS_SELECT, align 4
  %22 = call i32 @urtw_read16_m(%struct.urtw_softc* %20, i32 %21, i32* %9)
  %23 = load i32, i32* @URTW_RF_PINS_MAGIC2, align 4
  %24 = load i32, i32* %9, align 4
  %25 = and i32 %24, %23
  store i32 %25, i32* %9, align 4
  %26 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %27 = load i32, i32* @URTW_RF_PINS_ENABLE, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @URTW_RF_PINS_MAGIC3, align 4
  %30 = or i32 %28, %29
  %31 = call i32 @urtw_write16_m(%struct.urtw_softc* %26, i32 %27, i32 %30)
  %32 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %33 = load i32, i32* @URTW_RF_PINS_SELECT, align 4
  %34 = load i32, i32* %9, align 4
  %35 = load i32, i32* @URTW_RF_PINS_MAGIC3, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @urtw_write16_m(%struct.urtw_softc* %32, i32 %33, i32 %36)
  %38 = call i32 @DELAY(i32 10)
  %39 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %40 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @URTW_BB_HOST_BANG_EN, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @urtw_write16_m(%struct.urtw_softc* %39, i32 %40, i32 %43)
  %45 = call i32 @DELAY(i32 2)
  %46 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %47 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 @urtw_write16_m(%struct.urtw_softc* %46, i32 %47, i32 %48)
  %50 = call i32 @DELAY(i32 10)
  %51 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %52 = load i32, i32* %5, align 4
  %53 = call i64 @urtw_8225_write_s16(%struct.urtw_softc* %51, i32 %52, i32 33317, i32* %6)
  store i64 %53, i64* %10, align 8
  %54 = load i64, i64* %10, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %3
  br label %78

57:                                               ; preds = %3
  %58 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %59 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* @URTW_BB_HOST_BANG_EN, align 4
  %62 = or i32 %60, %61
  %63 = call i32 @urtw_write16_m(%struct.urtw_softc* %58, i32 %59, i32 %62)
  %64 = call i32 @DELAY(i32 10)
  %65 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %66 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* @URTW_BB_HOST_BANG_EN, align 4
  %69 = or i32 %67, %68
  %70 = call i32 @urtw_write16_m(%struct.urtw_softc* %65, i32 %66, i32 %69)
  %71 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %72 = load i32, i32* @URTW_RF_PINS_SELECT, align 4
  %73 = load i32, i32* %9, align 4
  %74 = call i32 @urtw_write16_m(%struct.urtw_softc* %71, i32 %72, i32 %73)
  %75 = load %struct.urtw_softc*, %struct.urtw_softc** %4, align 8
  %76 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %75, i32 0, i32 0
  %77 = call i32 @usb_pause_mtx(i32* %76, i32 2)
  br label %78

78:                                               ; preds = %57, %56
  %79 = load i64, i64* %10, align 8
  ret i64 %79
}

declare dso_local i32 @urtw_read16_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i32 @urtw_write16_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i64 @urtw_8225_write_s16(%struct.urtw_softc*, i32, i32, i32*) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
