; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_pci.c_drm_pcie_get_speed_cap_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_pci.c_drm_pcie_get_speed_cap_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@PCIY_EXPRESS = common dso_local global i32 0, align 4
@PCI_VENDOR_ID_VIA = common dso_local global i64 0, align 8
@PCI_VENDOR_ID_SERVERWORKS = common dso_local global i64 0, align 8
@PCIER_LINK_CAP = common dso_local global i64 0, align 8
@PCIER_LINK_CAP2 = common dso_local global i64 0, align 8
@PCIEM_LINK_CAP_MAX_SPEED = common dso_local global i32 0, align 4
@DRM_PCIE_SPEED_25 = common dso_local global i32 0, align 4
@DRM_PCIE_SPEED_50 = common dso_local global i32 0, align 4
@DRM_PCIE_SPEED_80 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"probing gen 2 caps for device %x:%x = %x/%x\0A\00", align 1
@PCI_EXP_LNKCAP2_SLS_2_5GB = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP2_SLS_5_0GB = common dso_local global i32 0, align 4
@PCI_EXP_LNKCAP2_SLS_8_0GB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_pcie_get_speed_cap_mask(%struct.drm_device* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32*, i32** %5, align 8
  store i32 0, i32* %10, align 4
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = call i32 @drm_pci_device_is_pcie(%struct.drm_device* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %3, align 4
  br label %120

17:                                               ; preds = %2
  %18 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %19 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @device_get_parent(i32 %20)
  %22 = call i32 @device_get_parent(i32 %21)
  %23 = call i32 @device_get_parent(i32 %22)
  store i32 %23, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @PCIY_EXPRESS, align 4
  %26 = call i32 @pci_find_cap(i32 %24, i32 %25, i32* %7)
  %27 = load i32, i32* %7, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %17
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %120

32:                                               ; preds = %17
  %33 = load i32, i32* %6, align 4
  %34 = call i64 @pci_get_vendor(i32 %33)
  %35 = load i64, i64* @PCI_VENDOR_ID_VIA, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load i32, i32* %6, align 4
  %39 = call i64 @pci_get_vendor(i32 %38)
  %40 = load i64, i64* @PCI_VENDOR_ID_SERVERWORKS, align 8
  %41 = icmp eq i64 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %37, %32
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %120

45:                                               ; preds = %37
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* %7, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* @PCIER_LINK_CAP, align 8
  %50 = add nsw i64 %48, %49
  %51 = call i32 @pci_read_config(i32 %46, i64 %50, i32 4)
  store i32 %51, i32* %8, align 4
  %52 = load i32, i32* %6, align 4
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = load i64, i64* @PCIER_LINK_CAP2, align 8
  %56 = add nsw i64 %54, %55
  %57 = call i32 @pci_read_config(i32 %52, i64 %56, i32 4)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* @PCIEM_LINK_CAP_MAX_SPEED, align 4
  %59 = load i32, i32* %8, align 4
  %60 = and i32 %59, %58
  store i32 %60, i32* %8, align 4
  %61 = load i32, i32* %9, align 4
  %62 = and i32 %61, 254
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %93

65:                                               ; preds = %45
  %66 = load i32, i32* %9, align 4
  %67 = and i32 %66, 2
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %74

69:                                               ; preds = %65
  %70 = load i32, i32* @DRM_PCIE_SPEED_25, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = load i32, i32* %71, align 4
  %73 = or i32 %72, %70
  store i32 %73, i32* %71, align 4
  br label %74

74:                                               ; preds = %69, %65
  %75 = load i32, i32* %9, align 4
  %76 = and i32 %75, 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %74
  %79 = load i32, i32* @DRM_PCIE_SPEED_50, align 4
  %80 = load i32*, i32** %5, align 8
  %81 = load i32, i32* %80, align 4
  %82 = or i32 %81, %79
  store i32 %82, i32* %80, align 4
  br label %83

83:                                               ; preds = %78, %74
  %84 = load i32, i32* %9, align 4
  %85 = and i32 %84, 8
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %92

87:                                               ; preds = %83
  %88 = load i32, i32* @DRM_PCIE_SPEED_80, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = load i32, i32* %89, align 4
  %91 = or i32 %90, %88
  store i32 %91, i32* %89, align 4
  br label %92

92:                                               ; preds = %87, %83
  br label %112

93:                                               ; preds = %45
  %94 = load i32, i32* %8, align 4
  %95 = and i32 %94, 1
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %93
  %98 = load i32, i32* @DRM_PCIE_SPEED_25, align 4
  %99 = load i32*, i32** %5, align 8
  %100 = load i32, i32* %99, align 4
  %101 = or i32 %100, %98
  store i32 %101, i32* %99, align 4
  br label %102

102:                                              ; preds = %97, %93
  %103 = load i32, i32* %8, align 4
  %104 = and i32 %103, 2
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %106, label %111

106:                                              ; preds = %102
  %107 = load i32, i32* @DRM_PCIE_SPEED_50, align 4
  %108 = load i32*, i32** %5, align 8
  %109 = load i32, i32* %108, align 4
  %110 = or i32 %109, %107
  store i32 %110, i32* %108, align 4
  br label %111

111:                                              ; preds = %106, %102
  br label %112

112:                                              ; preds = %111, %92
  %113 = load i32, i32* %6, align 4
  %114 = call i64 @pci_get_vendor(i32 %113)
  %115 = load i32, i32* %6, align 4
  %116 = call i32 @pci_get_device(i32 %115)
  %117 = load i32, i32* %8, align 4
  %118 = load i32, i32* %9, align 4
  %119 = call i32 @DRM_INFO(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %114, i32 %116, i32 %117, i32 %118)
  store i32 0, i32* %3, align 4
  br label %120

120:                                              ; preds = %112, %42, %29, %14
  %121 = load i32, i32* %3, align 4
  ret i32 %121
}

declare dso_local i32 @drm_pci_device_is_pcie(%struct.drm_device*) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @pci_find_cap(i32, i32, i32*) #1

declare dso_local i64 @pci_get_vendor(i32) #1

declare dso_local i32 @pci_read_config(i32, i64, i32) #1

declare dso_local i32 @DRM_INFO(i8*, i64, i32, i32, i32) #1

declare dso_local i32 @pci_get_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
