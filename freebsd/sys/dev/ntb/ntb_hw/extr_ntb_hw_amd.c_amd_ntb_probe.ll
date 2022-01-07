; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_probe.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_amd.c_amd_ntb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.amd_ntb_softc = type { %struct.amd_ntb_hw_info*, i32 }
%struct.amd_ntb_hw_info = type { i32 }
%struct.pci_device_table = type { i32, i64 }

@amd_ntb_devs = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@BUS_PROBE_GENERIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @amd_ntb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @amd_ntb_probe(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.amd_ntb_softc*, align 8
  %5 = alloca %struct.pci_device_table*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.amd_ntb_softc* @device_get_softc(i32 %6)
  store %struct.amd_ntb_softc* %7, %struct.amd_ntb_softc** %4, align 8
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @amd_ntb_devs, align 4
  %10 = call %struct.pci_device_table* @PCI_MATCH(i32 %8, i32 %9)
  store %struct.pci_device_table* %10, %struct.pci_device_table** %5, align 8
  %11 = load %struct.pci_device_table*, %struct.pci_device_table** %5, align 8
  %12 = icmp eq %struct.pci_device_table* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @ENXIO, align 4
  store i32 %14, i32* %2, align 4
  br label %35

15:                                               ; preds = %1
  %16 = load %struct.pci_device_table*, %struct.pci_device_table** %5, align 8
  %17 = getelementptr inbounds %struct.pci_device_table, %struct.pci_device_table* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.amd_ntb_hw_info*
  %20 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %4, align 8
  %21 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %20, i32 0, i32 0
  store %struct.amd_ntb_hw_info* %19, %struct.amd_ntb_hw_info** %21, align 8
  %22 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %4, align 8
  %23 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %22, i32 0, i32 0
  %24 = load %struct.amd_ntb_hw_info*, %struct.amd_ntb_hw_info** %23, align 8
  %25 = getelementptr inbounds %struct.amd_ntb_hw_info, %struct.amd_ntb_hw_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.amd_ntb_softc*, %struct.amd_ntb_softc** %4, align 8
  %28 = getelementptr inbounds %struct.amd_ntb_softc, %struct.amd_ntb_softc* %27, i32 0, i32 1
  store i32 %26, i32* %28, align 8
  %29 = load i32, i32* %3, align 4
  %30 = load %struct.pci_device_table*, %struct.pci_device_table** %5, align 8
  %31 = getelementptr inbounds %struct.pci_device_table, %struct.pci_device_table* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @device_set_desc(i32 %29, i32 %32)
  %34 = load i32, i32* @BUS_PROBE_GENERIC, align 4
  store i32 %34, i32* %2, align 4
  br label %35

35:                                               ; preds = %15, %13
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local %struct.amd_ntb_softc* @device_get_softc(i32) #1

declare dso_local %struct.pci_device_table* @PCI_MATCH(i32, i32) #1

declare dso_local i32 @device_set_desc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
