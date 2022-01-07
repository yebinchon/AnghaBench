; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_cfg_restore_pcie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_cfg_restore_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pcicfg_pcie }
%struct.pcicfg_pcie = type { i32, i32, i64, i32, i32, i32, i32, i32, i32, i32 }

@PCIEM_FLAGS_VERSION = common dso_local global i32 0, align 4
@PCIER_DEVICE_CTL = common dso_local global i32 0, align 4
@PCIEM_TYPE_ROOT_PORT = common dso_local global i64 0, align 8
@PCIEM_TYPE_ENDPOINT = common dso_local global i64 0, align 8
@PCIEM_TYPE_LEGACY_ENDPOINT = common dso_local global i64 0, align 8
@PCIER_LINK_CTL = common dso_local global i32 0, align 4
@PCIEM_TYPE_DOWNSTREAM_PORT = common dso_local global i64 0, align 8
@PCIEM_FLAGS_SLOT = common dso_local global i32 0, align 4
@PCIER_SLOT_CTL = common dso_local global i32 0, align 4
@PCIEM_TYPE_ROOT_EC = common dso_local global i64 0, align 8
@PCIER_ROOT_CTL = common dso_local global i32 0, align 4
@PCIER_DEVICE_CTL2 = common dso_local global i32 0, align 4
@PCIER_LINK_CTL2 = common dso_local global i32 0, align 4
@PCIER_SLOT_CTL2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_devinfo*)* @pci_cfg_restore_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_cfg_restore_pcie(i32 %0, %struct.pci_devinfo* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pci_devinfo*, align 8
  %5 = alloca %struct.pcicfg_pcie*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store %struct.pci_devinfo* %1, %struct.pci_devinfo** %4, align 8
  %8 = load %struct.pci_devinfo*, %struct.pci_devinfo** %4, align 8
  %9 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  store %struct.pcicfg_pcie* %10, %struct.pcicfg_pcie** %5, align 8
  %11 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %12 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %15 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PCIEM_FLAGS_VERSION, align 4
  %18 = and i32 %16, %17
  store i32 %18, i32* %6, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* @PCIER_DEVICE_CTL, align 4
  %22 = add nsw i32 %20, %21
  %23 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %24 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %23, i32 0, i32 9
  %25 = load i32, i32* %24, align 8
  %26 = call i32 (i32, i32, i32, i32, ...) bitcast (i32 (...)* @pci_write_config to i32 (i32, i32, i32, i32, ...)*)(i32 %19, i32 %22, i32 %25, i32 2)
  %27 = load i32, i32* %6, align 4
  %28 = icmp sgt i32 %27, 1
  br i1 %28, label %47, label %29

29:                                               ; preds = %2
  %30 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %31 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @PCIEM_TYPE_ROOT_PORT, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %47, label %35

35:                                               ; preds = %29
  %36 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %37 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @PCIEM_TYPE_ENDPOINT, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %43 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @PCIEM_TYPE_LEGACY_ENDPOINT, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %56

47:                                               ; preds = %41, %35, %29, %2
  %48 = load i32, i32* %3, align 4
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @PCIER_LINK_CTL, align 4
  %51 = add nsw i32 %49, %50
  %52 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %53 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %52, i32 0, i32 8
  %54 = load i32, i32* %53, align 4
  %55 = call i32 (i32, i32, i32, i32, ...) bitcast (i32 (...)* @pci_write_config to i32 (i32, i32, i32, i32, ...)*)(i32 %48, i32 %51, i32 %54, i32 2)
  br label %56

56:                                               ; preds = %47, %41
  %57 = load i32, i32* %6, align 4
  %58 = icmp sgt i32 %57, 1
  br i1 %58, label %78, label %59

59:                                               ; preds = %56
  %60 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %61 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @PCIEM_TYPE_ROOT_PORT, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %78, label %65

65:                                               ; preds = %59
  %66 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %67 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @PCIEM_TYPE_DOWNSTREAM_PORT, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %87

71:                                               ; preds = %65
  %72 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %73 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* @PCIEM_FLAGS_SLOT, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %87

78:                                               ; preds = %71, %59, %56
  %79 = load i32, i32* %3, align 4
  %80 = load i32, i32* %7, align 4
  %81 = load i32, i32* @PCIER_SLOT_CTL, align 4
  %82 = add nsw i32 %80, %81
  %83 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %84 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 8
  %86 = call i32 (i32, i32, i32, i32, ...) bitcast (i32 (...)* @pci_write_config to i32 (i32, i32, i32, i32, ...)*)(i32 %79, i32 %82, i32 %85, i32 2)
  br label %87

87:                                               ; preds = %78, %71, %65
  %88 = load i32, i32* %6, align 4
  %89 = icmp sgt i32 %88, 1
  br i1 %89, label %102, label %90

90:                                               ; preds = %87
  %91 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %92 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = load i64, i64* @PCIEM_TYPE_ROOT_PORT, align 8
  %95 = icmp eq i64 %93, %94
  br i1 %95, label %102, label %96

96:                                               ; preds = %90
  %97 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %98 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %97, i32 0, i32 2
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @PCIEM_TYPE_ROOT_EC, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %111

102:                                              ; preds = %96, %90, %87
  %103 = load i32, i32* %3, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* @PCIER_ROOT_CTL, align 4
  %106 = add nsw i32 %104, %105
  %107 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %108 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %107, i32 0, i32 6
  %109 = load i32, i32* %108, align 4
  %110 = call i32 (i32, i32, i32, i32, ...) bitcast (i32 (...)* @pci_write_config to i32 (i32, i32, i32, i32, ...)*)(i32 %103, i32 %106, i32 %109, i32 2)
  br label %111

111:                                              ; preds = %102, %96
  %112 = load i32, i32* %6, align 4
  %113 = icmp sgt i32 %112, 1
  br i1 %113, label %114, label %139

114:                                              ; preds = %111
  %115 = load i32, i32* %3, align 4
  %116 = load i32, i32* %7, align 4
  %117 = load i32, i32* @PCIER_DEVICE_CTL2, align 4
  %118 = add nsw i32 %116, %117
  %119 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %120 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = call i32 (i32, i32, i32, i32, ...) bitcast (i32 (...)* @pci_write_config to i32 (i32, i32, i32, i32, ...)*)(i32 %115, i32 %118, i32 %121, i32 2)
  %123 = load i32, i32* %3, align 4
  %124 = load i32, i32* %7, align 4
  %125 = load i32, i32* @PCIER_LINK_CTL2, align 4
  %126 = add nsw i32 %124, %125
  %127 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %128 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 4
  %130 = call i32 (i32, i32, i32, i32, ...) bitcast (i32 (...)* @pci_write_config to i32 (i32, i32, i32, i32, ...)*)(i32 %123, i32 %126, i32 %129, i32 2)
  %131 = load i32, i32* %3, align 4
  %132 = load i32, i32* %7, align 4
  %133 = load i32, i32* @PCIER_SLOT_CTL2, align 4
  %134 = add nsw i32 %132, %133
  %135 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %136 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 8
  %138 = call i32 (i32, i32, i32, i32, ...) bitcast (i32 (...)* @pci_write_config to i32 (i32, i32, i32, i32, ...)*)(i32 %131, i32 %134, i32 %137, i32 2)
  br label %139

139:                                              ; preds = %114, %111
  ret void
}

declare dso_local i32 @pci_write_config(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
