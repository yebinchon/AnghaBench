; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/amdgpio/extr_amdgpio.c_amdgpio_pin_getflags.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/amdgpio/extr_amdgpio.c_amdgpio_pin_getflags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amdgpio_softc = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [8 x i8] c"pin %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"pin %d flags 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64, i64*)* @amdgpio_pin_getflags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amdgpio_pin_getflags(i32 %0, i64 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64*, align 8
  %8 = alloca %struct.amdgpio_softc*, align 8
  store i32 %0, i32* %5, align 4
  store i64 %1, i64* %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.amdgpio_softc* @device_get_softc(i32 %9)
  store %struct.amdgpio_softc* %10, %struct.amdgpio_softc** %8, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i32 (i8*, i64, ...) @dprintf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = load %struct.amdgpio_softc*, %struct.amdgpio_softc** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @amdgpio_valid_pin(%struct.amdgpio_softc* %13, i64 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %4, align 4
  br label %36

19:                                               ; preds = %3
  %20 = load %struct.amdgpio_softc*, %struct.amdgpio_softc** %8, align 8
  %21 = call i32 @AMDGPIO_LOCK(%struct.amdgpio_softc* %20)
  %22 = load %struct.amdgpio_softc*, %struct.amdgpio_softc** %8, align 8
  %23 = getelementptr inbounds %struct.amdgpio_softc, %struct.amdgpio_softc* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* %6, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %7, align 8
  store i64 %28, i64* %29, align 8
  %30 = load i64, i64* %6, align 8
  %31 = load i64*, i64** %7, align 8
  %32 = load i64, i64* %31, align 8
  %33 = call i32 (i8*, i64, ...) @dprintf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i64 %30, i64 %32)
  %34 = load %struct.amdgpio_softc*, %struct.amdgpio_softc** %8, align 8
  %35 = call i32 @AMDGPIO_UNLOCK(%struct.amdgpio_softc* %34)
  store i32 0, i32* %4, align 4
  br label %36

36:                                               ; preds = %19, %17
  %37 = load i32, i32* %4, align 4
  ret i32 %37
}

declare dso_local %struct.amdgpio_softc* @device_get_softc(i32) #1

declare dso_local i32 @dprintf(i8*, i64, ...) #1

declare dso_local i32 @amdgpio_valid_pin(%struct.amdgpio_softc*, i64) #1

declare dso_local i32 @AMDGPIO_LOCK(%struct.amdgpio_softc*) #1

declare dso_local i32 @AMDGPIO_UNLOCK(%struct.amdgpio_softc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
