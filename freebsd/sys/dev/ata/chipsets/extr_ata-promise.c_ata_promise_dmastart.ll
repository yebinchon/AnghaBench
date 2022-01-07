; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_dmastart.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_dmastart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_request = type { i32, i32, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ata_pci_controller = type { i32 }
%struct.ata_channel = type { %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32 }

@ATA_R_48BIT = common dso_local global i32 0, align 4
@ATA_R_READ = common dso_local global i32 0, align 4
@ATA_BMSTAT_PORT = common dso_local global i32 0, align 4
@ATA_BMSTAT_INTERRUPT = common dso_local global i32 0, align 4
@ATA_BMSTAT_ERROR = common dso_local global i32 0, align 4
@ATA_BMDTP_PORT = common dso_local global i32 0, align 4
@ATA_BMCMD_PORT = common dso_local global i32 0, align 4
@ATA_BMCMD_WRITE_READ = common dso_local global i32 0, align 4
@ATA_BMCMD_START_STOP = common dso_local global i32 0, align 4
@ATA_DMA_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ata_request*)* @ata_promise_dmastart to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_promise_dmastart(%struct.ata_request* %0) #0 {
  %2 = alloca %struct.ata_request*, align 8
  %3 = alloca %struct.ata_pci_controller*, align 8
  %4 = alloca %struct.ata_channel*, align 8
  store %struct.ata_request* %0, %struct.ata_request** %2, align 8
  %5 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %6 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @device_get_parent(i32 %7)
  %9 = call i8* @device_get_softc(i32 %8)
  %10 = bitcast i8* %9 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %10, %struct.ata_pci_controller** %3, align 8
  %11 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %12 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = call i8* @device_get_softc(i32 %13)
  %15 = bitcast i8* %14 to %struct.ata_channel*
  store %struct.ata_channel* %15, %struct.ata_channel** %4, align 8
  %16 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %17 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @ATA_R_48BIT, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %61

22:                                               ; preds = %1
  %23 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %24 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %27 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ATA_INB(i32 %28, i32 17)
  %30 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %31 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 8, i32 2
  %36 = or i32 %29, %35
  %37 = call i32 @ATA_OUTB(i32 %25, i32 17, i32 %36)
  %38 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %3, align 8
  %39 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %42 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 36, i32 32
  %47 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %48 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @ATA_R_READ, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 83886080, i32 100663296
  %55 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %56 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = ashr i32 %57, 1
  %59 = or i32 %54, %58
  %60 = call i32 @ATA_OUTL(i32 %40, i32 %46, i32 %59)
  br label %61

61:                                               ; preds = %22, %1
  %62 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %63 = load i32, i32* @ATA_BMSTAT_PORT, align 4
  %64 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %65 = load i32, i32* @ATA_BMSTAT_PORT, align 4
  %66 = call i32 @ATA_IDX_INB(%struct.ata_channel* %64, i32 %65)
  %67 = load i32, i32* @ATA_BMSTAT_INTERRUPT, align 4
  %68 = load i32, i32* @ATA_BMSTAT_ERROR, align 4
  %69 = or i32 %67, %68
  %70 = or i32 %66, %69
  %71 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %62, i32 %63, i32 %70)
  %72 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %73 = load i32, i32* @ATA_BMDTP_PORT, align 4
  %74 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %75 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %74, i32 0, i32 2
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @ATA_IDX_OUTL(%struct.ata_channel* %72, i32 %73, i32 %78)
  %80 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %81 = load i32, i32* @ATA_BMCMD_PORT, align 4
  %82 = load %struct.ata_request*, %struct.ata_request** %2, align 8
  %83 = getelementptr inbounds %struct.ata_request, %struct.ata_request* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @ATA_R_READ, align 4
  %86 = and i32 %84, %85
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %61
  %89 = load i32, i32* @ATA_BMCMD_WRITE_READ, align 4
  br label %91

90:                                               ; preds = %61
  br label %91

91:                                               ; preds = %90, %88
  %92 = phi i32 [ %89, %88 ], [ 0, %90 ]
  %93 = load i32, i32* @ATA_BMCMD_START_STOP, align 4
  %94 = or i32 %92, %93
  %95 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %80, i32 %81, i32 %94)
  %96 = load i32, i32* @ATA_DMA_ACTIVE, align 4
  %97 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %98 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = or i32 %100, %96
  store i32 %101, i32* %99, align 8
  ret i32 0
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ATA_OUTB(i32, i32, i32) #1

declare dso_local i32 @ATA_INB(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ATA_IDX_OUTB(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

declare dso_local i32 @ATA_IDX_OUTL(%struct.ata_channel*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
