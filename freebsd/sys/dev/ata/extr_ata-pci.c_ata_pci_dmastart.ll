; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_dmastart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_dmastart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ata_channel = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"dmastart\00", align 1
@ATA_BMSTAT_PORT = common dso_local global i32 0, align 4
@ATA_BMSTAT_INTERRUPT = common dso_local global i32 0, align 4
@ATA_BMSTAT_ERROR = common dso_local global i32 0, align 4
@ATA_BMDTP_PORT = common dso_local global i32 0, align 4
@ATA_DMA_ACTIVE = common dso_local global i32 0, align 4
@ATA_BMCMD_PORT = common dso_local global i32 0, align 4
@ATA_BMCMD_WRITE_READ = common dso_local global i32 0, align 4
@ATA_R_READ = common dso_local global i32 0, align 4
@ATA_BMCMD_START_STOP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_request*)* @ata_pci_dmastart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_pci_dmastart(%struct.ata_request* %0) #0 {
  %2 = alloca %struct.ata_request*, align 8
  %3 = alloca %struct.ata_channel*, align 8
  store %struct.ata_request* %0, %struct.ata_request** %2, align 8
  %4 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %5 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 8
  %7 = call %struct.ata_channel* @device_get_softc(i32 %6)
  store %struct.ata_channel* %7, %struct.ata_channel** %3, align 8
  %8 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %9 = call i32 @ATA_DEBUG_RQ(%struct.ata_request* %8, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %11 = load i32, i32* @ATA_BMSTAT_PORT, align 4
  %12 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %13 = load i32, i32* @ATA_BMSTAT_PORT, align 4
  %14 = call i32 @ATA_IDX_INB(%struct.ata_channel* %12, i32 %13)
  %15 = load i32, i32* @ATA_BMSTAT_INTERRUPT, align 4
  %16 = load i32, i32* @ATA_BMSTAT_ERROR, align 4
  %17 = or i32 %15, %16
  %18 = or i32 %14, %17
  %19 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %10, i32 %11, i32 %18)
  %20 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %21 = load i32, i32* @ATA_BMDTP_PORT, align 4
  %22 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %23 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %22, i32 0, i32 1
  %24 = load %struct.TYPE_3__*, %struct.TYPE_3__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ATA_IDX_OUTL(%struct.ata_channel* %20, i32 %21, i32 %26)
  %28 = load i32, i32* @ATA_DMA_ACTIVE, align 4
  %29 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %30 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = or i32 %32, %28
  store i32 %33, i32* %31, align 4
  %34 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %35 = load i32, i32* @ATA_BMCMD_PORT, align 4
  %36 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %37 = load i32, i32* @ATA_BMCMD_PORT, align 4
  %38 = call i32 @ATA_IDX_INB(%struct.ata_channel* %36, i32 %37)
  %39 = load i32, i32* @ATA_BMCMD_WRITE_READ, align 4
  %40 = xor i32 %39, -1
  %41 = and i32 %38, %40
  %42 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %43 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @ATA_R_READ, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %1
  %49 = load i32, i32* @ATA_BMCMD_WRITE_READ, align 4
  br label %51

50:                                               ; preds = %1
  br label %51

51:                                               ; preds = %50, %48
  %52 = phi i32 [ %49, %48 ], [ 0, %50 ]
  %53 = or i32 %41, %52
  %54 = load i32, i32* @ATA_BMCMD_START_STOP, align 4
  %55 = or i32 %53, %54
  %56 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %34, i32 %35, i32 %55)
  ret i32 0
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_DEBUG_RQ(%struct.ata_request*, i8*) #1

declare dso_local i32 @ATA_IDX_OUTB(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

declare dso_local i32 @ATA_IDX_OUTL(%struct.ata_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
