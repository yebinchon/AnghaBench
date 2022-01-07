; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_pcf8523_battery_check.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_pcf8523_battery_check.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxprtc_softc = type { i64, i32 }
%struct.timespec = type { i64 }

@PCF8523_R_CS3 = common dso_local global i32 0, align 4
@PCF8523_B_CS3_PM_STD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot write CS3 reg\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"nxpbat\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"cannot read CS3 reg\0A\00", align 1
@PCF8523_B_CS3_PM_DSNBM = common dso_local global i32 0, align 4
@PCF8523_B_CS3_BLF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [29 x i8] c"WARNING: RTC battery is low\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nxprtc_softc*)* @pcf8523_battery_check to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcf8523_battery_check(%struct.nxprtc_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nxprtc_softc*, align 8
  %4 = alloca %struct.timespec, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.nxprtc_softc* %0, %struct.nxprtc_softc** %3, align 8
  %7 = call i32 @getnanouptime(%struct.timespec* %4)
  %8 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %11 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp slt i64 %9, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %70

15:                                               ; preds = %1
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %4, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = add nsw i64 %17, 86400
  %19 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %20 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %19, i32 0, i32 0
  store i64 %18, i64* %20, align 8
  %21 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %22 = load i32, i32* @PCF8523_R_CS3, align 4
  %23 = load i32, i32* @PCF8523_B_CS3_PM_STD, align 4
  %24 = call i32 @write_reg(%struct.nxprtc_softc* %21, i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %33

27:                                               ; preds = %15
  %28 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %29 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @device_printf(i32 %30, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* %5, align 4
  store i32 %32, i32* %2, align 4
  br label %70

33:                                               ; preds = %15
  %34 = call i32 @mstosbt(i32 10)
  %35 = call i32 @pause_sbt(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 0, i32 0)
  %36 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %37 = load i32, i32* @PCF8523_R_CS3, align 4
  %38 = call i32 @read_reg(%struct.nxprtc_softc* %36, i32 %37, i32* %6)
  store i32 %38, i32* %5, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %46

40:                                               ; preds = %33
  %41 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %42 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @device_printf(i32 %43, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0))
  %45 = load i32, i32* %5, align 4
  store i32 %45, i32* %2, align 4
  br label %70

46:                                               ; preds = %33
  %47 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %48 = load i32, i32* @PCF8523_R_CS3, align 4
  %49 = load i32, i32* @PCF8523_B_CS3_PM_DSNBM, align 4
  %50 = call i32 @write_reg(%struct.nxprtc_softc* %47, i32 %48, i32 %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %59

53:                                               ; preds = %46
  %54 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %55 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @device_printf(i32 %56, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* %5, align 4
  store i32 %58, i32* %2, align 4
  br label %70

59:                                               ; preds = %46
  %60 = load i32, i32* %6, align 4
  %61 = load i32, i32* @PCF8523_B_CS3_BLF, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59
  %65 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %66 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @device_printf(i32 %67, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  br label %69

69:                                               ; preds = %64, %59
  store i32 0, i32* %2, align 4
  br label %70

70:                                               ; preds = %69, %53, %40, %27, %14
  %71 = load i32, i32* %2, align 4
  ret i32 %71
}

declare dso_local i32 @getnanouptime(%struct.timespec*) #1

declare dso_local i32 @write_reg(%struct.nxprtc_softc*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pause_sbt(i8*, i32, i32, i32) #1

declare dso_local i32 @mstosbt(i32) #1

declare dso_local i32 @read_reg(%struct.nxprtc_softc*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
