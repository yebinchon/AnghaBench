; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_acquire_hw_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_acquire_hw_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@HW_LOCK_MAX_RESOURCE_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"(resource 0x%x > HW_LOCK_MAX_RESOURCE_VALUE) resource_bit 0x%x\0A\00", align 1
@MISC_REG_DRIVER_CONTROL_1 = common dso_local global i32 0, align 4
@MISC_REG_DRIVER_CONTROL_7 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"resource (0x%x) in use (status 0x%x bit 0x%x)\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"Resource 0x%x resource_bit 0x%x lock timeout!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32)* @bxe_acquire_hw_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_acquire_hw_lock(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = shl i32 1, %11
  store i32 %12, i32* %7, align 4
  %13 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %14 = call i32 @SC_FUNC(%struct.bxe_softc* %13)
  store i32 %14, i32* %8, align 4
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @HW_LOCK_MAX_RESOURCE_VALUE, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call i32 (%struct.bxe_softc*, i8*, i32, i32, ...) @BLOGE(%struct.bxe_softc* %19, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %20, i32 %21)
  store i32 -1, i32* %3, align 4
  br label %79

23:                                               ; preds = %2
  %24 = load i32, i32* %8, align 4
  %25 = icmp sle i32 %24, 5
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* @MISC_REG_DRIVER_CONTROL_1, align 4
  %28 = load i32, i32* %8, align 4
  %29 = mul nsw i32 %28, 8
  %30 = add nsw i32 %27, %29
  store i32 %30, i32* %9, align 4
  br label %37

31:                                               ; preds = %23
  %32 = load i32, i32* @MISC_REG_DRIVER_CONTROL_7, align 4
  %33 = load i32, i32* %8, align 4
  %34 = sub nsw i32 %33, 6
  %35 = mul nsw i32 %34, 8
  %36 = add nsw i32 %32, %35
  store i32 %36, i32* %9, align 4
  br label %37

37:                                               ; preds = %31, %26
  %38 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %39 = load i32, i32* %9, align 4
  %40 = call i32 @REG_RD(%struct.bxe_softc* %38, i32 %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %37
  %46 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 (%struct.bxe_softc*, i8*, i32, i32, ...) @BLOGE(%struct.bxe_softc* %46, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %47, i32 %48, i32 %49)
  store i32 -1, i32* %3, align 4
  br label %79

51:                                               ; preds = %37
  store i32 0, i32* %10, align 4
  br label %52

52:                                               ; preds = %71, %51
  %53 = load i32, i32* %10, align 4
  %54 = icmp slt i32 %53, 1000
  br i1 %54, label %55, label %74

55:                                               ; preds = %52
  %56 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %57 = load i32, i32* %9, align 4
  %58 = add nsw i32 %57, 4
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @REG_WR(%struct.bxe_softc* %56, i32 %58, i32 %59)
  %61 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @REG_RD(%struct.bxe_softc* %61, i32 %62)
  store i32 %63, i32* %6, align 4
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %55
  store i32 0, i32* %3, align 4
  br label %79

69:                                               ; preds = %55
  %70 = call i32 @DELAY(i32 5000)
  br label %71

71:                                               ; preds = %69
  %72 = load i32, i32* %10, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %10, align 4
  br label %52

74:                                               ; preds = %52
  %75 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %76 = load i32, i32* %5, align 4
  %77 = load i32, i32* %7, align 4
  %78 = call i32 (%struct.bxe_softc*, i8*, i32, i32, ...) @BLOGE(%struct.bxe_softc* %75, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %76, i32 %77)
  store i32 -1, i32* %3, align 4
  br label %79

79:                                               ; preds = %74, %68, %45, %18
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @SC_FUNC(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, i32, ...) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
