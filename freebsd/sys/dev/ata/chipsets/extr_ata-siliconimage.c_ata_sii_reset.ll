; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-siliconimage.c_ata_sii_reset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-siliconimage.c_ata_sii_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32 }
%struct.ata_channel = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ata_sii_reset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_sii_reset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_pci_controller*, align 8
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @device_get_parent(i32 %7)
  %9 = call i8* @device_get_softc(i32 %8)
  %10 = bitcast i8* %9 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %10, %struct.ata_pci_controller** %3, align 8
  %11 = load i32, i32* %2, align 4
  %12 = call i8* @device_get_softc(i32 %11)
  %13 = bitcast i8* %12 to %struct.ata_channel*
  store %struct.ata_channel* %13, %struct.ata_channel** %4, align 8
  %14 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %15 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = and i32 %16, 1
  %18 = shl i32 %17, 7
  %19 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %20 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, 2
  %23 = shl i32 %22, 8
  %24 = add nsw i32 %18, %23
  store i32 %24, i32* %5, align 4
  %25 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %26 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* %5, align 4
  %29 = add nsw i32 332, %28
  %30 = call i32 @ATA_INL(i32 %27, i32 %29)
  store i32 %30, i32* %6, align 4
  %31 = load i32, i32* %6, align 4
  %32 = and i32 %31, 3
  %33 = icmp eq i32 %32, 1
  br i1 %33, label %34, label %43

34:                                               ; preds = %1
  %35 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %36 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %5, align 4
  %39 = add nsw i32 332, %38
  %40 = load i32, i32* %6, align 4
  %41 = and i32 %40, -4
  %42 = call i32 @ATA_OUTL(i32 %37, i32 %39, i32 %41)
  br label %43

43:                                               ; preds = %34, %1
  %44 = load i32, i32* %2, align 4
  %45 = call i64 @ata_sata_phy_reset(i32 %44, i32 -1, i32 1)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %43
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @ata_generic_reset(i32 %48)
  br label %53

50:                                               ; preds = %43
  %51 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %52 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %51, i32 0, i32 1
  store i64 0, i64* %52, align 8
  br label %53

53:                                               ; preds = %50, %47
  ret void
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i64 @ata_sata_phy_reset(i32, i32, i32) #1

declare dso_local i32 @ata_generic_reset(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
