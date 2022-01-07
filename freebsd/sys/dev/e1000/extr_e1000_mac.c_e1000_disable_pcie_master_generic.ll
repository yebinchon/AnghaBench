; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_disable_pcie_master_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_disable_pcie_master_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@MASTER_DISABLE_TIMEOUT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [34 x i8] c"e1000_disable_pcie_master_generic\00", align 1
@e1000_bus_type_pci_express = common dso_local global i64 0, align 8
@E1000_SUCCESS = common dso_local global i64 0, align 8
@E1000_CTRL = common dso_local global i32 0, align 4
@E1000_CTRL_GIO_MASTER_DISABLE = common dso_local global i32 0, align 4
@E1000_STATUS = common dso_local global i32 0, align 4
@E1000_STATUS_GIO_MASTER_ENABLE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Master requests are pending.\0A\00", align 1
@E1000_ERR_MASTER_REQUESTS_PENDING = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @e1000_disable_pcie_master_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca i64, align 8
  %3 = alloca %struct.e1000_hw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.e1000_hw* %0, %struct.e1000_hw** %3, align 8
  %6 = load i64, i64* @MASTER_DISABLE_TIMEOUT, align 8
  store i64 %6, i64* %5, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_bus_type_pci_express, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %1
  %15 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %15, i64* %2, align 8
  br label %57

16:                                               ; preds = %1
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %18 = load i32, i32* @E1000_CTRL, align 4
  %19 = call i32 @E1000_READ_REG(%struct.e1000_hw* %17, i32 %18)
  store i32 %19, i32* %4, align 4
  %20 = load i32, i32* @E1000_CTRL_GIO_MASTER_DISABLE, align 4
  %21 = load i32, i32* %4, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %4, align 4
  %23 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %24 = load i32, i32* @E1000_CTRL, align 4
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %23, i32 %24, i32 %25)
  br label %27

27:                                               ; preds = %44, %16
  %28 = load i64, i64* %5, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %48

30:                                               ; preds = %27
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %32 = load i32, i32* @E1000_STATUS, align 4
  %33 = call i32 @E1000_READ_REG(%struct.e1000_hw* %31, i32 %32)
  %34 = load i32, i32* @E1000_STATUS_GIO_MASTER_ENABLE, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %30
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %3, align 8
  %39 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i64 @E1000_REMOVED(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %30
  br label %48

44:                                               ; preds = %37
  %45 = call i32 @usec_delay(i32 100)
  %46 = load i64, i64* %5, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %5, align 8
  br label %27

48:                                               ; preds = %43, %27
  %49 = load i64, i64* %5, align 8
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %53 = load i64, i64* @E1000_ERR_MASTER_REQUESTS_PENDING, align 8
  %54 = sub nsw i64 0, %53
  store i64 %54, i64* %2, align 8
  br label %57

55:                                               ; preds = %48
  %56 = load i64, i64* @E1000_SUCCESS, align 8
  store i64 %56, i64* %2, align 8
  br label %57

57:                                               ; preds = %55, %51, %14
  %58 = load i64, i64* %2, align 8
  ret i64 %58
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i64 @E1000_REMOVED(i32) #1

declare dso_local i32 @usec_delay(i32) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
