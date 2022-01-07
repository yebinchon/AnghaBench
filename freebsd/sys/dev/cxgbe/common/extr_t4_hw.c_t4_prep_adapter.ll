; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_prep_adapter.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/common/extr_t4_hw.c_t4_prep_adapter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_4__, i32* }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, %struct.TYPE_5__, i32, i32, %struct.TYPE_6__, i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_6__ = type { i32 }

@A_PL_REV = common dso_local global i32 0, align 4
@CHELSIO_T4 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"T4 rev 1 chip is not supported.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@PCI_CAP_ID_VPD = common dso_local global i32 0, align 4
@PCI_DEVICE_ID = common dso_local global i32 0, align 4
@CIMLA_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @t4_prep_adapter(%struct.adapter* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.adapter*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.adapter* %0, %struct.adapter** %4, align 8
  store i32* %1, i32** %5, align 8
  %9 = load %struct.adapter*, %struct.adapter** %4, align 8
  %10 = load %struct.adapter*, %struct.adapter** %4, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 8
  %13 = call i32 @get_pci_mode(%struct.adapter* %9, %struct.TYPE_6__* %12)
  %14 = load %struct.adapter*, %struct.adapter** %4, align 8
  %15 = load i32, i32* @A_PL_REV, align 4
  %16 = call i32 @t4_read_reg(%struct.adapter* %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = call i32 @G_CHIPID(i32 %17)
  %19 = load %struct.adapter*, %struct.adapter** %4, align 8
  %20 = getelementptr inbounds %struct.adapter, %struct.adapter* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 9
  store i32 %18, i32* %21, align 4
  %22 = load i32, i32* %8, align 4
  %23 = call i32 @G_REV(i32 %22)
  %24 = load %struct.adapter*, %struct.adapter** %4, align 8
  %25 = getelementptr inbounds %struct.adapter, %struct.adapter* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  store i32 %23, i32* %26, align 8
  %27 = load %struct.adapter*, %struct.adapter** %4, align 8
  %28 = getelementptr inbounds %struct.adapter, %struct.adapter* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 9
  %30 = load i32, i32* %29, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %48

32:                                               ; preds = %2
  %33 = load i32, i32* @CHELSIO_T4, align 4
  %34 = load %struct.adapter*, %struct.adapter** %4, align 8
  %35 = getelementptr inbounds %struct.adapter, %struct.adapter* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 9
  store i32 %33, i32* %36, align 4
  %37 = load %struct.adapter*, %struct.adapter** %4, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %47

42:                                               ; preds = %32
  %43 = load %struct.adapter*, %struct.adapter** %4, align 8
  %44 = call i32 @CH_ALERT(%struct.adapter* %43, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %45 = load i32, i32* @EINVAL, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  br label %132

47:                                               ; preds = %32
  br label %48

48:                                               ; preds = %47, %2
  %49 = load %struct.adapter*, %struct.adapter** %4, align 8
  %50 = call i32 @chip_id(%struct.adapter* %49)
  %51 = call i32* @t4_get_chip_params(i32 %50)
  %52 = load %struct.adapter*, %struct.adapter** %4, align 8
  %53 = getelementptr inbounds %struct.adapter, %struct.adapter* %52, i32 0, i32 1
  store i32* %51, i32** %53, align 8
  %54 = load %struct.adapter*, %struct.adapter** %4, align 8
  %55 = getelementptr inbounds %struct.adapter, %struct.adapter* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = icmp eq i32* %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %48
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %3, align 4
  br label %132

61:                                               ; preds = %48
  %62 = load %struct.adapter*, %struct.adapter** %4, align 8
  %63 = load i32, i32* @PCI_CAP_ID_VPD, align 4
  %64 = call i32 @t4_os_find_pci_capability(%struct.adapter* %62, i32 %63)
  %65 = load %struct.adapter*, %struct.adapter** %4, align 8
  %66 = getelementptr inbounds %struct.adapter, %struct.adapter* %65, i32 0, i32 0
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 8
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  store i32 %64, i32* %68, align 8
  %69 = load %struct.adapter*, %struct.adapter** %4, align 8
  %70 = call i32 @t4_get_flash_params(%struct.adapter* %69)
  store i32 %70, i32* %6, align 4
  %71 = load i32, i32* %6, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %75

73:                                               ; preds = %61
  %74 = load i32, i32* %6, align 4
  store i32 %74, i32* %3, align 4
  br label %132

75:                                               ; preds = %61
  %76 = load %struct.adapter*, %struct.adapter** %4, align 8
  %77 = load i32, i32* @PCI_DEVICE_ID, align 4
  %78 = call i32 @t4_os_pci_read_cfg2(%struct.adapter* %76, i32 %77, i32* %7)
  %79 = load i32, i32* %7, align 4
  %80 = ashr i32 %79, 12
  %81 = load %struct.adapter*, %struct.adapter** %4, align 8
  %82 = call i32 @chip_id(%struct.adapter* %81)
  %83 = icmp eq i32 %80, %82
  br i1 %83, label %84, label %89

84:                                               ; preds = %75
  %85 = load i32, i32* @CIMLA_SIZE, align 4
  %86 = load %struct.adapter*, %struct.adapter** %4, align 8
  %87 = getelementptr inbounds %struct.adapter, %struct.adapter* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  br label %98

89:                                               ; preds = %75
  %90 = load %struct.adapter*, %struct.adapter** %4, align 8
  %91 = getelementptr inbounds %struct.adapter, %struct.adapter* %90, i32 0, i32 0
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 2
  store i32 1, i32* %92, align 8
  %93 = load i32, i32* @CIMLA_SIZE, align 4
  %94 = mul nsw i32 2, %93
  %95 = load %struct.adapter*, %struct.adapter** %4, align 8
  %96 = getelementptr inbounds %struct.adapter, %struct.adapter* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 1
  store i32 %94, i32* %97, align 4
  br label %98

98:                                               ; preds = %89, %84
  %99 = load %struct.adapter*, %struct.adapter** %4, align 8
  %100 = load %struct.adapter*, %struct.adapter** %4, align 8
  %101 = getelementptr inbounds %struct.adapter, %struct.adapter* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 5
  %103 = load i32, i32* %7, align 4
  %104 = load i32*, i32** %5, align 8
  %105 = call i32 @get_vpd_params(%struct.adapter* %99, %struct.TYPE_5__* %102, i32 %103, i32* %104)
  store i32 %105, i32* %6, align 4
  %106 = load i32, i32* %6, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %108, label %110

108:                                              ; preds = %98
  %109 = load i32, i32* %6, align 4
  store i32 %109, i32* %3, align 4
  br label %132

110:                                              ; preds = %98
  %111 = load %struct.adapter*, %struct.adapter** %4, align 8
  %112 = getelementptr inbounds %struct.adapter, %struct.adapter* %111, i32 0, i32 0
  %113 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %112, i32 0, i32 7
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.adapter*, %struct.adapter** %4, align 8
  %116 = getelementptr inbounds %struct.adapter, %struct.adapter* %115, i32 0, i32 0
  %117 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %116, i32 0, i32 6
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @init_cong_ctrl(i32 %114, i32 %118)
  %120 = load %struct.adapter*, %struct.adapter** %4, align 8
  %121 = getelementptr inbounds %struct.adapter, %struct.adapter* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %121, i32 0, i32 3
  store i32 1, i32* %122, align 4
  %123 = load %struct.adapter*, %struct.adapter** %4, align 8
  %124 = getelementptr inbounds %struct.adapter, %struct.adapter* %123, i32 0, i32 0
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 4
  store i32 1, i32* %125, align 8
  %126 = load %struct.adapter*, %struct.adapter** %4, align 8
  %127 = getelementptr inbounds %struct.adapter, %struct.adapter* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 5
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 0
  store i32 50000, i32* %129, align 4
  %130 = load %struct.adapter*, %struct.adapter** %4, align 8
  %131 = call i32 @set_pcie_completion_timeout(%struct.adapter* %130, i32 13)
  store i32 0, i32* %3, align 4
  br label %132

132:                                              ; preds = %110, %108, %73, %58, %42
  %133 = load i32, i32* %3, align 4
  ret i32 %133
}

declare dso_local i32 @get_pci_mode(%struct.adapter*, %struct.TYPE_6__*) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @G_CHIPID(i32) #1

declare dso_local i32 @G_REV(i32) #1

declare dso_local i32 @CH_ALERT(%struct.adapter*, i8*) #1

declare dso_local i32* @t4_get_chip_params(i32) #1

declare dso_local i32 @chip_id(%struct.adapter*) #1

declare dso_local i32 @t4_os_find_pci_capability(%struct.adapter*, i32) #1

declare dso_local i32 @t4_get_flash_params(%struct.adapter*) #1

declare dso_local i32 @t4_os_pci_read_cfg2(%struct.adapter*, i32, i32*) #1

declare dso_local i32 @get_vpd_params(%struct.adapter*, %struct.TYPE_5__*, i32, i32*) #1

declare dso_local i32 @init_cong_ctrl(i32, i32) #1

declare dso_local i32 @set_pcie_completion_timeout(%struct.adapter*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
