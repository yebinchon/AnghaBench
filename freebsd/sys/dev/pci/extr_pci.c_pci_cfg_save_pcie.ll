; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_cfg_save_pcie.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_cfg_save_pcie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pcicfg_pcie }
%struct.pcicfg_pcie = type { i32, i32, i64, i8*, i8*, i8*, i8*, i8*, i8*, i8* }

@PCIER_FLAGS = common dso_local global i32 0, align 4
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
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, %struct.pci_devinfo*)* @pci_cfg_save_pcie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_cfg_save_pcie(i32 %0, %struct.pci_devinfo* %1) #0 {
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
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @PCIER_FLAGS, align 4
  %17 = add nsw i32 %15, %16
  %18 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @pci_read_config to i32 (i32, i32, i32, ...)*)(i32 %14, i32 %17, i32 2)
  %19 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %20 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 4
  %21 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %22 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @PCIEM_FLAGS_VERSION, align 4
  %25 = and i32 %23, %24
  store i32 %25, i32* %6, align 4
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @PCIER_DEVICE_CTL, align 4
  %29 = add nsw i32 %27, %28
  %30 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @pci_read_config to i32 (i32, i32, i32, ...)*)(i32 %26, i32 %29, i32 2)
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %34 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %33, i32 0, i32 9
  store i8* %32, i8** %34, align 8
  %35 = load i32, i32* %6, align 4
  %36 = icmp sgt i32 %35, 1
  br i1 %36, label %55, label %37

37:                                               ; preds = %2
  %38 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %39 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %38, i32 0, i32 2
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @PCIEM_TYPE_ROOT_PORT, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %55, label %43

43:                                               ; preds = %37
  %44 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %45 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @PCIEM_TYPE_ENDPOINT, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %55, label %49

49:                                               ; preds = %43
  %50 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %51 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @PCIEM_TYPE_LEGACY_ENDPOINT, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %65

55:                                               ; preds = %49, %43, %37, %2
  %56 = load i32, i32* %3, align 4
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* @PCIER_LINK_CTL, align 4
  %59 = add nsw i32 %57, %58
  %60 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @pci_read_config to i32 (i32, i32, i32, ...)*)(i32 %56, i32 %59, i32 2)
  %61 = sext i32 %60 to i64
  %62 = inttoptr i64 %61 to i8*
  %63 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %64 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %63, i32 0, i32 8
  store i8* %62, i8** %64, align 8
  br label %65

65:                                               ; preds = %55, %49
  %66 = load i32, i32* %6, align 4
  %67 = icmp sgt i32 %66, 1
  br i1 %67, label %87, label %68

68:                                               ; preds = %65
  %69 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %70 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = load i64, i64* @PCIEM_TYPE_ROOT_PORT, align 8
  %73 = icmp eq i64 %71, %72
  br i1 %73, label %87, label %74

74:                                               ; preds = %68
  %75 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %76 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @PCIEM_TYPE_DOWNSTREAM_PORT, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %97

80:                                               ; preds = %74
  %81 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %82 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* @PCIEM_FLAGS_SLOT, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %97

87:                                               ; preds = %80, %68, %65
  %88 = load i32, i32* %3, align 4
  %89 = load i32, i32* %7, align 4
  %90 = load i32, i32* @PCIER_SLOT_CTL, align 4
  %91 = add nsw i32 %89, %90
  %92 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @pci_read_config to i32 (i32, i32, i32, ...)*)(i32 %88, i32 %91, i32 2)
  %93 = sext i32 %92 to i64
  %94 = inttoptr i64 %93 to i8*
  %95 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %96 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %95, i32 0, i32 7
  store i8* %94, i8** %96, align 8
  br label %97

97:                                               ; preds = %87, %80, %74
  %98 = load i32, i32* %6, align 4
  %99 = icmp sgt i32 %98, 1
  br i1 %99, label %112, label %100

100:                                              ; preds = %97
  %101 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %102 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @PCIEM_TYPE_ROOT_PORT, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %112, label %106

106:                                              ; preds = %100
  %107 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %108 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %107, i32 0, i32 2
  %109 = load i64, i64* %108, align 8
  %110 = load i64, i64* @PCIEM_TYPE_ROOT_EC, align 8
  %111 = icmp eq i64 %109, %110
  br i1 %111, label %112, label %122

112:                                              ; preds = %106, %100, %97
  %113 = load i32, i32* %3, align 4
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* @PCIER_ROOT_CTL, align 4
  %116 = add nsw i32 %114, %115
  %117 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @pci_read_config to i32 (i32, i32, i32, ...)*)(i32 %113, i32 %116, i32 2)
  %118 = sext i32 %117 to i64
  %119 = inttoptr i64 %118 to i8*
  %120 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %121 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %120, i32 0, i32 6
  store i8* %119, i8** %121, align 8
  br label %122

122:                                              ; preds = %112, %106
  %123 = load i32, i32* %6, align 4
  %124 = icmp sgt i32 %123, 1
  br i1 %124, label %125, label %153

125:                                              ; preds = %122
  %126 = load i32, i32* %3, align 4
  %127 = load i32, i32* %7, align 4
  %128 = load i32, i32* @PCIER_DEVICE_CTL2, align 4
  %129 = add nsw i32 %127, %128
  %130 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @pci_read_config to i32 (i32, i32, i32, ...)*)(i32 %126, i32 %129, i32 2)
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %134 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %133, i32 0, i32 5
  store i8* %132, i8** %134, align 8
  %135 = load i32, i32* %3, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @PCIER_LINK_CTL2, align 4
  %138 = add nsw i32 %136, %137
  %139 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @pci_read_config to i32 (i32, i32, i32, ...)*)(i32 %135, i32 %138, i32 2)
  %140 = sext i32 %139 to i64
  %141 = inttoptr i64 %140 to i8*
  %142 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %143 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %142, i32 0, i32 4
  store i8* %141, i8** %143, align 8
  %144 = load i32, i32* %3, align 4
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @PCIER_SLOT_CTL2, align 4
  %147 = add nsw i32 %145, %146
  %148 = call i32 (i32, i32, i32, ...) bitcast (i32 (...)* @pci_read_config to i32 (i32, i32, i32, ...)*)(i32 %144, i32 %147, i32 2)
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = load %struct.pcicfg_pcie*, %struct.pcicfg_pcie** %5, align 8
  %152 = getelementptr inbounds %struct.pcicfg_pcie, %struct.pcicfg_pcie* %151, i32 0, i32 3
  store i8* %150, i8** %152, align 8
  br label %153

153:                                              ; preds = %125, %122
  ret void
}

declare dso_local i32 @pci_read_config(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
