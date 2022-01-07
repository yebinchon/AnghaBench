; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_state_wait.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_ecore_sp.c_ecore_state_wait.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i64 }

@.str = private unnamed_addr constant [32 x i8] c"waiting for state to become %d\0A\00", align 1
@ECORE_SUCCESS = common dso_local global i32 0, align 4
@delay_us = common dso_local global i32 0, align 4
@ECORE_IO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"timeout waiting for state %d\0A\00", align 1
@ECORE_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32, i64*)* @ecore_state_wait to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ecore_state_wait(%struct.bxe_softc* %0, i32 %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.bxe_softc*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %5, align 8
  store i32 %1, i32* %6, align 4
  store i64* %2, i64** %7, align 8
  store i32 5000, i32* %8, align 4
  %9 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %10 = call i64 @CHIP_REV_IS_EMUL(%struct.bxe_softc* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* %8, align 4
  %14 = mul nsw i32 %13, 20
  store i32 %14, i32* %8, align 4
  br label %15

15:                                               ; preds = %12, %3
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @ECORE_MSG(%struct.bxe_softc* %16, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0), i32 %17)
  %19 = call i32 (...) @ECORE_MIGHT_SLEEP()
  br label %20

20:                                               ; preds = %41, %15
  %21 = load i32, i32* %8, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %8, align 4
  %23 = icmp ne i32 %21, 0
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load i32, i32* %6, align 4
  %26 = load i64*, i64** %7, align 8
  %27 = call i32 @ECORE_TEST_BIT(i32 %25, i64* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %31, label %29

29:                                               ; preds = %24
  %30 = load i32, i32* @ECORE_SUCCESS, align 4
  store i32 %30, i32* %4, align 4
  br label %46

31:                                               ; preds = %24
  %32 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %33 = load i32, i32* @delay_us, align 4
  %34 = call i32 @ECORE_WAIT(%struct.bxe_softc* %32, i32 %33)
  %35 = load %struct.bxe_softc*, %struct.bxe_softc** %5, align 8
  %36 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %31
  %40 = load i32, i32* @ECORE_IO, align 4
  store i32 %40, i32* %4, align 4
  br label %46

41:                                               ; preds = %31
  br label %20

42:                                               ; preds = %20
  %43 = load i32, i32* %6, align 4
  %44 = call i32 @ECORE_ERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* @ECORE_TIMEOUT, align 4
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %39, %29
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @CHIP_REV_IS_EMUL(%struct.bxe_softc*) #1

declare dso_local i32 @ECORE_MSG(%struct.bxe_softc*, i8*, i32) #1

declare dso_local i32 @ECORE_MIGHT_SLEEP(...) #1

declare dso_local i32 @ECORE_TEST_BIT(i32, i64*) #1

declare dso_local i32 @ECORE_WAIT(%struct.bxe_softc*, i32) #1

declare dso_local i32 @ECORE_ERR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
