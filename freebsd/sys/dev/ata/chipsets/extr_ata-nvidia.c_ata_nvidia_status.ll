; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-nvidia.c_ata_nvidia_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-nvidia.c_ata_nvidia_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_channel = type { i32 }

@NV4 = common dso_local global i32 0, align 4
@NVQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_nvidia_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_nvidia_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_pci_controller*, align 8
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %8 = load i32, i32* %2, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  %10 = call i8* @device_get_softc(i32 %9)
  %11 = bitcast i8* %10 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %11, %struct.ata_pci_controller** %3, align 8
  %12 = load i32, i32* %2, align 4
  %13 = call i8* @device_get_softc(i32 %12)
  %14 = bitcast i8* %13 to %struct.ata_channel*
  store %struct.ata_channel* %14, %struct.ata_channel** %4, align 8
  %15 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %16 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NV4, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  %23 = zext i1 %22 to i64
  %24 = select i1 %22, i32 1088, i32 16
  store i32 %24, i32* %5, align 4
  %25 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %26 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %29 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %28, i32 0, i32 1
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @NVQ, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 4, i32 2
  %38 = shl i32 %27, %37
  store i32 %38, i32* %6, align 4
  %39 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %40 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %39, i32 0, i32 1
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @NVQ, align 4
  %45 = and i32 %43, %44
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %1
  %48 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %49 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* %5, align 4
  %52 = call i32 @ATA_INL(i32 %50, i32 %51)
  store i32 %52, i32* %7, align 4
  br label %59

53:                                               ; preds = %1
  %54 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %55 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @ATA_INB(i32 %56, i32 %57)
  store i32 %58, i32* %7, align 4
  br label %59

59:                                               ; preds = %53, %47
  %60 = load i32, i32* %7, align 4
  %61 = load i32, i32* %6, align 4
  %62 = shl i32 12, %61
  %63 = and i32 %60, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %59
  %66 = load i32, i32* %2, align 4
  %67 = call i32 @ata_sata_phy_check_events(i32 %66, i32 -1)
  br label %68

68:                                               ; preds = %65, %59
  %69 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %70 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %69, i32 0, i32 1
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @NVQ, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %68
  %78 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %79 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %6, align 4
  %83 = shl i32 15, %82
  %84 = or i32 %83, 15728880
  %85 = call i32 @ATA_OUTL(i32 %80, i32 %81, i32 %84)
  br label %94

86:                                               ; preds = %68
  %87 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %88 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 8
  %90 = load i32, i32* %5, align 4
  %91 = load i32, i32* %6, align 4
  %92 = shl i32 15, %91
  %93 = call i32 @ATA_OUTB(i32 %89, i32 %90, i32 %92)
  br label %94

94:                                               ; preds = %86, %77
  %95 = load i32, i32* %7, align 4
  %96 = load i32, i32* %6, align 4
  %97 = shl i32 1, %96
  %98 = and i32 %95, %97
  ret i32 %98
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_INB(i32, i32) #1

declare dso_local i32 @ata_sata_phy_check_events(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ATA_OUTB(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
