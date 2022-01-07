; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_sata_sidpr_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_sata_sidpr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32 }
%struct.ata_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ATA_IDX_ADDR = common dso_local global i32 0, align 4
@ATA_IDX_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @ata_intel_sata_sidpr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_intel_sata_sidpr_read(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ata_pci_controller*, align 8
  %11 = alloca %struct.ata_channel*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call i32 @device_get_parent(i32 %13)
  store i32 %14, i32* %12, align 4
  %15 = load i32, i32* %12, align 4
  %16 = call i8* @device_get_softc(i32 %15)
  %17 = bitcast i8* %16 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %17, %struct.ata_pci_controller** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i8* @device_get_softc(i32 %18)
  %20 = bitcast i8* %19 to %struct.ata_channel*
  store %struct.ata_channel* %20, %struct.ata_channel** %11, align 8
  %21 = load i32, i32* %7, align 4
  %22 = icmp eq i32 %21, 1
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1, i32 0
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %8, align 4
  switch i32 %25, label %29 [
    i32 128, label %26
    i32 130, label %27
    i32 129, label %28
  ]

26:                                               ; preds = %4
  store i32 0, i32* %8, align 4
  br label %31

27:                                               ; preds = %4
  store i32 1, i32* %8, align 4
  br label %31

28:                                               ; preds = %4
  store i32 2, i32* %8, align 4
  br label %31

29:                                               ; preds = %4
  %30 = load i32, i32* @EINVAL, align 4
  store i32 %30, i32* %5, align 4
  br label %52

31:                                               ; preds = %28, %27, %26
  %32 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %10, align 8
  %33 = call i32 @ATA_INTEL_LOCK(%struct.ata_pci_controller* %32)
  %34 = load %struct.ata_channel*, %struct.ata_channel** %11, align 8
  %35 = load i32, i32* @ATA_IDX_ADDR, align 4
  %36 = load %struct.ata_channel*, %struct.ata_channel** %11, align 8
  %37 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = mul nsw i32 %38, 2
  %40 = load i32, i32* %7, align 4
  %41 = add nsw i32 %39, %40
  %42 = shl i32 %41, 8
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %42, %43
  %45 = call i32 @ATA_IDX_OUTL(%struct.ata_channel* %34, i32 %35, i32 %44)
  %46 = load %struct.ata_channel*, %struct.ata_channel** %11, align 8
  %47 = load i32, i32* @ATA_IDX_DATA, align 4
  %48 = call i32 @ATA_IDX_INL(%struct.ata_channel* %46, i32 %47)
  %49 = load i32*, i32** %9, align 8
  store i32 %48, i32* %49, align 4
  %50 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %10, align 8
  %51 = call i32 @ATA_INTEL_UNLOCK(%struct.ata_pci_controller* %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %31, %29
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @ATA_INTEL_LOCK(%struct.ata_pci_controller*) #1

declare dso_local i32 @ATA_IDX_OUTL(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @ATA_IDX_INL(%struct.ata_channel*, i32) #1

declare dso_local i32 @ATA_INTEL_UNLOCK(%struct.ata_pci_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
