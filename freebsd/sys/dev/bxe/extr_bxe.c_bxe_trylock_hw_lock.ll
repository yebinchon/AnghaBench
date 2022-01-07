; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_trylock_hw_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_trylock_hw_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@DBG_LOAD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Trying to take a resource lock 0x%x\0A\00", align 1
@HW_LOCK_MAX_RESOURCE_VALUE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"resource(0x%x) > HW_LOCK_MAX_RESOURCE_VALUE(0x%x)\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@MISC_REG_DRIVER_CONTROL_1 = common dso_local global i32 0, align 4
@MISC_REG_DRIVER_CONTROL_7 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [79 x i8] c"Failed to get a resource lock 0x%x func %d lock_status 0x%x resource_bit 0x%x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32)* @bxe_trylock_hw_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_trylock_hw_lock(%struct.bxe_softc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bxe_softc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = shl i32 1, %10
  store i32 %11, i32* %7, align 4
  %12 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %13 = call i32 @SC_FUNC(%struct.bxe_softc* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %15 = load i32, i32* @DBG_LOAD, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %14, i32 %15, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %16)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @HW_LOCK_MAX_RESOURCE_VALUE, align 4
  %20 = icmp sgt i32 %18, %19
  br i1 %20, label %21, label %28

21:                                               ; preds = %2
  %22 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %23 = load i32, i32* @DBG_LOAD, align 4
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @HW_LOCK_MAX_RESOURCE_VALUE, align 4
  %26 = call i32 (%struct.bxe_softc*, i32, i8*, i32, ...) @BLOGD(%struct.bxe_softc* %22, i32 %23, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %24, i32 %25)
  %27 = load i32, i32* @FALSE, align 4
  store i32 %27, i32* %3, align 4
  br label %65

28:                                               ; preds = %2
  %29 = load i32, i32* %8, align 4
  %30 = icmp sle i32 %29, 5
  br i1 %30, label %31, label %36

31:                                               ; preds = %28
  %32 = load i32, i32* @MISC_REG_DRIVER_CONTROL_1, align 4
  %33 = load i32, i32* %8, align 4
  %34 = mul nsw i32 %33, 8
  %35 = add nsw i32 %32, %34
  store i32 %35, i32* %9, align 4
  br label %42

36:                                               ; preds = %28
  %37 = load i32, i32* @MISC_REG_DRIVER_CONTROL_7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = sub nsw i32 %38, 6
  %40 = mul nsw i32 %39, 8
  %41 = add nsw i32 %37, %40
  store i32 %41, i32* %9, align 4
  br label %42

42:                                               ; preds = %36, %31
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 4
  %46 = load i32, i32* %7, align 4
  %47 = call i32 @REG_WR(%struct.bxe_softc* %43, i32 %45, i32 %46)
  %48 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @REG_RD(%struct.bxe_softc* %48, i32 %49)
  store i32 %50, i32* %6, align 4
  %51 = load i32, i32* %6, align 4
  %52 = load i32, i32* %7, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* @TRUE, align 4
  store i32 %56, i32* %3, align 4
  br label %65

57:                                               ; preds = %42
  %58 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %59 = load i32, i32* %5, align 4
  %60 = load i32, i32* %8, align 4
  %61 = load i32, i32* %6, align 4
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @BLOGE(%struct.bxe_softc* %58, i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.2, i64 0, i64 0), i32 %59, i32 %60, i32 %61, i32 %62)
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %3, align 4
  br label %65

65:                                               ; preds = %57, %55, %21
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32 @SC_FUNC(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGD(%struct.bxe_softc*, i32, i8*, i32, ...) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
