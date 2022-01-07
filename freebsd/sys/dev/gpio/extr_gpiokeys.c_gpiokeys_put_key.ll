; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_put_key.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/gpio/extr_gpiokeys.c_gpiokeys_put_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gpiokeys_softc = type { i64, i64, i32, i32* }

@GPIOKEYS_GLOBAL_IN_BUF_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"input buffer is full\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gpiokeys_softc*, i32)* @gpiokeys_put_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gpiokeys_put_key(%struct.gpiokeys_softc* %0, i32 %1) #0 {
  %3 = alloca %struct.gpiokeys_softc*, align 8
  %4 = alloca i32, align 4
  store %struct.gpiokeys_softc* %0, %struct.gpiokeys_softc** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %6 = call i32 @GPIOKEYS_ASSERT_LOCKED(%struct.gpiokeys_softc* %5)
  %7 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %8 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @GPIOKEYS_GLOBAL_IN_BUF_SIZE, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %38

12:                                               ; preds = %2
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %15 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %14, i32 0, i32 3
  %16 = load i32*, i32** %15, align 8
  %17 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %18 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32, i32* %16, i64 %19
  store i32 %13, i32* %20, align 4
  %21 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %22 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = add i64 %23, 1
  store i64 %24, i64* %22, align 8
  %25 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %26 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %30 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @GPIOKEYS_GLOBAL_IN_BUF_SIZE, align 8
  %33 = icmp uge i64 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %12
  %35 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %36 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %35, i32 0, i32 1
  store i64 0, i64* %36, align 8
  br label %37

37:                                               ; preds = %34, %12
  br label %43

38:                                               ; preds = %2
  %39 = load %struct.gpiokeys_softc*, %struct.gpiokeys_softc** %3, align 8
  %40 = getelementptr inbounds %struct.gpiokeys_softc, %struct.gpiokeys_softc* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 8
  %42 = call i32 @device_printf(i32 %41, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  br label %43

43:                                               ; preds = %38, %37
  ret void
}

declare dso_local i32 @GPIOKEYS_ASSERT_LOCKED(%struct.gpiokeys_softc*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
