; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_set_pcie_completion_timeout.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82575.c_e1000_set_pcie_completion_timeout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32 }

@E1000_GCR = common dso_local global i32 0, align 4
@E1000_SUCCESS = common dso_local global i64 0, align 8
@E1000_GCR_CMPL_TMOUT_MASK = common dso_local global i32 0, align 4
@E1000_GCR_CAP_VER2 = common dso_local global i32 0, align 4
@E1000_GCR_CMPL_TMOUT_10ms = common dso_local global i32 0, align 4
@PCIE_DEVICE_CONTROL2 = common dso_local global i32 0, align 4
@PCIE_DEVICE_CONTROL2_16ms = common dso_local global i32 0, align 4
@E1000_GCR_CMPL_TMOUT_RESEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.e1000_hw*)* @e1000_set_pcie_completion_timeout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @e1000_set_pcie_completion_timeout(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = load i32, i32* @E1000_GCR, align 4
  %8 = call i32 @E1000_READ_REG(%struct.e1000_hw* %6, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %9, i64* %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @E1000_GCR_CMPL_TMOUT_MASK, align 4
  %12 = and i32 %10, %11
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %38

15:                                               ; preds = %1
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @E1000_GCR_CAP_VER2, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = load i32, i32* @E1000_GCR_CMPL_TMOUT_10ms, align 4
  %22 = load i32, i32* %3, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %3, align 4
  br label %38

24:                                               ; preds = %15
  %25 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %26 = load i32, i32* @PCIE_DEVICE_CONTROL2, align 4
  %27 = call i64 @e1000_read_pcie_cap_reg(%struct.e1000_hw* %25, i32 %26, i32* %5)
  store i64 %27, i64* %4, align 8
  %28 = load i64, i64* %4, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %38

31:                                               ; preds = %24
  %32 = load i32, i32* @PCIE_DEVICE_CONTROL2_16ms, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  %35 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %36 = load i32, i32* @PCIE_DEVICE_CONTROL2, align 4
  %37 = call i64 @e1000_write_pcie_cap_reg(%struct.e1000_hw* %35, i32 %36, i32* %5)
  store i64 %37, i64* %4, align 8
  br label %38

38:                                               ; preds = %31, %30, %20, %14
  %39 = load i32, i32* @E1000_GCR_CMPL_TMOUT_RESEND, align 4
  %40 = xor i32 %39, -1
  %41 = load i32, i32* %3, align 4
  %42 = and i32 %41, %40
  store i32 %42, i32* %3, align 4
  %43 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %44 = load i32, i32* @E1000_GCR, align 4
  %45 = load i32, i32* %3, align 4
  %46 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %43, i32 %44, i32 %45)
  %47 = load i64, i64* %4, align 8
  ret i64 %47
}

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i64 @e1000_read_pcie_cap_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i64 @e1000_write_pcie_cap_reg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
