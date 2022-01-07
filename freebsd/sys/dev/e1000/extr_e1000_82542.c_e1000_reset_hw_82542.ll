; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82542.c_e1000_reset_hw_82542.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_82542.c_e1000_reset_hw_82542.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { i64, %struct.TYPE_4__, %struct.e1000_bus_info }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 (%struct.e1000_hw.0*)* }
%struct.e1000_hw.0 = type opaque
%struct.e1000_bus_info = type { i32 }

@E1000_SUCCESS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [21 x i8] c"e1000_reset_hw_82542\00", align 1
@E1000_REVISION_2 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [30 x i8] c"Disabling MWI on 82542 rev 2\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Masking off all interrupts\0A\00", align 1
@E1000_IMC = common dso_local global i32 0, align 4
@E1000_RCTL = common dso_local global i32 0, align 4
@E1000_TCTL = common dso_local global i32 0, align 4
@E1000_TCTL_PSP = common dso_local global i32 0, align 4
@E1000_CTRL = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [43 x i8] c"Issuing a global reset to 82542/82543 MAC\0A\00", align 1
@E1000_CTRL_RST = common dso_local global i32 0, align 4
@E1000_ICR = common dso_local global i32 0, align 4
@CMD_MEM_WRT_INVALIDATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.e1000_hw*)* @e1000_reset_hw_82542 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @e1000_reset_hw_82542(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca %struct.e1000_bus_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %6 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %7 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %6, i32 0, i32 2
  store %struct.e1000_bus_info* %7, %struct.e1000_bus_info** %3, align 8
  %8 = load i32, i32* @E1000_SUCCESS, align 4
  store i32 %8, i32* %4, align 4
  %9 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %11 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = load i64, i64* @E1000_REVISION_2, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %1
  %16 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %17 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %18 = call i32 @e1000_pci_clear_mwi(%struct.e1000_hw* %17)
  br label %19

19:                                               ; preds = %15, %1
  %20 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.2, i64 0, i64 0))
  %21 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %22 = load i32, i32* @E1000_IMC, align 4
  %23 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %21, i32 %22, i32 -1)
  %24 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %25 = load i32, i32* @E1000_RCTL, align 4
  %26 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %24, i32 %25, i32 0)
  %27 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %28 = load i32, i32* @E1000_TCTL, align 4
  %29 = load i32, i32* @E1000_TCTL_PSP, align 4
  %30 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %27, i32 %28, i32 %29)
  %31 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %32 = call i32 @E1000_WRITE_FLUSH(%struct.e1000_hw* %31)
  %33 = call i32 @msec_delay(i32 10)
  %34 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %35 = load i32, i32* @E1000_CTRL, align 4
  %36 = call i32 @E1000_READ_REG(%struct.e1000_hw* %34, i32 %35)
  store i32 %36, i32* %5, align 4
  %37 = call i32 @DEBUGOUT(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.3, i64 0, i64 0))
  %38 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %39 = load i32, i32* @E1000_CTRL, align 4
  %40 = load i32, i32* %5, align 4
  %41 = load i32, i32* @E1000_CTRL_RST, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %38, i32 %39, i32 %42)
  %44 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %45 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32 (%struct.e1000_hw.0*)*, i32 (%struct.e1000_hw.0*)** %47, align 8
  %49 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %50 = bitcast %struct.e1000_hw* %49 to %struct.e1000_hw.0*
  %51 = call i32 %48(%struct.e1000_hw.0* %50)
  %52 = call i32 @msec_delay(i32 2)
  %53 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %54 = load i32, i32* @E1000_IMC, align 4
  %55 = call i32 @E1000_WRITE_REG(%struct.e1000_hw* %53, i32 %54, i32 -1)
  %56 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %57 = load i32, i32* @E1000_ICR, align 4
  %58 = call i32 @E1000_READ_REG(%struct.e1000_hw* %56, i32 %57)
  %59 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %60 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i64, i64* @E1000_REVISION_2, align 8
  %63 = icmp eq i64 %61, %62
  br i1 %63, label %64, label %75

64:                                               ; preds = %19
  %65 = load %struct.e1000_bus_info*, %struct.e1000_bus_info** %3, align 8
  %66 = getelementptr inbounds %struct.e1000_bus_info, %struct.e1000_bus_info* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @CMD_MEM_WRT_INVALIDATE, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %73 = call i32 @e1000_pci_set_mwi(%struct.e1000_hw* %72)
  br label %74

74:                                               ; preds = %71, %64
  br label %75

75:                                               ; preds = %74, %19
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @DEBUGOUT(i8*) #1

declare dso_local i32 @e1000_pci_clear_mwi(%struct.e1000_hw*) #1

declare dso_local i32 @E1000_WRITE_REG(%struct.e1000_hw*, i32, i32) #1

declare dso_local i32 @E1000_WRITE_FLUSH(%struct.e1000_hw*) #1

declare dso_local i32 @msec_delay(i32) #1

declare dso_local i32 @E1000_READ_REG(%struct.e1000_hw*, i32) #1

declare dso_local i32 @e1000_pci_set_mwi(%struct.e1000_hw*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
