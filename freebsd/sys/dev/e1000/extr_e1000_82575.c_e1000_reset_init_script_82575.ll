; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_reset_init_script_82575.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_reset_init_script_82575.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [30 x i8] c"e1000_reset_init_script_82575\00", align 1
@e1000_82575 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [37 x i8] c"Running reset init script for 82575\0A\00", align 1
@E1000_SCTL = common dso_local global i32 0, align 4
@E1000_CCMCTL = common dso_local global i32 0, align 4
@E1000_GIOCTL = common dso_local global i32 0, align 4
@E1000_SCCTL = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_reset_init_script_82575 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_reset_init_script_82575(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %3 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %4 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %5 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @e1000_82575, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %10, label %51

10:                                               ; preds = %1
  %11 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %12 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %13 = load i32, i32* @E1000_SCTL, align 4
  %14 = call i32 @e1000_write_8bit_ctrl_reg_generic(%struct.e1000_hw* %12, i32 %13, i32 0, i32 12)
  %15 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %16 = load i32, i32* @E1000_SCTL, align 4
  %17 = call i32 @e1000_write_8bit_ctrl_reg_generic(%struct.e1000_hw* %15, i32 %16, i32 1, i32 120)
  %18 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %19 = load i32, i32* @E1000_SCTL, align 4
  %20 = call i32 @e1000_write_8bit_ctrl_reg_generic(%struct.e1000_hw* %18, i32 %19, i32 27, i32 35)
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = load i32, i32* @E1000_SCTL, align 4
  %23 = call i32 @e1000_write_8bit_ctrl_reg_generic(%struct.e1000_hw* %21, i32 %22, i32 35, i32 21)
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = load i32, i32* @E1000_CCMCTL, align 4
  %26 = call i32 @e1000_write_8bit_ctrl_reg_generic(%struct.e1000_hw* %24, i32 %25, i32 20, i32 0)
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = load i32, i32* @E1000_CCMCTL, align 4
  %29 = call i32 @e1000_write_8bit_ctrl_reg_generic(%struct.e1000_hw* %27, i32 %28, i32 16, i32 0)
  %30 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %31 = load i32, i32* @E1000_GIOCTL, align 4
  %32 = call i32 @e1000_write_8bit_ctrl_reg_generic(%struct.e1000_hw* %30, i32 %31, i32 0, i32 236)
  %33 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %34 = load i32, i32* @E1000_GIOCTL, align 4
  %35 = call i32 @e1000_write_8bit_ctrl_reg_generic(%struct.e1000_hw* %33, i32 %34, i32 97, i32 223)
  %36 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %37 = load i32, i32* @E1000_GIOCTL, align 4
  %38 = call i32 @e1000_write_8bit_ctrl_reg_generic(%struct.e1000_hw* %36, i32 %37, i32 52, i32 5)
  %39 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %40 = load i32, i32* @E1000_GIOCTL, align 4
  %41 = call i32 @e1000_write_8bit_ctrl_reg_generic(%struct.e1000_hw* %39, i32 %40, i32 47, i32 129)
  %42 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %43 = load i32, i32* @E1000_SCCTL, align 4
  %44 = call i32 @e1000_write_8bit_ctrl_reg_generic(%struct.e1000_hw* %42, i32 %43, i32 2, i32 71)
  %45 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %46 = load i32, i32* @E1000_SCCTL, align 4
  %47 = call i32 @e1000_write_8bit_ctrl_reg_generic(%struct.e1000_hw* %45, i32 %46, i32 20, i32 0)
  %48 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %49 = load i32, i32* @E1000_SCCTL, align 4
  %50 = call i32 @e1000_write_8bit_ctrl_reg_generic(%struct.e1000_hw* %48, i32 %49, i32 16, i32 0)
  br label %51

51:                                               ; preds = %10, %1
  %52 = load i32, i32* @E1000_SUCCESS, align 4
  ret i32 %52
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @e1000_write_8bit_ctrl_reg_generic(%struct.e1000_hw*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
