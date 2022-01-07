; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_nxprtc_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iicbus/extr_nxprtc.c_nxprtc_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nxprtc_softc = type { i32, i32, i32, i64, i32 }

@.str = private unnamed_addr constant [21 x i8] c"cannot set up timer\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"missing init code for this chiptype\0A\00", align 1
@TMR_TICKS_SEC = common dso_local global i32 0, align 4
@CLOCKF_GETTIME_NO_ADJ = common dso_local global i32 0, align 4
@CLOCKF_SETTIME_NO_TS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @nxprtc_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nxprtc_start(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.nxprtc_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = ptrtoint i8* %6 to i32
  %8 = call %struct.nxprtc_softc* @device_get_softc(i32 %7)
  store %struct.nxprtc_softc* %8, %struct.nxprtc_softc** %3, align 8
  %9 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %10 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %9, i32 0, i32 4
  %11 = call i32 @config_intrhook_disestablish(i32* %10)
  %12 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %13 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  switch i32 %14, label %62 [
    i32 133, label %15
    i32 130, label %15
    i32 131, label %15
    i32 129, label %32
    i32 132, label %47
    i32 128, label %47
  ]

15:                                               ; preds = %1, %1, %1
  %16 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %17 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %16, i32 0, i32 1
  store i32 1, i32* %17, align 4
  %18 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %19 = call i32 @pcf8523_start(%struct.nxprtc_softc* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %91

22:                                               ; preds = %15
  %23 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %24 = call i32 @pcf2127_start_timer(%struct.nxprtc_softc* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %28 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @device_printf(i32 %29, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %91

31:                                               ; preds = %22
  br label %67

32:                                               ; preds = %1
  %33 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %34 = call i32 @pcf8523_start(%struct.nxprtc_softc* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  br label %91

37:                                               ; preds = %32
  %38 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %39 = call i32 @pcf8523_start_timer(%struct.nxprtc_softc* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %46

41:                                               ; preds = %37
  %42 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %43 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i32 @device_printf(i32 %44, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %91

46:                                               ; preds = %37
  br label %67

47:                                               ; preds = %1, %1
  %48 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %49 = call i32 @pcf8563_start(%struct.nxprtc_softc* %48)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %47
  br label %91

52:                                               ; preds = %47
  %53 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %54 = call i32 @pcf8563_start_timer(%struct.nxprtc_softc* %53)
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %52
  %57 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %58 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = call i32 @device_printf(i32 %59, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  br label %91

61:                                               ; preds = %52
  br label %67

62:                                               ; preds = %1
  %63 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %64 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = call i32 @device_printf(i32 %65, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  br label %91

67:                                               ; preds = %61, %46, %31
  %68 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %69 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %68, i32 0, i32 3
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %67
  %73 = load i32, i32* @TMR_TICKS_SEC, align 4
  %74 = sdiv i32 1000000, %73
  br label %76

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %75, %72
  %77 = phi i32 [ %74, %72 ], [ 500000, %75 ]
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* @CLOCKF_GETTIME_NO_ADJ, align 4
  %79 = load i32, i32* @CLOCKF_SETTIME_NO_TS, align 4
  %80 = or i32 %78, %79
  store i32 %80, i32* %4, align 4
  %81 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %82 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 8
  %84 = load i32, i32* %5, align 4
  %85 = load i32, i32* %4, align 4
  %86 = call i32 @clock_register_flags(i32 %83, i32 %84, i32 %85)
  %87 = load %struct.nxprtc_softc*, %struct.nxprtc_softc** %3, align 8
  %88 = getelementptr inbounds %struct.nxprtc_softc, %struct.nxprtc_softc* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 8
  %90 = call i32 @clock_schedule(i32 %89, i32 495000000)
  br label %91

91:                                               ; preds = %76, %62, %56, %51, %41, %36, %26, %21
  ret void
}

declare dso_local %struct.nxprtc_softc* @device_get_softc(i32) #1

declare dso_local i32 @config_intrhook_disestablish(i32*) #1

declare dso_local i32 @pcf8523_start(%struct.nxprtc_softc*) #1

declare dso_local i32 @pcf2127_start_timer(%struct.nxprtc_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pcf8523_start_timer(%struct.nxprtc_softc*) #1

declare dso_local i32 @pcf8563_start(%struct.nxprtc_softc*) #1

declare dso_local i32 @pcf8563_start_timer(%struct.nxprtc_softc*) #1

declare dso_local i32 @clock_register_flags(i32, i32, i32) #1

declare dso_local i32 @clock_schedule(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
