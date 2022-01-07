; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_pci.c_nvme_pci_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/nvme/extr_nvme_pci.c_nvme_pci_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._pcsid = type { i8*, i32, i64 }
%struct.nvme_controller = type { i32 }

@pci_ids = common dso_local global %struct._pcsid* null, align 8
@BUS_PROBE_DEFAULT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@BUS_PROBE_GENERIC = common dso_local global i32 0, align 4
@PCIC_STORAGE = common dso_local global i64 0, align 8
@PCIP_STORAGE_NVM_ENTERPRISE_NVMHCI_1_0 = common dso_local global i64 0, align 8
@PCIS_STORAGE_NVM = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @nvme_pci_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_pci_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.nvme_controller*, align 8
  %5 = alloca %struct._pcsid*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call %struct.nvme_controller* @DEVICE2SOFTC(i32 %8)
  store %struct.nvme_controller* %9, %struct.nvme_controller** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i32 @pci_get_devid(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %3, align 4
  %13 = call i32 @pci_get_subdevice(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct._pcsid*, %struct._pcsid** @pci_ids, align 8
  store %struct._pcsid* %14, %struct._pcsid** %5, align 8
  br label %15

15:                                               ; preds = %27, %1
  %16 = load %struct._pcsid*, %struct._pcsid** %5, align 8
  %17 = getelementptr inbounds %struct._pcsid, %struct._pcsid* %16, i32 0, i32 2
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %30

20:                                               ; preds = %15
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load %struct._pcsid*, %struct._pcsid** %5, align 8
  %24 = call i64 @nvme_match(i32 %21, i32 %22, %struct._pcsid* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  br label %30

27:                                               ; preds = %20
  %28 = load %struct._pcsid*, %struct._pcsid** %5, align 8
  %29 = getelementptr inbounds %struct._pcsid, %struct._pcsid* %28, i32 1
  store %struct._pcsid* %29, %struct._pcsid** %5, align 8
  br label %15

30:                                               ; preds = %26, %15
  %31 = load %struct._pcsid*, %struct._pcsid** %5, align 8
  %32 = getelementptr inbounds %struct._pcsid, %struct._pcsid* %31, i32 0, i32 2
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %30
  %36 = load %struct._pcsid*, %struct._pcsid** %5, align 8
  %37 = getelementptr inbounds %struct._pcsid, %struct._pcsid* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 8
  %39 = load %struct.nvme_controller*, %struct.nvme_controller** %4, align 8
  %40 = getelementptr inbounds %struct.nvme_controller, %struct.nvme_controller* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  br label %41

41:                                               ; preds = %35, %30
  %42 = load %struct._pcsid*, %struct._pcsid** %5, align 8
  %43 = getelementptr inbounds %struct._pcsid, %struct._pcsid* %42, i32 0, i32 0
  %44 = load i8*, i8** %43, align 8
  %45 = icmp ne i8* %44, null
  br i1 %45, label %46, label %53

46:                                               ; preds = %41
  %47 = load i32, i32* %3, align 4
  %48 = load %struct._pcsid*, %struct._pcsid** %5, align 8
  %49 = getelementptr inbounds %struct._pcsid, %struct._pcsid* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = call i32 @device_set_desc(i32 %47, i8* %50)
  %52 = load i32, i32* @BUS_PROBE_DEFAULT, align 4
  store i32 %52, i32* %2, align 4
  br label %55

53:                                               ; preds = %41
  %54 = load i32, i32* @ENXIO, align 4
  store i32 %54, i32* %2, align 4
  br label %55

55:                                               ; preds = %53, %46
  %56 = load i32, i32* %2, align 4
  ret i32 %56
}

declare dso_local %struct.nvme_controller* @DEVICE2SOFTC(i32) #1

declare dso_local i32 @pci_get_devid(i32) #1

declare dso_local i32 @pci_get_subdevice(i32) #1

declare dso_local i64 @nvme_match(i32, i32, %struct._pcsid*) #1

declare dso_local i32 @device_set_desc(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
