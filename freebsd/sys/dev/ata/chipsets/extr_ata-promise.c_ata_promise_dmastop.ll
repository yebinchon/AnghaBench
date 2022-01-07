; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_dmastop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_dmastop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32, i32 }
%struct.ata_pci_controller = type { i32 }
%struct.ata_channel = type { %struct.TYPE_2__, i64 }
%struct.TYPE_2__ = type { i32 }

@ATA_R_48BIT = common dso_local global i32 0, align 4
@ATA_BMSTAT_PORT = common dso_local global i32 0, align 4
@ATA_BMCMD_PORT = common dso_local global i32 0, align 4
@ATA_BMCMD_START_STOP = common dso_local global i32 0, align 4
@ATA_BMSTAT_INTERRUPT = common dso_local global i32 0, align 4
@ATA_BMSTAT_ERROR = common dso_local global i32 0, align 4
@ATA_DMA_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_request*)* @ata_promise_dmastop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_promise_dmastop(%struct.ata_request* %0) #0 {
  %2 = alloca %struct.ata_request*, align 8
  %3 = alloca %struct.ata_pci_controller*, align 8
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca i32, align 4
  store %struct.ata_request* %0, %struct.ata_request** %2, align 8
  %6 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %7 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %6, i32 0, i32 1
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @device_get_parent(i32 %8)
  %10 = call i8* @device_get_softc(i32 %9)
  %11 = bitcast i8* %10 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %11, %struct.ata_pci_controller** %3, align 8
  %12 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %13 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call i8* @device_get_softc(i32 %14)
  %16 = bitcast i8* %15 to %struct.ata_channel*
  store %struct.ata_channel* %16, %struct.ata_channel** %4, align 8
  %17 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %18 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @ATA_R_48BIT, align 4
  %21 = and i32 %19, %20
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %50

23:                                               ; preds = %1
  %24 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %25 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %28 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ATA_INB(i32 %29, i32 17)
  %31 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %32 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i64
  %36 = select i1 %34, i32 8, i32 2
  %37 = xor i32 %36, -1
  %38 = and i32 %30, %37
  %39 = call i32 @ATA_OUTB(i32 %26, i32 17, i32 %38)
  %40 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %41 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %44 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  %47 = zext i1 %46 to i64
  %48 = select i1 %46, i32 36, i32 32
  %49 = call i32 @ATA_OUTL(i32 %42, i32 %48, i32 0)
  br label %50

50:                                               ; preds = %23, %1
  %51 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %52 = load i32, i32* @ATA_BMSTAT_PORT, align 4
  %53 = call i32 @ATA_IDX_INB(%struct.ata_channel* %51, i32 %52)
  store i32 %53, i32* %5, align 4
  %54 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %55 = load i32, i32* @ATA_BMCMD_PORT, align 4
  %56 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %57 = load i32, i32* @ATA_BMCMD_PORT, align 4
  %58 = call i32 @ATA_IDX_INB(%struct.ata_channel* %56, i32 %57)
  %59 = load i32, i32* @ATA_BMCMD_START_STOP, align 4
  %60 = xor i32 %59, -1
  %61 = and i32 %58, %60
  %62 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %54, i32 %55, i32 %61)
  %63 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %64 = load i32, i32* @ATA_BMSTAT_PORT, align 4
  %65 = load i32, i32* @ATA_BMSTAT_INTERRUPT, align 4
  %66 = load i32, i32* @ATA_BMSTAT_ERROR, align 4
  %67 = or i32 %65, %66
  %68 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %63, i32 %64, i32 %67)
  %69 = load i32, i32* @ATA_DMA_ACTIVE, align 4
  %70 = xor i32 %69, -1
  %71 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %72 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %71, i32 0, i32 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = and i32 %74, %70
  store i32 %75, i32* %73, align 8
  %76 = load i32, i32* %5, align 4
  ret i32 %76
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ATA_OUTB(i32, i32, i32) #1

declare dso_local i32 @ATA_INB(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

declare dso_local i32 @ATA_IDX_OUTB(%struct.ata_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
