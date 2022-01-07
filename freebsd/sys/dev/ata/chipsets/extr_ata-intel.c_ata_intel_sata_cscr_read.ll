; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_sata_cscr_read.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_sata_cscr_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32 }
%struct.ata_channel = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32*)* @ata_intel_sata_cscr_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_intel_sata_cscr_read(i32 %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.ata_pci_controller*, align 8
  %11 = alloca %struct.ata_channel*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @device_get_parent(i32 %14)
  store i32 %15, i32* %12, align 4
  %16 = load i32, i32* %12, align 4
  %17 = call i8* @device_get_softc(i32 %16)
  %18 = bitcast i8* %17 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %18, %struct.ata_pci_controller** %10, align 8
  %19 = load i32, i32* %6, align 4
  %20 = call i8* @device_get_softc(i32 %19)
  %21 = bitcast i8* %20 to %struct.ata_channel*
  store %struct.ata_channel* %21, %struct.ata_channel** %11, align 8
  %22 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %10, align 8
  %23 = load %struct.ata_channel*, %struct.ata_channel** %11, align 8
  %24 = call i32* @ATA_INTEL_SMAP(%struct.ata_pci_controller* %22, %struct.ata_channel* %23)
  store i32* %24, i32** %13, align 8
  %25 = load i32, i32* %7, align 4
  %26 = icmp eq i32 %25, 1
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i32 1, i32 0
  store i32 %28, i32* %7, align 4
  %29 = load i32, i32* %8, align 4
  switch i32 %29, label %33 [
    i32 128, label %30
    i32 129, label %31
    i32 130, label %32
  ]

30:                                               ; preds = %4
  store i32 0, i32* %8, align 4
  br label %35

31:                                               ; preds = %4
  store i32 1, i32* %8, align 4
  br label %35

32:                                               ; preds = %4
  store i32 2, i32* %8, align 4
  br label %35

33:                                               ; preds = %4
  %34 = load i32, i32* @EINVAL, align 4
  store i32 %34, i32* %5, align 4
  br label %55

35:                                               ; preds = %32, %31, %30
  %36 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %10, align 8
  %37 = call i32 @ATA_INTEL_LOCK(%struct.ata_pci_controller* %36)
  %38 = load i32, i32* %12, align 4
  %39 = load i32*, i32** %13, align 8
  %40 = load i32, i32* %7, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, i32* %39, i64 %41
  %43 = load i32, i32* %42, align 4
  %44 = mul nsw i32 %43, 16
  %45 = add nsw i32 80, %44
  %46 = load i32, i32* %8, align 4
  %47 = mul nsw i32 %46, 4
  %48 = add nsw i32 %45, %47
  %49 = call i32 @pci_write_config(i32 %38, i32 160, i32 %48, i32 4)
  %50 = load i32, i32* %12, align 4
  %51 = call i32 @pci_read_config(i32 %50, i32 164, i32 4)
  %52 = load i32*, i32** %9, align 8
  store i32 %51, i32* %52, align 4
  %53 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %10, align 8
  %54 = call i32 @ATA_INTEL_UNLOCK(%struct.ata_pci_controller* %53)
  store i32 0, i32* %5, align 4
  br label %55

55:                                               ; preds = %35, %33
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32* @ATA_INTEL_SMAP(%struct.ata_pci_controller*, %struct.ata_channel*) #1

declare dso_local i32 @ATA_INTEL_LOCK(%struct.ata_pci_controller*) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @ATA_INTEL_UNLOCK(%struct.ata_pci_controller*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
