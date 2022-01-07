; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_release_hw_lock.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_release_hw_lock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32 }

@HW_LOCK_MAX_RESOURCE_VALUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"(resource 0x%x > HW_LOCK_MAX_RESOURCE_VALUE) resource_bit 0x%x\0A\00", align 1
@MISC_REG_DRIVER_CONTROL_1 = common dso_local global i32 0, align 4
@MISC_REG_DRIVER_CONTROL_7 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"resource (0x%x) not in use (status 0x%x bit 0x%x)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*, i32)* @bxe_release_hw_lock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_release_hw_lock(%struct.bxe_softc* %0, i32 %1) #0 {
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
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @HW_LOCK_MAX_RESOURCE_VALUE, align 4
  %16 = icmp sgt i32 %14, %15
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i32 (%struct.bxe_softc*, i8*, i32, i32, ...) @BLOGE(%struct.bxe_softc* %18, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  store i32 -1, i32* %3, align 4
  br label %55

22:                                               ; preds = %2
  %23 = load i32, i32* %8, align 4
  %24 = icmp sle i32 %23, 5
  br i1 %24, label %25, label %30

25:                                               ; preds = %22
  %26 = load i32, i32* @MISC_REG_DRIVER_CONTROL_1, align 4
  %27 = load i32, i32* %8, align 4
  %28 = mul nsw i32 %27, 8
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %9, align 4
  br label %36

30:                                               ; preds = %22
  %31 = load i32, i32* @MISC_REG_DRIVER_CONTROL_7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = sub nsw i32 %32, 6
  %34 = mul nsw i32 %33, 8
  %35 = add nsw i32 %31, %34
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %30, %25
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call i32 @REG_RD(%struct.bxe_softc* %37, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %7, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %50, label %44

44:                                               ; preds = %36
  %45 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %46 = load i32, i32* %5, align 4
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %7, align 4
  %49 = call i32 (%struct.bxe_softc*, i8*, i32, i32, ...) @BLOGE(%struct.bxe_softc* %45, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %47, i32 %48)
  store i32 -1, i32* %3, align 4
  br label %55

50:                                               ; preds = %36
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* %7, align 4
  %54 = call i32 @REG_WR(%struct.bxe_softc* %51, i32 %52, i32 %53)
  store i32 0, i32* %3, align 4
  br label %55

55:                                               ; preds = %50, %44, %17
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i32 @SC_FUNC(%struct.bxe_softc*) #1

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*, i32, i32, ...) #1

declare dso_local i32 @REG_RD(%struct.bxe_softc*, i32) #1

declare dso_local i32 @REG_WR(%struct.bxe_softc*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
