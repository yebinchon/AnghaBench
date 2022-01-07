; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/extr_ata-pci.c_ata_pci_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32 }
%struct.ata_channel = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@dumping = common dso_local global i64 0, align 8
@ATA_ALWAYS_DMASTAT = common dso_local global i32 0, align 4
@ATA_DMA_ACTIVE = common dso_local global i32 0, align 4
@ATA_BMSTAT_PORT = common dso_local global i32 0, align 4
@ATA_BMSTAT_MASK = common dso_local global i32 0, align 4
@ATA_BMSTAT_INTERRUPT = common dso_local global i32 0, align 4
@ATA_BMSTAT_ERROR = common dso_local global i32 0, align 4
@ATA_ALTSTAT = common dso_local global i32 0, align 4
@ATA_S_BUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ata_pci_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca %struct.ata_channel*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %7 = load i32, i32* %3, align 4
  %8 = call i32 @device_get_parent(i32 %7)
  %9 = call i8* @device_get_softc(i32 %8)
  %10 = bitcast i8* %9 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %10, %struct.ata_pci_controller** %4, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i8* @device_get_softc(i32 %11)
  %13 = bitcast i8* %12 to %struct.ata_channel*
  store %struct.ata_channel* %13, %struct.ata_channel** %5, align 8
  %14 = load i64, i64* @dumping, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %21, label %16

16:                                               ; preds = %1
  %17 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %18 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %56, label %21

21:                                               ; preds = %16, %1
  %22 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %23 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @ATA_ALWAYS_DMASTAT, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %36, label %28

28:                                               ; preds = %21
  %29 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %30 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @ATA_DMA_ACTIVE, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %56

36:                                               ; preds = %28, %21
  %37 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %38 = load i32, i32* @ATA_BMSTAT_PORT, align 4
  %39 = call i32 @ATA_IDX_INB(%struct.ata_channel* %37, i32 %38)
  %40 = load i32, i32* @ATA_BMSTAT_MASK, align 4
  %41 = and i32 %39, %40
  store i32 %41, i32* %6, align 4
  %42 = load i32, i32* %6, align 4
  %43 = load i32, i32* @ATA_BMSTAT_INTERRUPT, align 4
  %44 = and i32 %42, %43
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %36
  store i32 0, i32* %2, align 4
  br label %74

47:                                               ; preds = %36
  %48 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %49 = load i32, i32* @ATA_BMSTAT_PORT, align 4
  %50 = load i32, i32* %6, align 4
  %51 = load i32, i32* @ATA_BMSTAT_ERROR, align 4
  %52 = xor i32 %51, -1
  %53 = and i32 %50, %52
  %54 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %48, i32 %49, i32 %53)
  %55 = call i32 @DELAY(i32 1)
  br label %56

56:                                               ; preds = %47, %28, %16
  %57 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %58 = load i32, i32* @ATA_ALTSTAT, align 4
  %59 = call i32 @ATA_IDX_INB(%struct.ata_channel* %57, i32 %58)
  %60 = load i32, i32* @ATA_S_BUSY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %56
  %64 = call i32 @DELAY(i32 100)
  %65 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %66 = load i32, i32* @ATA_ALTSTAT, align 4
  %67 = call i32 @ATA_IDX_INB(%struct.ata_channel* %65, i32 %66)
  %68 = load i32, i32* @ATA_S_BUSY, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %63
  store i32 0, i32* %2, align 4
  br label %74

72:                                               ; preds = %63
  br label %73

73:                                               ; preds = %72, %56
  store i32 1, i32* %2, align 4
  br label %74

74:                                               ; preds = %73, %71, %46
  %75 = load i32, i32* %2, align 4
  ret i32 %75
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

declare dso_local i32 @ATA_IDX_OUTB(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
