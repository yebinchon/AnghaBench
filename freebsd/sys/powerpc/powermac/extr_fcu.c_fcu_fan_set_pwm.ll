; ModuleID = '/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_fcu.c_fcu_fan_set_pwm.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/powerpc/powermac/extr_fcu.c_fcu_fan_set_pwm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fcu_fan = type { i64, i32, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.fcu_softc = type { i32, i32 }

@FCU_FAN_PWM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"Unknown fan type: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fcu_fan*, i32)* @fcu_fan_set_pwm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fcu_fan_set_pwm(%struct.fcu_fan* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.fcu_fan*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.fcu_softc*, align 8
  %8 = alloca [2 x i32], align 4
  store %struct.fcu_fan* %0, %struct.fcu_fan** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load %struct.fcu_fan*, %struct.fcu_fan** %4, align 8
  %10 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.fcu_softc* @device_get_softc(i32 %11)
  store %struct.fcu_softc* %12, %struct.fcu_softc** %7, align 8
  %13 = load %struct.fcu_fan*, %struct.fcu_fan** %4, align 8
  %14 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %13, i32 0, i32 4
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @max(i32 %16, i32 %17)
  store i32 %18, i32* %5, align 4
  %19 = load %struct.fcu_fan*, %struct.fcu_fan** %4, align 8
  %20 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %19, i32 0, i32 4
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @min(i32 %22, i32 %23)
  store i32 %24, i32* %5, align 4
  %25 = load %struct.fcu_fan*, %struct.fcu_fan** %4, align 8
  %26 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @FCU_FAN_PWM, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %46

30:                                               ; preds = %2
  %31 = load %struct.fcu_fan*, %struct.fcu_fan** %4, align 8
  %32 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @FCU_PWM_SGET(i32 %33)
  store i32 %34, i32* %6, align 4
  %35 = load i32, i32* %5, align 4
  %36 = icmp sgt i32 %35, 100
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  store i32 100, i32* %5, align 4
  br label %38

38:                                               ; preds = %37, %30
  %39 = load i32, i32* %5, align 4
  %40 = icmp slt i32 %39, 30
  br i1 %40, label %41, label %42

41:                                               ; preds = %38
  store i32 30, i32* %5, align 4
  br label %42

42:                                               ; preds = %41, %38
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.fcu_fan*, %struct.fcu_fan** %4, align 8
  %45 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %44, i32 0, i32 1
  store i32 %43, i32* %45, align 8
  br label %55

46:                                               ; preds = %2
  %47 = load %struct.fcu_fan*, %struct.fcu_fan** %4, align 8
  %48 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fcu_fan*, %struct.fcu_fan** %4, align 8
  %51 = getelementptr inbounds %struct.fcu_fan, %struct.fcu_fan* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32 @device_printf(i32 %49, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %52)
  %54 = load i32, i32* @EIO, align 4
  store i32 %54, i32* %3, align 4
  br label %73

55:                                               ; preds = %42
  %56 = load i32, i32* %5, align 4
  %57 = mul nsw i32 %56, 2550
  %58 = sdiv i32 %57, 1000
  %59 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  store i32 %58, i32* %59, align 4
  %60 = load %struct.fcu_softc*, %struct.fcu_softc** %7, align 8
  %61 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.fcu_softc*, %struct.fcu_softc** %7, align 8
  %64 = getelementptr inbounds %struct.fcu_softc, %struct.fcu_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %6, align 4
  %67 = getelementptr inbounds [2 x i32], [2 x i32]* %8, i64 0, i64 0
  %68 = call i64 @fcu_write(i32 %62, i32 %65, i32 %66, i32* %67, i32 1)
  %69 = icmp slt i64 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %55
  %71 = load i32, i32* @EIO, align 4
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %70, %46
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local %struct.fcu_softc* @device_get_softc(i32) #1

declare dso_local i32 @max(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @FCU_PWM_SGET(i32) #1

declare dso_local i32 @device_printf(i32, i8*, i64) #1

declare dso_local i64 @fcu_write(i32, i32, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
