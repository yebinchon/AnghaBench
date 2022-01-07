; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/usb/wlan/extr_if_urtw.c_urtw_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.urtw_softc = type { i32, i32 }

@URTW_8225_ANAPARAM_ON = common dso_local global i32 0, align 4
@URTW_8225_ANAPARAM2_ON = common dso_local global i32 0, align 4
@URTW_CMD = common dso_local global i32 0, align 4
@URTW_CMD_RST = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"reset timeout\0A\00", align 1
@URTW_EPROM_CMD_LOAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.urtw_softc*)* @urtw_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @urtw_reset(%struct.urtw_softc* %0) #0 {
  %2 = alloca %struct.urtw_softc*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store %struct.urtw_softc* %0, %struct.urtw_softc** %2, align 8
  %5 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %6 = load i32, i32* @URTW_8225_ANAPARAM_ON, align 4
  %7 = call i64 @urtw_8180_set_anaparam(%struct.urtw_softc* %5, i32 %6)
  store i64 %7, i64* %4, align 8
  %8 = load i64, i64* %4, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %100

11:                                               ; preds = %1
  %12 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %13 = load i32, i32* @URTW_8225_ANAPARAM2_ON, align 4
  %14 = call i64 @urtw_8185_set_anaparam2(%struct.urtw_softc* %12, i32 %13)
  store i64 %14, i64* %4, align 8
  %15 = load i64, i64* %4, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %100

18:                                               ; preds = %11
  %19 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %20 = call i64 @urtw_intr_disable(%struct.urtw_softc* %19)
  store i64 %20, i64* %4, align 8
  %21 = load i64, i64* %4, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %100

24:                                               ; preds = %18
  %25 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %26 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %25, i32 0, i32 0
  %27 = call i32 @usb_pause_mtx(i32* %26, i32 100)
  %28 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %29 = call i64 @urtw_write8e(%struct.urtw_softc* %28, i32 24, i32 16)
  store i64 %29, i64* %4, align 8
  %30 = load i64, i64* %4, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %100

33:                                               ; preds = %24
  %34 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %35 = call i64 @urtw_write8e(%struct.urtw_softc* %34, i32 24, i32 17)
  store i64 %35, i64* %4, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %33
  br label %100

39:                                               ; preds = %33
  %40 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %41 = call i64 @urtw_write8e(%struct.urtw_softc* %40, i32 24, i32 0)
  store i64 %41, i64* %4, align 8
  %42 = load i64, i64* %4, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39
  br label %100

45:                                               ; preds = %39
  %46 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %47 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %46, i32 0, i32 0
  %48 = call i32 @usb_pause_mtx(i32* %47, i32 100)
  %49 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %50 = load i32, i32* @URTW_CMD, align 4
  %51 = call i32 @urtw_read8_m(%struct.urtw_softc* %49, i32 %50, i32* %3)
  %52 = load i32, i32* %3, align 4
  %53 = and i32 %52, 2
  %54 = load i32, i32* @URTW_CMD_RST, align 4
  %55 = or i32 %53, %54
  store i32 %55, i32* %3, align 4
  %56 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %57 = load i32, i32* @URTW_CMD, align 4
  %58 = load i32, i32* %3, align 4
  %59 = call i32 @urtw_write8_m(%struct.urtw_softc* %56, i32 %57, i32 %58)
  %60 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %61 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %60, i32 0, i32 0
  %62 = call i32 @usb_pause_mtx(i32* %61, i32 100)
  %63 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %64 = load i32, i32* @URTW_CMD, align 4
  %65 = call i32 @urtw_read8_m(%struct.urtw_softc* %63, i32 %64, i32* %3)
  %66 = load i32, i32* %3, align 4
  %67 = load i32, i32* @URTW_CMD_RST, align 4
  %68 = and i32 %66, %67
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %75

70:                                               ; preds = %45
  %71 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %72 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @device_printf(i32 %73, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  br label %100

75:                                               ; preds = %45
  %76 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %77 = load i32, i32* @URTW_EPROM_CMD_LOAD, align 4
  %78 = call i64 @urtw_set_mode(%struct.urtw_softc* %76, i32 %77)
  store i64 %78, i64* %4, align 8
  %79 = load i64, i64* %4, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %75
  br label %100

82:                                               ; preds = %75
  %83 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %84 = getelementptr inbounds %struct.urtw_softc, %struct.urtw_softc* %83, i32 0, i32 0
  %85 = call i32 @usb_pause_mtx(i32* %84, i32 100)
  %86 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %87 = load i32, i32* @URTW_8225_ANAPARAM_ON, align 4
  %88 = call i64 @urtw_8180_set_anaparam(%struct.urtw_softc* %86, i32 %87)
  store i64 %88, i64* %4, align 8
  %89 = load i64, i64* %4, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %100

92:                                               ; preds = %82
  %93 = load %struct.urtw_softc*, %struct.urtw_softc** %2, align 8
  %94 = load i32, i32* @URTW_8225_ANAPARAM2_ON, align 4
  %95 = call i64 @urtw_8185_set_anaparam2(%struct.urtw_softc* %93, i32 %94)
  store i64 %95, i64* %4, align 8
  %96 = load i64, i64* %4, align 8
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %92
  br label %100

99:                                               ; preds = %92
  br label %100

100:                                              ; preds = %99, %98, %91, %81, %70, %44, %38, %32, %23, %17, %10
  %101 = load i64, i64* %4, align 8
  ret i64 %101
}

declare dso_local i64 @urtw_8180_set_anaparam(%struct.urtw_softc*, i32) #1

declare dso_local i64 @urtw_8185_set_anaparam2(%struct.urtw_softc*, i32) #1

declare dso_local i64 @urtw_intr_disable(%struct.urtw_softc*) #1

declare dso_local i32 @usb_pause_mtx(i32*, i32) #1

declare dso_local i64 @urtw_write8e(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @urtw_read8_m(%struct.urtw_softc*, i32, i32*) #1

declare dso_local i32 @urtw_write8_m(%struct.urtw_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i64 @urtw_set_mode(%struct.urtw_softc*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
