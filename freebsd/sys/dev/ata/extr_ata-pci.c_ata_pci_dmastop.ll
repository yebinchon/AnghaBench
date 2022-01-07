; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_dmastop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_dmastop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32 }
%struct.ata_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"dmastop\00", align 1
@ATA_BMCMD_PORT = common dso_local global i32 0, align 4
@ATA_BMCMD_START_STOP = common dso_local global i32 0, align 4
@ATA_DMA_ACTIVE = common dso_local global i32 0, align 4
@ATA_BMSTAT_PORT = common dso_local global i32 0, align 4
@ATA_BMSTAT_MASK = common dso_local global i32 0, align 4
@ATA_BMSTAT_INTERRUPT = common dso_local global i32 0, align 4
@ATA_BMSTAT_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_request*)* @ata_pci_dmastop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_pci_dmastop(%struct.ata_request* %0) #0 {
  %2 = alloca %struct.ata_request*, align 8
  %3 = alloca %struct.ata_channel*, align 8
  %4 = alloca i32, align 4
  store %struct.ata_request* %0, %struct.ata_request** %2, align 8
  %5 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %6 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call %struct.ata_channel* @device_get_softc(i32 %7)
  store %struct.ata_channel* %8, %struct.ata_channel** %3, align 8
  %9 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %10 = call i32 @ATA_DEBUG_RQ(%struct.ata_request* %9, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %12 = load i32, i32* @ATA_BMCMD_PORT, align 4
  %13 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %14 = load i32, i32* @ATA_BMCMD_PORT, align 4
  %15 = call i32 @ATA_IDX_INB(%struct.ata_channel* %13, i32 %14)
  %16 = load i32, i32* @ATA_BMCMD_START_STOP, align 4
  %17 = xor i32 %16, -1
  %18 = and i32 %15, %17
  %19 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %11, i32 %12, i32 %18)
  %20 = load i32, i32* @ATA_DMA_ACTIVE, align 4
  %21 = xor i32 %20, -1
  %22 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %23 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %21
  store i32 %26, i32* %24, align 4
  %27 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %28 = load i32, i32* @ATA_BMSTAT_PORT, align 4
  %29 = call i32 @ATA_IDX_INB(%struct.ata_channel* %27, i32 %28)
  %30 = load i32, i32* @ATA_BMSTAT_MASK, align 4
  %31 = and i32 %29, %30
  store i32 %31, i32* %4, align 4
  %32 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %33 = load i32, i32* @ATA_BMSTAT_PORT, align 4
  %34 = load i32, i32* @ATA_BMSTAT_INTERRUPT, align 4
  %35 = load i32, i32* @ATA_BMSTAT_ERROR, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %32, i32 %33, i32 %36)
  %38 = load i32, i32* %4, align 4
  ret i32 %38
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_DEBUG_RQ(%struct.ata_request*, i8*) #1

declare dso_local i32 @ATA_IDX_OUTB(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
