; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-serverworks.c_ata_serverworks_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-serverworks.c_ata_serverworks_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i32 }
%struct.ata_pci_controller = type { i32 }

@ATA_STATUS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_serverworks_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_serverworks_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca %struct.ata_pci_controller*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i8* @device_get_softc(i32 %6)
  %8 = bitcast i8* %7 to %struct.ata_channel*
  store %struct.ata_channel* %8, %struct.ata_channel** %4, align 8
  %9 = load i32, i32* %3, align 4
  %10 = call i32 @device_get_parent(i32 %9)
  %11 = call i8* @device_get_softc(i32 %10)
  %12 = bitcast i8* %11 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %12, %struct.ata_pci_controller** %5, align 8
  %13 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %5, align 8
  %14 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @ATA_INL(i32 %15, i32 8064)
  %17 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %18 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = shl i32 1, %19
  %21 = and i32 %16, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %30

24:                                               ; preds = %1
  %25 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %26 = load i32, i32* @ATA_STATUS, align 4
  %27 = call i32 @ATA_IDX_INL(%struct.ata_channel* %25, i32 %26)
  %28 = load i32, i32* %3, align 4
  %29 = call i32 @ata_pci_status(i32 %28)
  store i32 %29, i32* %2, align 4
  br label %30

30:                                               ; preds = %24, %23
  %31 = load i32, i32* %2, align 4
  ret i32 %31
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @ATA_IDX_INL(%struct.ata_channel*, i32) #1

declare dso_local i32 @ata_pci_status(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
