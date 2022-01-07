; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-siliconimage.c_ata_sii_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-siliconimage.c_ata_sii_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ata_channel = type { i32 }

@ATA_SA150 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_sii_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_sii_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca %struct.ata_channel*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  %10 = call i8* @device_get_softc(i32 %9)
  %11 = bitcast i8* %10 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %11, %struct.ata_pci_controller** %4, align 8
  %12 = load i32, i32* %3, align 4
  %13 = call i8* @device_get_softc(i32 %12)
  %14 = bitcast i8* %13 to %struct.ata_channel*
  store %struct.ata_channel* %14, %struct.ata_channel** %5, align 8
  %15 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %16 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = and i32 %17, 1
  %19 = shl i32 %18, 3
  %20 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %21 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = and i32 %22, 2
  %24 = shl i32 %23, 8
  %25 = add nsw i32 %19, %24
  store i32 %25, i32* %6, align 4
  %26 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %27 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = and i32 %28, 1
  %30 = shl i32 %29, 6
  %31 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %32 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, 2
  %35 = shl i32 %34, 8
  %36 = add nsw i32 %30, %35
  store i32 %36, i32* %7, align 4
  %37 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %38 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %37, i32 0, i32 1
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ATA_SA150, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %1
  %45 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %46 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* %6, align 4
  %49 = add nsw i32 16, %48
  %50 = call i32 @ATA_INL(i32 %47, i32 %49)
  %51 = and i32 %50, 16
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %44
  %54 = load i32, i32* %3, align 4
  %55 = call i32 @ata_sata_phy_check_events(i32 %54, i32 -1)
  br label %56

56:                                               ; preds = %53, %44, %1
  %57 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %58 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* %7, align 4
  %61 = add nsw i32 160, %60
  %62 = call i32 @ATA_INL(i32 %59, i32 %61)
  %63 = and i32 %62, 2048
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %56
  %66 = load i32, i32* %3, align 4
  %67 = call i32 @ata_pci_status(i32 %66)
  store i32 %67, i32* %2, align 4
  br label %69

68:                                               ; preds = %56
  store i32 0, i32* %2, align 4
  br label %69

69:                                               ; preds = %68, %65
  %70 = load i32, i32* %2, align 4
  ret i32 %70
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ata_sata_phy_check_events(i32, i32) #1

declare dso_local i32 @ata_pci_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
