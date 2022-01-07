; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_write_msix_entry.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/pci/extr_pci.c_pci_write_msix_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pci_devinfo = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.pcicfg_msix }
%struct.pcicfg_msix = type { i32, i32, i32 }

@.str = private unnamed_addr constant [12 x i8] c"bogus index\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32, i32)* @pci_write_msix_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pci_write_msix_entry(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.pci_devinfo*, align 8
  %10 = alloca %struct.pcicfg_msix*, align 8
  %11 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call %struct.pci_devinfo* @device_get_ivars(i32 %12)
  store %struct.pci_devinfo* %13, %struct.pci_devinfo** %9, align 8
  %14 = load %struct.pci_devinfo*, %struct.pci_devinfo** %9, align 8
  %15 = getelementptr inbounds %struct.pci_devinfo, %struct.pci_devinfo* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  store %struct.pcicfg_msix* %16, %struct.pcicfg_msix** %10, align 8
  %17 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %10, align 8
  %18 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp sgt i32 %19, %20
  %22 = zext i1 %21 to i32
  %23 = call i32 @KASSERT(i32 %22, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %24 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %10, align 8
  %25 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %6, align 4
  %28 = mul nsw i32 %27, 16
  %29 = add nsw i32 %26, %28
  store i32 %29, i32* %11, align 4
  %30 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %10, align 8
  %31 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* %11, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @bus_write_4(i32 %32, i32 %33, i32 %34)
  %36 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %10, align 8
  %37 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %11, align 4
  %40 = add nsw i32 %39, 4
  %41 = load i32, i32* %7, align 4
  %42 = ashr i32 %41, 32
  %43 = call i32 @bus_write_4(i32 %38, i32 %40, i32 %42)
  %44 = load %struct.pcicfg_msix*, %struct.pcicfg_msix** %10, align 8
  %45 = getelementptr inbounds %struct.pcicfg_msix, %struct.pcicfg_msix* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %11, align 4
  %48 = add nsw i32 %47, 8
  %49 = load i32, i32* %8, align 4
  %50 = call i32 @bus_write_4(i32 %46, i32 %48, i32 %49)
  ret void
}

declare dso_local %struct.pci_devinfo* @device_get_ivars(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @bus_write_4(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
