; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_ch_detach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_ch_detach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@SYS_RES_IOPORT = common dso_local global i32 0, align 4
@ATA_CTLADDR_RID = common dso_local global i32 0, align 4
@ATA_CONTROL = common dso_local global i64 0, align 8
@ATA_IOADDR_RID = common dso_local global i32 0, align 4
@ATA_IDX_ADDR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_pci_ch_detach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_channel*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ata_channel* @device_get_softc(i32 %4)
  store %struct.ata_channel* %5, %struct.ata_channel** %3, align 8
  %6 = load i32, i32* %2, align 4
  %7 = call i32 @ata_pci_dmafini(i32 %6)
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @SYS_RES_IOPORT, align 4
  %10 = load i32, i32* @ATA_CTLADDR_RID, align 4
  %11 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %12 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = load i64, i64* @ATA_CONTROL, align 8
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bus_release_resource(i32 %8, i32 %9, i32 %10, i32 %17)
  %19 = load i32, i32* %2, align 4
  %20 = load i32, i32* @SYS_RES_IOPORT, align 4
  %21 = load i32, i32* @ATA_IOADDR_RID, align 4
  %22 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %23 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %22, i32 0, i32 0
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = load i64, i64* @ATA_IDX_ADDR, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i64 %25
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @bus_release_resource(i32 %19, i32 %20, i32 %21, i32 %28)
  ret i32 0
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ata_pci_dmafini(i32) #1

declare dso_local i32 @bus_release_resource(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
