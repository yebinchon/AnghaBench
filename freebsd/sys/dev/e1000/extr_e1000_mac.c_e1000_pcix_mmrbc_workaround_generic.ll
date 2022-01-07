; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_pcix_mmrbc_workaround_generic.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/e1000/extr_e1000_mac.c_e1000_pcix_mmrbc_workaround_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.e1000_hw = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@.str = private unnamed_addr constant [36 x i8] c"e1000_pcix_mmrbc_workaround_generic\00", align 1
@e1000_bus_type_pcix = common dso_local global i64 0, align 8
@PCIX_COMMAND_REGISTER = common dso_local global i32 0, align 4
@PCIX_STATUS_REGISTER_HI = common dso_local global i32 0, align 4
@PCIX_COMMAND_MMRBC_MASK = common dso_local global i32 0, align 4
@PCIX_COMMAND_MMRBC_SHIFT = common dso_local global i32 0, align 4
@PCIX_STATUS_HI_MMRBC_MASK = common dso_local global i32 0, align 4
@PCIX_STATUS_HI_MMRBC_SHIFT = common dso_local global i32 0, align 4
@PCIX_STATUS_HI_MMRBC_4K = common dso_local global i32 0, align 4
@PCIX_STATUS_HI_MMRBC_2K = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @e1000_pcix_mmrbc_workaround_generic(%struct.e1000_hw* %0) #0 {
  %2 = alloca %struct.e1000_hw*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.e1000_hw* %0, %struct.e1000_hw** %2, align 8
  %7 = call i32 @DEBUGFUNC(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %8 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %9 = getelementptr inbounds %struct.e1000_hw, %struct.e1000_hw* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load i64, i64* @e1000_bus_type_pcix, align 8
  %13 = icmp ne i64 %11, %12
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %54

15:                                               ; preds = %1
  %16 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %17 = load i32, i32* @PCIX_COMMAND_REGISTER, align 4
  %18 = call i32 @e1000_read_pci_cfg(%struct.e1000_hw* %16, i32 %17, i32* %4)
  %19 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %20 = load i32, i32* @PCIX_STATUS_REGISTER_HI, align 4
  %21 = call i32 @e1000_read_pci_cfg(%struct.e1000_hw* %19, i32 %20, i32* %5)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @PCIX_COMMAND_MMRBC_MASK, align 4
  %24 = and i32 %22, %23
  %25 = load i32, i32* @PCIX_COMMAND_MMRBC_SHIFT, align 4
  %26 = ashr i32 %24, %25
  store i32 %26, i32* %3, align 4
  %27 = load i32, i32* %5, align 4
  %28 = load i32, i32* @PCIX_STATUS_HI_MMRBC_MASK, align 4
  %29 = and i32 %27, %28
  %30 = load i32, i32* @PCIX_STATUS_HI_MMRBC_SHIFT, align 4
  %31 = ashr i32 %29, %30
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @PCIX_STATUS_HI_MMRBC_4K, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %35, label %37

35:                                               ; preds = %15
  %36 = load i32, i32* @PCIX_STATUS_HI_MMRBC_2K, align 4
  store i32 %36, i32* %6, align 4
  br label %37

37:                                               ; preds = %35, %15
  %38 = load i32, i32* %3, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp sgt i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load i32, i32* @PCIX_COMMAND_MMRBC_MASK, align 4
  %43 = xor i32 %42, -1
  %44 = load i32, i32* %4, align 4
  %45 = and i32 %44, %43
  store i32 %45, i32* %4, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @PCIX_COMMAND_MMRBC_SHIFT, align 4
  %48 = shl i32 %46, %47
  %49 = load i32, i32* %4, align 4
  %50 = or i32 %49, %48
  store i32 %50, i32* %4, align 4
  %51 = load %struct.e1000_hw*, %struct.e1000_hw** %2, align 8
  %52 = load i32, i32* @PCIX_COMMAND_REGISTER, align 4
  %53 = call i32 @e1000_write_pci_cfg(%struct.e1000_hw* %51, i32 %52, i32* %4)
  br label %54

54:                                               ; preds = %14, %41, %37
  ret void
}

declare dso_local i32 @DEBUGFUNC(i8*) #1

declare dso_local i32 @e1000_read_pci_cfg(%struct.e1000_hw*, i32, i32*) #1

declare dso_local i32 @e1000_write_pci_cfg(%struct.e1000_hw*, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
