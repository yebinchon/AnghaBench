; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_new_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_new_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_channel = type { i32 }

@VIABAR = common dso_local global i32 0, align 4
@ata_via_new_setmode.pio_timings = internal constant [5 x i32] [i32 168, i32 101, i32 101, i32 50, i32 32], align 16
@ata_via_new_setmode.dma_timings = internal constant [7 x i32] [i32 238, i32 232, i32 230, i32 228, i32 226, i32 225, i32 224], align 16
@ATA_WDMA0 = common dso_local global i32 0, align 4
@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@ATA_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_via_new_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_via_new_setmode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_pci_controller*, align 8
  %9 = alloca %struct.ata_channel*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i8* @device_get_softc(i32 %13)
  %15 = bitcast i8* %14 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %15, %struct.ata_pci_controller** %8, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i8* @device_get_softc(i32 %16)
  %18 = bitcast i8* %17 to %struct.ata_channel*
  store %struct.ata_channel* %18, %struct.ata_channel** %9, align 8
  %19 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %20 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* @VIABAR, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %65

27:                                               ; preds = %3
  %28 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %29 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp sgt i32 %30, 1
  br i1 %31, label %32, label %65

32:                                               ; preds = %27
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ATA_WDMA0, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ATA_UDMA0, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %36
  %41 = load i32, i32* @ATA_PIO4, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %40, %36, %32
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @ATA_UDMA0, align 4
  %45 = icmp sge i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i32, i32* %7, align 4
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ATA_MODE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [7 x i32], [7 x i32]* @ata_via_new_setmode.dma_timings, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pci_write_config(i32 %47, i32 179, i32 %53, i32 1)
  %55 = load i32, i32* @ATA_PIO4, align 4
  store i32 %55, i32* %10, align 4
  br label %58

56:                                               ; preds = %42
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %10, align 4
  br label %58

58:                                               ; preds = %56, %46
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %10, align 4
  %61 = call i64 @ata_mode2idx(i32 %60)
  %62 = getelementptr inbounds [5 x i32], [5 x i32]* @ata_via_new_setmode.pio_timings, i64 0, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @pci_write_config(i32 %59, i32 171, i32 %63, i32 1)
  br label %70

65:                                               ; preds = %27, %3
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @ata_sata_setmode(i32 %66, i32 %67, i32 %68)
  store i32 %69, i32* %6, align 4
  br label %70

70:                                               ; preds = %65, %58
  %71 = load i32, i32* %6, align 4
  ret i32 %71
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i64 @ata_mode2idx(i32) #1

declare dso_local i32 @ata_sata_setmode(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
