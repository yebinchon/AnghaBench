; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_identify_hardware.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ixgbe/extr_if_ixv.c_ixv_identify_hardware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.ixgbe_hw }
%struct.ixgbe_hw = type { i32, %struct.TYPE_2__, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ixgbe_mac_82599_vf = common dso_local global i32 0, align 4
@ixgbe_mac_X540_vf = common dso_local global i32 0, align 4
@ixgbe_mac_X550_vf = common dso_local global i32 0, align 4
@ixgbe_mac_X550EM_x_vf = common dso_local global i32 0, align 4
@ixgbe_mac_X550EM_a_vf = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"unknown mac type\0A\00", align 1
@ixgbe_mac_unknown = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ixv_identify_hardware to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ixv_identify_hardware(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ixgbe_hw*, align 8
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* %2, align 4
  %7 = call %struct.adapter* @iflib_get_softc(i32 %6)
  store %struct.adapter* %7, %struct.adapter** %3, align 8
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @iflib_get_dev(i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  store %struct.ixgbe_hw* %11, %struct.ixgbe_hw** %5, align 8
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @pci_get_vendor(i32 %12)
  %14 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %15 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %14, i32 0, i32 5
  store i32 %13, i32* %15, align 4
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @pci_get_device(i32 %16)
  %18 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %19 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %18, i32 0, i32 0
  store i32 %17, i32* %19, align 4
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @pci_get_revid(i32 %20)
  %22 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %23 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %22, i32 0, i32 4
  store i32 %21, i32* %23, align 4
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @pci_get_subvendor(i32 %24)
  %26 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %27 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @pci_get_subdevice(i32 %28)
  %30 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %31 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %33 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %60 [
    i32 132, label %35
    i32 131, label %40
    i32 128, label %45
    i32 129, label %50
    i32 130, label %55
  ]

35:                                               ; preds = %1
  %36 = load i32, i32* @ixgbe_mac_82599_vf, align 4
  %37 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %38 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 %36, i32* %39, align 4
  br label %67

40:                                               ; preds = %1
  %41 = load i32, i32* @ixgbe_mac_X540_vf, align 4
  %42 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %43 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 4
  br label %67

45:                                               ; preds = %1
  %46 = load i32, i32* @ixgbe_mac_X550_vf, align 4
  %47 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %48 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %46, i32* %49, align 4
  br label %67

50:                                               ; preds = %1
  %51 = load i32, i32* @ixgbe_mac_X550EM_x_vf, align 4
  %52 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %53 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  store i32 %51, i32* %54, align 4
  br label %67

55:                                               ; preds = %1
  %56 = load i32, i32* @ixgbe_mac_X550EM_a_vf, align 4
  %57 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %58 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i32 %56, i32* %59, align 4
  br label %67

60:                                               ; preds = %1
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @device_printf(i32 %61, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @ixgbe_mac_unknown, align 4
  %64 = load %struct.ixgbe_hw*, %struct.ixgbe_hw** %5, align 8
  %65 = getelementptr inbounds %struct.ixgbe_hw, %struct.ixgbe_hw* %64, i32 0, i32 1
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  br label %67

67:                                               ; preds = %60, %55, %50, %45, %40, %35
  ret void
}

declare dso_local %struct.adapter* @iflib_get_softc(i32) #1

declare dso_local i32 @iflib_get_dev(i32) #1

declare dso_local i32 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_get_device(i32) #1

declare dso_local i32 @pci_get_revid(i32) #1

declare dso_local i32 @pci_get_subvendor(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
