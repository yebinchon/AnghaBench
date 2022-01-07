; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds13rtc.c_ds13rtc_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_ds13rtc.c_ds13rtc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ds13rtc_softc = type { i32, i32, i32, i64, i32, i64 }

@DS130x_R_CONTROL = common dso_local global i64 0, align 8
@DS133x_R_CONTROL = common dso_local global i64 0, align 8
@DS1341_R_CONTROL = common dso_local global i64 0, align 8
@DS13xx_R_NONE = common dso_local global i64 0, align 8
@DS1388_R_CONTROL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"missing init code for this chiptype\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"cannot read RTC clock status bit\0A\00", align 1
@DS13xx_B_STATUS_OSF = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [46 x i8] c"WARNING: RTC battery failed; time is invalid\0A\00", align 1
@.str.3 = private unnamed_addr constant [33 x i8] c"cannot read RTC clock AM/PM bit\0A\00", align 1
@DS13xx_B_HOUR_AMPM = common dso_local global i64 0, align 8
@CLOCKF_SETTIME_NO_ADJ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @ds13rtc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ds13rtc_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.ds13rtc_softc*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = bitcast i8* %6 to %struct.ds13rtc_softc*
  store %struct.ds13rtc_softc* %7, %struct.ds13rtc_softc** %3, align 8
  %8 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %9 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  switch i32 %10, label %21 [
    i32 140, label %11
    i32 139, label %11
    i32 137, label %11
    i32 135, label %11
    i32 132, label %11
    i32 131, label %11
    i32 130, label %11
    i32 138, label %13
    i32 136, label %13
    i32 134, label %15
    i32 133, label %15
    i32 129, label %17
    i32 128, label %19
  ]

11:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %12 = load i64, i64* @DS130x_R_CONTROL, align 8
  store i64 %12, i64* %4, align 8
  br label %26

13:                                               ; preds = %1, %1
  %14 = load i64, i64* @DS133x_R_CONTROL, align 8
  store i64 %14, i64* %4, align 8
  br label %26

15:                                               ; preds = %1, %1
  %16 = load i64, i64* @DS1341_R_CONTROL, align 8
  store i64 %16, i64* %4, align 8
  br label %26

17:                                               ; preds = %1
  %18 = load i64, i64* @DS13xx_R_NONE, align 8
  store i64 %18, i64* %4, align 8
  br label %26

19:                                               ; preds = %1
  %20 = load i64, i64* @DS1388_R_CONTROL, align 8
  store i64 %20, i64* %4, align 8
  br label %26

21:                                               ; preds = %1
  %22 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %23 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 8
  %25 = call i32 @device_printf(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %98

26:                                               ; preds = %19, %17, %15, %13, %11
  %27 = load i64, i64* %4, align 8
  %28 = load i64, i64* @DS13xx_R_NONE, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %32 = load i64, i64* %4, align 8
  %33 = call i32 @write_reg(%struct.ds13rtc_softc* %31, i64 %32, i32 0)
  br label %34

34:                                               ; preds = %30, %26
  %35 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %36 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %37 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %36, i32 0, i32 5
  %38 = load i64, i64* %37, align 8
  %39 = call i64 @read_reg(%struct.ds13rtc_softc* %35, i64 %38, i64* %5)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %34
  %42 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %43 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %98

46:                                               ; preds = %34
  %47 = load i64, i64* %5, align 8
  %48 = load i64, i64* @DS13xx_B_STATUS_OSF, align 8
  %49 = and i64 %47, %48
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %56

51:                                               ; preds = %46
  %52 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %53 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @device_printf(i32 %54, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0))
  br label %56

56:                                               ; preds = %51, %46
  %57 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %58 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp ne i32 %59, 135
  br i1 %60, label %61, label %88

61:                                               ; preds = %56
  %62 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %63 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %62, i32 0, i32 4
  %64 = load i32, i32* %63, align 8
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %88, label %66

66:                                               ; preds = %61
  %67 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %68 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %69 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 2
  %72 = call i64 @read_reg(%struct.ds13rtc_softc* %67, i64 %71, i64* %5)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %79

74:                                               ; preds = %66
  %75 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %76 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @device_printf(i32 %77, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.3, i64 0, i64 0))
  br label %98

79:                                               ; preds = %66
  %80 = load i64, i64* %5, align 8
  %81 = load i64, i64* @DS13xx_B_HOUR_AMPM, align 8
  %82 = and i64 %80, %81
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %79
  %85 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %86 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %85, i32 0, i32 1
  store i32 1, i32* %86, align 4
  br label %87

87:                                               ; preds = %84, %79
  br label %88

88:                                               ; preds = %87, %61, %56
  %89 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %90 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* @CLOCKF_SETTIME_NO_ADJ, align 4
  %93 = call i32 @clock_register_flags(i32 %91, i32 1000000, i32 %92)
  %94 = load %struct.ds13rtc_softc*, %struct.ds13rtc_softc** %3, align 8
  %95 = getelementptr inbounds %struct.ds13rtc_softc, %struct.ds13rtc_softc* %94, i32 0, i32 2
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @clock_schedule(i32 %96, i32 1)
  br label %98

98:                                               ; preds = %88, %74, %41, %21
  ret void
}

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @write_reg(%struct.ds13rtc_softc*, i64, i32) #1

declare dso_local i64 @read_reg(%struct.ds13rtc_softc*, i64, i64*) #1

declare dso_local i32 @clock_register_flags(i32, i32, i32) #1

declare dso_local i32 @clock_schedule(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
