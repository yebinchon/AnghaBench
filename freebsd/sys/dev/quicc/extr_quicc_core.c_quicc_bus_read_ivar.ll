; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/quicc/extr_quicc_core.c_quicc_bus_read_ivar.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/quicc/extr_quicc_core.c_quicc_bus_read_ivar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.quicc_device = type { i64 }
%struct.quicc_softc = type { i64, i32 }

@EINVAL = common dso_local global i32 0, align 4
@QUICC_REG_SCCR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @quicc_bus_read_ivar(i64 %0, i64 %1, i32 %2, i64* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64*, align 8
  %10 = alloca %struct.quicc_device*, align 8
  %11 = alloca %struct.quicc_softc*, align 8
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64* %3, i64** %9, align 8
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @device_get_parent(i64 %13)
  %15 = load i64, i64* %6, align 8
  %16 = icmp ne i64 %14, %15
  br i1 %16, label %17, label %19

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  store i32 %18, i32* %5, align 4
  br label %56

19:                                               ; preds = %4
  %20 = load i64, i64* %6, align 8
  %21 = call %struct.quicc_softc* @device_get_softc(i64 %20)
  store %struct.quicc_softc* %21, %struct.quicc_softc** %11, align 8
  %22 = load i64, i64* %7, align 8
  %23 = call %struct.quicc_device* @device_get_ivars(i64 %22)
  store %struct.quicc_device* %23, %struct.quicc_device** %10, align 8
  %24 = load i32, i32* %8, align 4
  switch i32 %24, label %53 [
    i32 129, label %25
    i32 130, label %30
    i32 128, label %48
  ]

25:                                               ; preds = %19
  %26 = load %struct.quicc_softc*, %struct.quicc_softc** %11, align 8
  %27 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64*, i64** %9, align 8
  store i64 %28, i64* %29, align 8
  br label %55

30:                                               ; preds = %19
  %31 = load %struct.quicc_softc*, %struct.quicc_softc** %11, align 8
  %32 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @QUICC_REG_SCCR, align 4
  %35 = call i32 @quicc_read4(i32 %33, i32 %34)
  %36 = and i32 %35, 3
  store i32 %36, i32* %12, align 4
  %37 = load %struct.quicc_softc*, %struct.quicc_softc** %11, align 8
  %38 = getelementptr inbounds %struct.quicc_softc, %struct.quicc_softc* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %12, align 4
  %41 = add nsw i32 %40, 1
  %42 = shl i32 1, %41
  %43 = load i32, i32* %12, align 4
  %44 = shl i32 %42, %43
  %45 = sext i32 %44 to i64
  %46 = udiv i64 %39, %45
  %47 = load i64*, i64** %9, align 8
  store i64 %46, i64* %47, align 8
  br label %55

48:                                               ; preds = %19
  %49 = load %struct.quicc_device*, %struct.quicc_device** %10, align 8
  %50 = getelementptr inbounds %struct.quicc_device, %struct.quicc_device* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64*, i64** %9, align 8
  store i64 %51, i64* %52, align 8
  br label %55

53:                                               ; preds = %19
  %54 = load i32, i32* @EINVAL, align 4
  store i32 %54, i32* %5, align 4
  br label %56

55:                                               ; preds = %48, %30, %25
  store i32 0, i32* %5, align 4
  br label %56

56:                                               ; preds = %55, %53, %17
  %57 = load i32, i32* %5, align 4
  ret i32 %57
}

declare dso_local i64 @device_get_parent(i64) #1

declare dso_local %struct.quicc_softc* @device_get_softc(i64) #1

declare dso_local %struct.quicc_device* @device_get_ivars(i64) #1

declare dso_local i32 @quicc_read4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
