; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_fill_fan_prop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_smu.c_smu_fill_fan_prop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.smu_fan = type { i64, i8, i32, i32, %struct.TYPE_2__, i64, i32 }
%struct.TYPE_2__ = type { i8, i8, i8, i8, i8* }
%struct.smu_softc = type { %struct.smu_fan* }

@.str = private unnamed_addr constant [12 x i8] c"device_type\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"fan-rpm-control\00", align 1
@SMU_FAN_RPM = common dso_local global i64 0, align 8
@SMU_FAN_PWM = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"min-value\00", align 1
@.str.4 = private unnamed_addr constant [10 x i8] c"max-value\00", align 1
@.str.5 = private unnamed_addr constant [5 x i8] c"zone\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"unmanaged-value\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"location\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @smu_fill_fan_prop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smu_fill_fan_prop(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.smu_fan*, align 8
  %8 = alloca %struct.smu_softc*, align 8
  %9 = alloca [32 x i8], align 16
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.smu_softc* @device_get_softc(i32 %10)
  store %struct.smu_softc* %11, %struct.smu_softc** %8, align 8
  %12 = load %struct.smu_softc*, %struct.smu_softc** %8, align 8
  %13 = getelementptr inbounds %struct.smu_softc, %struct.smu_softc* %12, i32 0, i32 0
  %14 = load %struct.smu_fan*, %struct.smu_fan** %13, align 8
  %15 = load i32, i32* %6, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %14, i64 %16
  store %struct.smu_fan* %17, %struct.smu_fan** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %20 = call i32 @OF_getprop(i32 %18, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* %19, i32 32)
  %21 = getelementptr inbounds [32 x i8], [32 x i8]* %9, i64 0, i64 0
  %22 = call i64 @strcmp(i8* %21, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load i64, i64* @SMU_FAN_RPM, align 8
  %26 = load %struct.smu_fan*, %struct.smu_fan** %7, align 8
  %27 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %26, i32 0, i32 0
  store i64 %25, i64* %27, align 8
  br label %32

28:                                               ; preds = %3
  %29 = load i64, i64* @SMU_FAN_PWM, align 8
  %30 = load %struct.smu_fan*, %struct.smu_fan** %7, align 8
  %31 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %30, i32 0, i32 0
  store i64 %29, i64* %31, align 8
  br label %32

32:                                               ; preds = %28, %24
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.smu_fan*, %struct.smu_fan** %7, align 8
  %35 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %34, i32 0, i32 6
  store i32 %33, i32* %35, align 8
  %36 = load %struct.smu_fan*, %struct.smu_fan** %7, align 8
  %37 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %36, i32 0, i32 5
  store i64 0, i64* %37, align 8
  %38 = load i32, i32* %5, align 4
  %39 = load %struct.smu_fan*, %struct.smu_fan** %7, align 8
  %40 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %39, i32 0, i32 1
  %41 = call i32 @OF_getprop(i32 %38, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i8* %40, i32 4)
  %42 = load i32, i32* %5, align 4
  %43 = load %struct.smu_fan*, %struct.smu_fan** %7, align 8
  %44 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %43, i32 0, i32 4
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = call i32 @OF_getprop(i32 %42, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %45, i32 4)
  %47 = load i32, i32* %5, align 4
  %48 = load %struct.smu_fan*, %struct.smu_fan** %7, align 8
  %49 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %48, i32 0, i32 4
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 1
  %51 = call i32 @OF_getprop(i32 %47, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.4, i64 0, i64 0), i8* %50, i32 4)
  %52 = load i32, i32* %5, align 4
  %53 = load %struct.smu_fan*, %struct.smu_fan** %7, align 8
  %54 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %53, i32 0, i32 4
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 2
  %56 = call i32 @OF_getprop(i32 %52, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.5, i64 0, i64 0), i8* %55, i32 4)
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.smu_fan*, %struct.smu_fan** %7, align 8
  %59 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %58, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 3
  %61 = call i32 @OF_getprop(i32 %57, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %60, i32 4)
  %62 = sext i32 %61 to i64
  %63 = icmp ne i64 %62, 4
  br i1 %63, label %64, label %72

64:                                               ; preds = %32
  %65 = load %struct.smu_fan*, %struct.smu_fan** %7, align 8
  %66 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %65, i32 0, i32 4
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 1
  %68 = load i8, i8* %67, align 1
  %69 = load %struct.smu_fan*, %struct.smu_fan** %7, align 8
  %70 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %69, i32 0, i32 4
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 3
  store i8 %68, i8* %71, align 1
  br label %72

72:                                               ; preds = %64, %32
  %73 = load i32, i32* %5, align 4
  %74 = load %struct.smu_fan*, %struct.smu_fan** %7, align 8
  %75 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %74, i32 0, i32 4
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 4
  %77 = load i8*, i8** %76, align 8
  %78 = call i32 @OF_getprop(i32 %73, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0), i8* %77, i32 8)
  %79 = load %struct.smu_fan*, %struct.smu_fan** %7, align 8
  %80 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @SMU_FAN_RPM, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %72
  %85 = load %struct.smu_fan*, %struct.smu_fan** %7, align 8
  %86 = call i32 @smu_fan_read_rpm(%struct.smu_fan* %85)
  %87 = load %struct.smu_fan*, %struct.smu_fan** %7, align 8
  %88 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %87, i32 0, i32 3
  store i32 %86, i32* %88, align 8
  br label %96

89:                                               ; preds = %72
  %90 = load %struct.smu_fan*, %struct.smu_fan** %7, align 8
  %91 = load %struct.smu_fan*, %struct.smu_fan** %7, align 8
  %92 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %91, i32 0, i32 3
  %93 = load %struct.smu_fan*, %struct.smu_fan** %7, align 8
  %94 = getelementptr inbounds %struct.smu_fan, %struct.smu_fan* %93, i32 0, i32 2
  %95 = call i32 @smu_fan_read_pwm(%struct.smu_fan* %90, i32* %92, i32* %94)
  br label %96

96:                                               ; preds = %89, %84
  ret void
}

declare dso_local %struct.smu_softc* @device_get_softc(i32) #1

declare dso_local i32 @OF_getprop(i32, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @smu_fan_read_rpm(%struct.smu_fan*) #1

declare dso_local i32 @smu_fan_read_pwm(%struct.smu_fan*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
