; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_write_8bit_ctrl_reg_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_write_8bit_ctrl_reg_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"e1000_write_8bit_ctrl_reg_generic\00", align 1
@E1000_GEN_CTL_ADDRESS_SHIFT = common dso_local global i64 0, align 8
@E1000_GEN_POLL_TIMEOUT = common dso_local global i64 0, align 8
@E1000_GEN_CTL_READY = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [33 x i8] c"Reg %08x did not indicate ready\0A\00", align 1
@E1000_ERR_PHY = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @e1000_write_8bit_ctrl_reg_generic(%struct.e1000_hw* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.e1000_hw*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i64 0, i64* %11, align 8
  %12 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %13 = load i64, i64* %9, align 8
  %14 = load i64, i64* %8, align 8
  %15 = load i64, i64* @E1000_GEN_CTL_ADDRESS_SHIFT, align 8
  %16 = shl i64 %14, %15
  %17 = or i64 %13, %16
  store i64 %17, i64* %11, align 8
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i64, i64* %11, align 8
  %21 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %18, i64 %19, i64 %20)
  store i64 0, i64* %10, align 8
  br label %22

22:                                               ; preds = %37, %4
  %23 = load i64, i64* %10, align 8
  %24 = load i64, i64* @E1000_GEN_POLL_TIMEOUT, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %40

26:                                               ; preds = %22
  %27 = call i32 @usec_delay(i32 5)
  %28 = load %struct.e1000_hw*, %struct.e1000_hw** %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = call i64 @E1000_READ_REG(%struct.e1000_hw* %28, i64 %29)
  store i64 %30, i64* %11, align 8
  %31 = load i64, i64* %11, align 8
  %32 = load i64, i64* @E1000_GEN_CTL_READY, align 8
  %33 = and i64 %31, %32
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %26
  br label %40

36:                                               ; preds = %26
  br label %37

37:                                               ; preds = %36
  %38 = load i64, i64* %10, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %10, align 8
  br label %22

40:                                               ; preds = %35, %22
  %41 = load i64, i64* %11, align 8
  %42 = load i64, i64* @E1000_GEN_CTL_READY, align 8
  %43 = and i64 %41, %42
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %40
  %46 = load i64, i64* %7, align 8
  %47 = call i32 @DEBUGOUT1(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i64 %46)
  %48 = load i32, i32* @E1000_ERR_PHY, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %52

50:                                               ; preds = %40
  %51 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %50, %45
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i64, i64) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i64 @E1000_READ_REG(%struct.e1000_hw*, i64) #1

declare dso_local i32 @DEBUGOUT1(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
