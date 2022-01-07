; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pwm/extr_pwmc.c_pwm_ioctl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pwm/extr_pwmc.c_pwm_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cdev = type { %struct.pwmc_softc* }
%struct.pwmc_softc = type { i32, i32 }
%struct.pwm_state = type { i32, i32, i32 }
%struct.thread = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cdev*, i32, %struct.pwm_state*, i32, %struct.thread*)* @pwm_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pwm_ioctl(%struct.cdev* %0, i32 %1, %struct.pwm_state* %2, i32 %3, %struct.thread* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.cdev*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.pwm_state*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.thread*, align 8
  %12 = alloca %struct.pwmc_softc*, align 8
  %13 = alloca %struct.pwm_state, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cdev* %0, %struct.cdev** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.pwm_state* %2, %struct.pwm_state** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.thread* %4, %struct.thread** %11, align 8
  store i32 0, i32* %15, align 4
  %16 = load %struct.cdev*, %struct.cdev** %7, align 8
  %17 = getelementptr inbounds %struct.cdev, %struct.cdev* %16, i32 0, i32 0
  %18 = load %struct.pwmc_softc*, %struct.pwmc_softc** %17, align 8
  store %struct.pwmc_softc* %18, %struct.pwmc_softc** %12, align 8
  %19 = load %struct.pwmc_softc*, %struct.pwmc_softc** %12, align 8
  %20 = getelementptr inbounds %struct.pwmc_softc, %struct.pwmc_softc* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @device_get_parent(i32 %21)
  store i32 %22, i32* %14, align 4
  %23 = load i32, i32* %8, align 4
  switch i32 %23, label %75 [
    i32 128, label %24
    i32 129, label %47
  ]

24:                                               ; preds = %5
  %25 = load %struct.pwm_state*, %struct.pwm_state** %9, align 8
  %26 = call i32 @bcopy(%struct.pwm_state* %25, %struct.pwm_state* %13, i32 12)
  %27 = load i32, i32* %14, align 4
  %28 = load %struct.pwmc_softc*, %struct.pwmc_softc** %12, align 8
  %29 = getelementptr inbounds %struct.pwmc_softc, %struct.pwmc_softc* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %13, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %13, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @PWMBUS_CHANNEL_CONFIG(i32 %27, i32 %30, i32 %32, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = load i32, i32* %15, align 4
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %24
  %39 = load i32, i32* %14, align 4
  %40 = load %struct.pwmc_softc*, %struct.pwmc_softc** %12, align 8
  %41 = getelementptr inbounds %struct.pwmc_softc, %struct.pwmc_softc* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %13, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @PWMBUS_CHANNEL_ENABLE(i32 %39, i32 %42, i32 %44)
  store i32 %45, i32* %15, align 4
  br label %46

46:                                               ; preds = %38, %24
  br label %75

47:                                               ; preds = %5
  %48 = load %struct.pwm_state*, %struct.pwm_state** %9, align 8
  %49 = call i32 @bcopy(%struct.pwm_state* %48, %struct.pwm_state* %13, i32 12)
  %50 = load i32, i32* %14, align 4
  %51 = load %struct.pwmc_softc*, %struct.pwmc_softc** %12, align 8
  %52 = getelementptr inbounds %struct.pwmc_softc, %struct.pwmc_softc* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %13, i32 0, i32 2
  %55 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %13, i32 0, i32 1
  %56 = call i32 @PWMBUS_CHANNEL_GET_CONFIG(i32 %50, i32 %53, i32* %54, i32* %55)
  store i32 %56, i32* %15, align 4
  %57 = load i32, i32* %15, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %61

59:                                               ; preds = %47
  %60 = load i32, i32* %15, align 4
  store i32 %60, i32* %6, align 4
  br label %77

61:                                               ; preds = %47
  %62 = load i32, i32* %14, align 4
  %63 = load %struct.pwmc_softc*, %struct.pwmc_softc** %12, align 8
  %64 = getelementptr inbounds %struct.pwmc_softc, %struct.pwmc_softc* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = getelementptr inbounds %struct.pwm_state, %struct.pwm_state* %13, i32 0, i32 0
  %67 = call i32 @PWMBUS_CHANNEL_IS_ENABLED(i32 %62, i32 %65, i32* %66)
  store i32 %67, i32* %15, align 4
  %68 = load i32, i32* %15, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %72

70:                                               ; preds = %61
  %71 = load i32, i32* %15, align 4
  store i32 %71, i32* %6, align 4
  br label %77

72:                                               ; preds = %61
  %73 = load %struct.pwm_state*, %struct.pwm_state** %9, align 8
  %74 = call i32 @bcopy(%struct.pwm_state* %13, %struct.pwm_state* %73, i32 12)
  br label %75

75:                                               ; preds = %5, %72, %46
  %76 = load i32, i32* %15, align 4
  store i32 %76, i32* %6, align 4
  br label %77

77:                                               ; preds = %75, %70, %59
  %78 = load i32, i32* %6, align 4
  ret i32 %78
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @bcopy(%struct.pwm_state*, %struct.pwm_state*, i32) #1

declare dso_local i32 @PWMBUS_CHANNEL_CONFIG(i32, i32, i32, i32) #1

declare dso_local i32 @PWMBUS_CHANNEL_ENABLE(i32, i32, i32) #1

declare dso_local i32 @PWMBUS_CHANNEL_GET_CONFIG(i32, i32, i32*, i32*) #1

declare dso_local i32 @PWMBUS_CHANNEL_IS_ENABLED(i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
