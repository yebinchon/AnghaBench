; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1307.c_ds1307_gettime.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds1307.c_ds1307_gettime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32 }
%struct.bcd_clocktime = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.ds1307_softc = type { i32, i32, i64 }

@DS1307_SECS = common dso_local global i64 0, align 8
@IIC_INTRWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"cannot read from RTC.\0A\00", align 1
@DS1307_SECS_CH = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DS1307_HOUR = common dso_local global i64 0, align 8
@DS1307_HOUR_USE_AMPM = common dso_local global i32 0, align 4
@DS1307_HOUR_MASK_12HR = common dso_local global i32 0, align 4
@DS1307_HOUR_MASK_24HR = common dso_local global i32 0, align 4
@DS1307_HOUR_IS_PM = common dso_local global i32 0, align 4
@DS1307_SECS_MASK = common dso_local global i32 0, align 4
@DS1307_MINS = common dso_local global i64 0, align 8
@DS1307_MINS_MASK = common dso_local global i32 0, align 4
@DS1307_DATE = common dso_local global i64 0, align 8
@DS1307_DATE_MASK = common dso_local global i32 0, align 4
@DS1307_MONTH = common dso_local global i64 0, align 8
@DS1307_MONTH_MASK = common dso_local global i32 0, align 4
@DS1307_YEAR = common dso_local global i64 0, align 8
@DS1307_YEAR_MASK = common dso_local global i32 0, align 4
@CLOCK_DBG_READ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.timespec*)* @ds1307_gettime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ds1307_gettime(i32 %0, %struct.timespec* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.bcd_clocktime, align 8
  %8 = alloca %struct.ds1307_softc*, align 8
  %9 = alloca [7 x i32], align 16
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.timespec* %1, %struct.timespec** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call %struct.ds1307_softc* @device_get_softc(i32 %12)
  store %struct.ds1307_softc* %13, %struct.ds1307_softc** %8, align 8
  %14 = load %struct.ds1307_softc*, %struct.ds1307_softc** %8, align 8
  %15 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i64, i64* @DS1307_SECS, align 8
  %18 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 0
  %19 = load i32, i32* @IIC_INTRWAIT, align 4
  %20 = call i32 @iicdev_readfrom(i32 %16, i64 %17, i32* %18, i32 28, i32 %19)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %27

23:                                               ; preds = %2
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %114

27:                                               ; preds = %2
  %28 = load %struct.ds1307_softc*, %struct.ds1307_softc** %8, align 8
  %29 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %28, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  store i32 128, i32* %11, align 4
  br label %34

33:                                               ; preds = %27
  store i32 0, i32* %11, align 4
  br label %34

34:                                               ; preds = %33, %32
  %35 = load i64, i64* @DS1307_SECS, align 8
  %36 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @DS1307_SECS_CH, align 4
  %39 = and i32 %37, %38
  %40 = load i32, i32* %11, align 4
  %41 = xor i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* @EINVAL, align 4
  store i32 %44, i32* %3, align 4
  br label %114

45:                                               ; preds = %34
  %46 = load i64, i64* @DS1307_HOUR, align 8
  %47 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @DS1307_HOUR_USE_AMPM, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %56

52:                                               ; preds = %45
  %53 = load %struct.ds1307_softc*, %struct.ds1307_softc** %8, align 8
  %54 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %53, i32 0, i32 0
  store i32 1, i32* %54, align 8
  %55 = load i32, i32* @DS1307_HOUR_MASK_12HR, align 4
  store i32 %55, i32* %10, align 4
  br label %58

56:                                               ; preds = %45
  %57 = load i32, i32* @DS1307_HOUR_MASK_24HR, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %56, %52
  %59 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 7
  store i64 0, i64* %59, align 8
  %60 = load i64, i64* @DS1307_HOUR, align 8
  %61 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @DS1307_HOUR_IS_PM, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  %66 = zext i1 %65 to i32
  %67 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 0
  store i32 %66, i32* %67, align 8
  %68 = load i64, i64* @DS1307_SECS, align 8
  %69 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %68
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* @DS1307_SECS_MASK, align 4
  %72 = and i32 %70, %71
  %73 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 1
  store i32 %72, i32* %73, align 4
  %74 = load i64, i64* @DS1307_MINS, align 8
  %75 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %74
  %76 = load i32, i32* %75, align 4
  %77 = load i32, i32* @DS1307_MINS_MASK, align 4
  %78 = and i32 %76, %77
  %79 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 2
  store i32 %78, i32* %79, align 8
  %80 = load i64, i64* @DS1307_HOUR, align 8
  %81 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %10, align 4
  %84 = and i32 %82, %83
  %85 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 3
  store i32 %84, i32* %85, align 4
  %86 = load i64, i64* @DS1307_DATE, align 8
  %87 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @DS1307_DATE_MASK, align 4
  %90 = and i32 %88, %89
  %91 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 4
  store i32 %90, i32* %91, align 8
  %92 = load i64, i64* @DS1307_MONTH, align 8
  %93 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %92
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @DS1307_MONTH_MASK, align 4
  %96 = and i32 %94, %95
  %97 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 5
  store i32 %96, i32* %97, align 4
  %98 = load i64, i64* @DS1307_YEAR, align 8
  %99 = getelementptr inbounds [7 x i32], [7 x i32]* %9, i64 0, i64 %98
  %100 = load i32, i32* %99, align 4
  %101 = load i32, i32* @DS1307_YEAR_MASK, align 4
  %102 = and i32 %100, %101
  %103 = getelementptr inbounds %struct.bcd_clocktime, %struct.bcd_clocktime* %7, i32 0, i32 6
  store i32 %102, i32* %103, align 8
  %104 = load %struct.ds1307_softc*, %struct.ds1307_softc** %8, align 8
  %105 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CLOCK_DBG_READ, align 4
  %108 = call i32 @clock_dbgprint_bcd(i32 %106, i32 %107, %struct.bcd_clocktime* %7)
  %109 = load %struct.timespec*, %struct.timespec** %5, align 8
  %110 = load %struct.ds1307_softc*, %struct.ds1307_softc** %8, align 8
  %111 = getelementptr inbounds %struct.ds1307_softc, %struct.ds1307_softc* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = call i32 @clock_bcd_to_ts(%struct.bcd_clocktime* %7, %struct.timespec* %109, i32 %112)
  store i32 %113, i32* %3, align 4
  br label %114

114:                                              ; preds = %58, %43, %23
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.ds1307_softc* @device_get_softc(i32) #1

declare dso_local i32 @iicdev_readfrom(i32, i64, i32*, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @clock_dbgprint_bcd(i32, i32, %struct.bcd_clocktime*) #1

declare dso_local i32 @clock_bcd_to_ts(%struct.bcd_clocktime*, %struct.timespec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
