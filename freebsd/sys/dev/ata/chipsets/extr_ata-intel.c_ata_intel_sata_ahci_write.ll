; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_sata_ahci_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_sata_ahci_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32 }
%struct.ata_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @ata_intel_sata_ahci_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_intel_sata_ahci_write(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ata_pci_controller*, align 8
  %11 = alloca %struct.ata_channel*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %15 = load i32, i32* %6, align 4
  %16 = call i32 @device_get_parent(i32 %15)
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = call i8* @device_get_softc(i32 %17)
  %19 = bitcast i8* %18 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %19, %struct.ata_pci_controller** %10, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i8* @device_get_softc(i32 %20)
  %22 = bitcast i8* %21 to %struct.ata_channel*
  store %struct.ata_channel* %22, %struct.ata_channel** %11, align 8
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %23, 1
  %25 = zext i1 %24 to i64
  %26 = select i1 %24, i32 1, i32 0
  store i32 %26, i32* %7, align 4
  %27 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %10, align 8
  %28 = load %struct.ata_channel*, %struct.ata_channel** %11, align 8
  %29 = call i32* @ATA_INTEL_SMAP(%struct.ata_pci_controller* %27, %struct.ata_channel* %28)
  store i32* %29, i32** %13, align 8
  %30 = load i32*, i32** %13, align 8
  %31 = load i32, i32* %7, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = mul nsw i32 %34, 128
  %36 = add nsw i32 256, %35
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %8, align 4
  switch i32 %37, label %41 [
    i32 128, label %38
    i32 130, label %39
    i32 129, label %40
  ]

38:                                               ; preds = %4
  store i32 40, i32* %8, align 4
  br label %43

39:                                               ; preds = %4
  store i32 44, i32* %8, align 4
  br label %43

40:                                               ; preds = %4
  store i32 48, i32* %8, align 4
  br label %43

41:                                               ; preds = %4
  %42 = load i32, i32* @EINVAL, align 4
  store i32 %42, i32* %5, align 4
  br label %52

43:                                               ; preds = %40, %39, %38
  %44 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %10, align 8
  %45 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %8, align 4
  %49 = add nsw i32 %47, %48
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @ATA_OUTL(i32 %46, i32 %49, i32 %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %43, %41
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32* @ATA_INTEL_SMAP(%struct.ata_pci_controller*, %struct.ata_channel*) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
