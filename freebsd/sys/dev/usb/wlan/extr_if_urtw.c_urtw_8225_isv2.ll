; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225_isv2.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_8225_isv2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32 }

@URTW_RF_PINS_OUTPUT = common dso_local global i32 0, align 4
@URTW_RF_PINS_MAGIC5 = common dso_local global i32 0, align 4
@URTW_RF_PINS_SELECT = common dso_local global i32 0, align 4
@URTW_RF_PINS_ENABLE = common dso_local global i32 0, align 4
@URTW_8225_ADDR_0_MAGIC = common dso_local global i32 0, align 4
@URTW_8225_ADDR_0_DATA_MAGIC1 = common dso_local global i32 0, align 4
@URTW_8225_ADDR_8_MAGIC = common dso_local global i32 0, align 4
@URTW_8225_ADDR_8_DATA_MAGIC1 = common dso_local global i64 0, align 8
@URTW_8225_ADDR_9_MAGIC = common dso_local global i32 0, align 4
@URTW_8225_ADDR_9_DATA_MAGIC1 = common dso_local global i64 0, align 8
@URTW_8225_ADDR_0_DATA_MAGIC2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urtw_softc*, i32*)* @urtw_8225_isv2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urtw_8225_isv2(%struct.urtw_softc* %0, i32* %1) #0 {
  %3 = alloca %struct.urtw_softc*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  store i32 1, i32* %7, align 4
  %8 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %9 = load i32, i32* @URTW_RF_PINS_OUTPUT, align 4
  %10 = load i32, i32* @URTW_RF_PINS_MAGIC5, align 4
  %11 = call i32 @urtw_write16_m(%struct.urtw_softc* %8, i32 %9, i32 %10)
  %12 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %13 = load i32, i32* @URTW_RF_PINS_SELECT, align 4
  %14 = load i32, i32* @URTW_RF_PINS_MAGIC5, align 4
  %15 = call i32 @urtw_write16_m(%struct.urtw_softc* %12, i32 %13, i32 %14)
  %16 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %17 = load i32, i32* @URTW_RF_PINS_ENABLE, align 4
  %18 = load i32, i32* @URTW_RF_PINS_MAGIC5, align 4
  %19 = call i32 @urtw_write16_m(%struct.urtw_softc* %16, i32 %17, i32 %18)
  %20 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %21 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %20, i32 0, i32 0
  %22 = call i32 @usb_pause_mtx(i32* %21, i32 500)
  %23 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %24 = load i32, i32* @URTW_8225_ADDR_0_MAGIC, align 4
  %25 = load i32, i32* @URTW_8225_ADDR_0_DATA_MAGIC1, align 4
  %26 = call i32 @urtw_8225_write(%struct.urtw_softc* %23, i32 %24, i32 %25)
  %27 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %28 = load i32, i32* @URTW_8225_ADDR_8_MAGIC, align 4
  %29 = call i64 @urtw_8225_read(%struct.urtw_softc* %27, i32 %28, i64* %5)
  store i64 %29, i64* %6, align 8
  %30 = load i64, i64* %6, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %2
  br label %58

33:                                               ; preds = %2
  %34 = load i64, i64* %5, align 8
  %35 = load i64, i64* @URTW_8225_ADDR_8_DATA_MAGIC1, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %33
  %38 = load i32*, i32** %4, align 8
  store i32 0, i32* %38, align 4
  br label %53

39:                                               ; preds = %33
  %40 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %41 = load i32, i32* @URTW_8225_ADDR_9_MAGIC, align 4
  %42 = call i64 @urtw_8225_read(%struct.urtw_softc* %40, i32 %41, i64* %5)
  store i64 %42, i64* %6, align 8
  %43 = load i64, i64* %6, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %46

45:                                               ; preds = %39
  br label %58

46:                                               ; preds = %39
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @URTW_8225_ADDR_9_DATA_MAGIC1, align 8
  %49 = icmp ne i64 %47, %48
  br i1 %49, label %50, label %52

50:                                               ; preds = %46
  %51 = load i32*, i32** %4, align 8
  store i32 0, i32* %51, align 4
  br label %52

52:                                               ; preds = %50, %46
  br label %53

53:                                               ; preds = %52, %37
  %54 = load %struct.urtw_softc*, %struct.urtw_softc** %3, align 8
  %55 = load i32, i32* @URTW_8225_ADDR_0_MAGIC, align 4
  %56 = load i32, i32* @URTW_8225_ADDR_0_DATA_MAGIC2, align 4
  %57 = call i32 @urtw_8225_write(%struct.urtw_softc* %54, i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %53, %45, %32
  %59 = load i64, i64* %6, align 8
  ret i64 %59
}

declare dso_local i32 @urtw_write16_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i32 @urtw_8225_write(%struct.urtw_softc*, i32, i32) #1

declare dso_local i64 @urtw_8225_read(%struct.urtw_softc*, i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
