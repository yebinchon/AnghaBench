; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_dmareset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_dmareset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { %struct.TYPE_2__, %struct.ata_request* }
%struct.TYPE_2__ = type { i32 (%struct.ata_request*)*, i32 }
%struct.ata_request = type { i32 }

@ATA_BMCMD_PORT = common dso_local global i32 0, align 4
@ATA_BMCMD_START_STOP = common dso_local global i32 0, align 4
@ATA_DMA_ACTIVE = common dso_local global i32 0, align 4
@ATA_BMSTAT_PORT = common dso_local global i32 0, align 4
@ATA_BMSTAT_INTERRUPT = common dso_local global i32 0, align 4
@ATA_BMSTAT_ERROR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"DMA reset calling unload\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ata_pci_dmareset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_pci_dmareset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_channel*, align 8
  %4 = alloca %struct.ata_request*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load i32, i32* %2, align 4
  %6 = call %struct.ata_channel* @device_get_softc(i32 %5)
  store %struct.ata_channel* %6, %struct.ata_channel** %3, align 8
  %7 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %8 = load i32, i32* @ATA_BMCMD_PORT, align 4
  %9 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %10 = load i32, i32* @ATA_BMCMD_PORT, align 4
  %11 = call i32 @ATA_IDX_INB(%struct.ata_channel* %9, i32 %10)
  %12 = load i32, i32* @ATA_BMCMD_START_STOP, align 4
  %13 = xor i32 %12, -1
  %14 = and i32 %11, %13
  %15 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %7, i32 %8, i32 %14)
  %16 = load i32, i32* @ATA_DMA_ACTIVE, align 4
  %17 = xor i32 %16, -1
  %18 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %19 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = and i32 %21, %17
  store i32 %22, i32* %20, align 8
  %23 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %24 = load i32, i32* @ATA_BMSTAT_PORT, align 4
  %25 = load i32, i32* @ATA_BMSTAT_INTERRUPT, align 4
  %26 = load i32, i32* @ATA_BMSTAT_ERROR, align 4
  %27 = or i32 %25, %26
  %28 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %23, i32 %24, i32 %27)
  %29 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %30 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %29, i32 0, i32 1
  %31 = load %struct.ata_request*, %struct.ata_request** %30, align 8
  store %struct.ata_request* %31, %struct.ata_request** %4, align 8
  %32 = icmp ne %struct.ata_request* %31, null
  br i1 %32, label %33, label %42

33:                                               ; preds = %1
  %34 = load i32, i32* %2, align 4
  %35 = call i32 @device_printf(i32 %34, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %36 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %37 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 0
  %39 = load i32 (%struct.ata_request*)*, i32 (%struct.ata_request*)** %38, align 8
  %40 = load %struct.ata_request*, %struct.ata_request** %4, align 8
  %41 = call i32 %39(%struct.ata_request* %40)
  br label %42

42:                                               ; preds = %33, %1
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_IDX_OUTB(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

declare dso_local i32 @device_printf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
