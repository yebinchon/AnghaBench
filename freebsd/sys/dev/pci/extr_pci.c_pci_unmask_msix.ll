; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_unmask_msix.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_unmask_msix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pcicfg_msix }
%struct.pcicfg_msix = type { i32, i32, i64 }

@.str = private unnamed_addr constant [12 x i8] c"bogus index\00", align 1
@PCIM_MSIX_VCTRL_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pci_unmask_msix(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.pci_devinfo*, align 8
  %6 = alloca %struct.pcicfg_msix*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call %struct.pci_devinfo* @device_get_ivars(i32 %9)
  store %struct.pci_devinfo* %10, %struct.pci_devinfo** %5, align 8
  %11 = load %struct.pci_devinfo*, %struct.pci_devinfo** %5, align 8
  %12 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.pcicfg_msix* %13, %struct.pcicfg_msix** %6, align 8
  %14 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %6, align 8
  %15 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = icmp sgt i32 %16, %17
  %19 = zext i1 %18 to i32
  %20 = call i32 @KASSERT(i32 %19, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %21 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %6, align 8
  %22 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i32, i32* %4, align 4
  %25 = mul nsw i32 %24, 16
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %23, %26
  %28 = add nsw i64 %27, 12
  store i64 %28, i64* %7, align 8
  %29 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %6, align 8
  %30 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i64, i64* %7, align 8
  %33 = call i64 @bus_read_4(i32 %31, i64 %32)
  store i64 %33, i64* %8, align 8
  %34 = load i64, i64* @PCIM_MSIX_VCTRL_MASK, align 8
  %35 = xor i64 %34, -1
  %36 = load i64, i64* %8, align 8
  %37 = and i64 %36, %35
  store i64 %37, i64* %8, align 8
  %38 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %6, align 8
  %39 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @bus_write_4(i32 %40, i64 %41, i64 %42)
  ret void
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @bus_read_4(i32, i64) #1

declare dso_local i32 @bus_write_4(i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
