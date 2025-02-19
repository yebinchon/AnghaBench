; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdgpio/extr_amdgpio.c_amdgpio_pin_toggle.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdgpio/extr_amdgpio.c_amdgpio_pin_toggle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpio_softc = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"pin %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"pin %d value before 0x%x\0A\00", align 1
@OUTPUT_VALUE_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"pin %d value after 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @amdgpio_pin_toggle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpio_pin_toggle(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.amdgpio_softc*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.amdgpio_softc* @device_get_softc(i32 %9)
  store %struct.amdgpio_softc* %10, %struct.amdgpio_softc** %6, align 8
  %11 = load i32, i32* %5, align 4
  %12 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %11)
  %13 = load %struct.amdgpio_softc*, %struct.amdgpio_softc** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call i32 @amdgpio_valid_pin(%struct.amdgpio_softc* %13, i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %2
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %3, align 4
  br label %50

19:                                               ; preds = %2
  %20 = load %struct.amdgpio_softc*, %struct.amdgpio_softc** %6, align 8
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @amdgpio_is_pin_output(%struct.amdgpio_softc* %20, i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @EINVAL, align 4
  store i32 %25, i32* %3, align 4
  br label %50

26:                                               ; preds = %19
  %27 = load %struct.amdgpio_softc*, %struct.amdgpio_softc** %6, align 8
  %28 = call i32 @AMDGPIO_LOCK(%struct.amdgpio_softc* %27)
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @AMDGPIO_PIN_REGISTER(i32 %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.amdgpio_softc*, %struct.amdgpio_softc** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call i32 @amdgpio_read_4(%struct.amdgpio_softc* %31, i32 %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* %8, align 4
  %36 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %34, i32 %35)
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @OUTPUT_VALUE_OFF, align 4
  %39 = call i32 @BIT(i32 %38)
  %40 = xor i32 %37, %39
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 (i8*, i32, ...) @dprintf(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i32 %41, i32 %42)
  %44 = load %struct.amdgpio_softc*, %struct.amdgpio_softc** %6, align 8
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %8, align 4
  %47 = call i32 @amdgpio_write_4(%struct.amdgpio_softc* %44, i32 %45, i32 %46)
  %48 = load %struct.amdgpio_softc*, %struct.amdgpio_softc** %6, align 8
  %49 = call i32 @AMDGPIO_UNLOCK(%struct.amdgpio_softc* %48)
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %26, %24, %17
  %51 = load i32, i32* %3, align 4
  ret i32 %51
}

declare dso_local %struct.amdgpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @dprintf(i8*, i32, ...) #1

declare dso_local i32 @amdgpio_valid_pin(%struct.amdgpio_softc*, i32) #1

declare dso_local i32 @amdgpio_is_pin_output(%struct.amdgpio_softc*, i32) #1

declare dso_local i32 @AMDGPIO_LOCK(%struct.amdgpio_softc*) #1

declare dso_local i32 @AMDGPIO_PIN_REGISTER(i32) #1

declare dso_local i32 @amdgpio_read_4(%struct.amdgpio_softc*, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @amdgpio_write_4(%struct.amdgpio_softc*, i32, i32) #1

declare dso_local i32 @AMDGPIO_UNLOCK(%struct.amdgpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
