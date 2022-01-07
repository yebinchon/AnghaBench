; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/vr/extr_if_vr.c_vr_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vr_softc = type { i64, i32 }

@VR_CR1 = common dso_local global i32 0, align 4
@VR_CR1_RESET = common dso_local global i32 0, align 4
@REV_ID_VT6102_A = common dso_local global i64 0, align 8
@VR_TIMEOUT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"reset never completed!\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Using force reset command.\0A\00", align 1
@VR_MISC_CR1 = common dso_local global i32 0, align 4
@VR_MISCCR1_FORSRST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vr_softc*)* @vr_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vr_reset(%struct.vr_softc* %0) #0 {
  %2 = alloca %struct.vr_softc*, align 8
  %3 = alloca i32, align 4
  store %struct.vr_softc* %0, %struct.vr_softc** %2, align 8
  %4 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %5 = load i32, i32* @VR_CR1, align 4
  %6 = load i32, i32* @VR_CR1_RESET, align 4
  %7 = call i32 @CSR_WRITE_1(%struct.vr_softc* %4, i32 %5, i32 %6)
  %8 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %9 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @REV_ID_VT6102_A, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = call i32 @DELAY(i32 100)
  br label %15

15:                                               ; preds = %13, %1
  store i32 0, i32* %3, align 4
  br label %16

16:                                               ; preds = %30, %15
  %17 = load i32, i32* %3, align 4
  %18 = load i32, i32* @VR_TIMEOUT, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %16
  %21 = call i32 @DELAY(i32 10)
  %22 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %23 = load i32, i32* @VR_CR1, align 4
  %24 = call i32 @CSR_READ_1(%struct.vr_softc* %22, i32 %23)
  %25 = load i32, i32* @VR_CR1_RESET, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %33

29:                                               ; preds = %20
  br label %30

30:                                               ; preds = %29
  %31 = load i32, i32* %3, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %3, align 4
  br label %16

33:                                               ; preds = %28, %16
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @VR_TIMEOUT, align 4
  %36 = icmp eq i32 %34, %35
  br i1 %36, label %37, label %59

37:                                               ; preds = %33
  %38 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %39 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @REV_ID_VT6102_A, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %37
  %44 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %45 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  %47 = call i32 @device_printf(i32 %46, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %58

48:                                               ; preds = %37
  %49 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %50 = getelementptr inbounds %struct.vr_softc, %struct.vr_softc* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @device_printf(i32 %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0))
  %53 = load %struct.vr_softc*, %struct.vr_softc** %2, align 8
  %54 = load i32, i32* @VR_MISC_CR1, align 4
  %55 = load i32, i32* @VR_MISCCR1_FORSRST, align 4
  %56 = call i32 @VR_SETBIT(%struct.vr_softc* %53, i32 %54, i32 %55)
  %57 = call i32 @DELAY(i32 2000)
  br label %58

58:                                               ; preds = %48, %43
  br label %59

59:                                               ; preds = %58, %33
  ret void
}

declare dso_local i32 @CSR_WRITE_1(%struct.vr_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @CSR_READ_1(%struct.vr_softc*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @VR_SETBIT(%struct.vr_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
