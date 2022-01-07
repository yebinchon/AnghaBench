; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-marvell.c_ata_marvell_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-marvell.c_ata_marvell_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_channel = type { i32 }

@ata_dma_check_80pin = common dso_local global i64 0, align 8
@ATA_UDMA2 = common dso_local global i32 0, align 4
@ATA_BMDEVSPEC_0 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_marvell_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_marvell_setmode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_pci_controller*, align 8
  %8 = alloca %struct.ata_channel*, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @device_get_parent(i32 %9)
  %11 = call i8* @device_get_softc(i32 %10)
  %12 = bitcast i8* %11 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %12, %struct.ata_pci_controller** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i8* @device_get_softc(i32 %13)
  %15 = bitcast i8* %14 to %struct.ata_channel*
  store %struct.ata_channel* %15, %struct.ata_channel** %8, align 8
  %16 = load i32, i32* %6, align 4
  %17 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %7, align 8
  %18 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @min(i32 %16, i32 %21)
  store i32 %22, i32* %6, align 4
  %23 = load i64, i64* @ata_dma_check_80pin, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %39

25:                                               ; preds = %3
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* @ATA_UDMA2, align 4
  %28 = icmp sgt i32 %26, %27
  br i1 %28, label %29, label %39

29:                                               ; preds = %25
  %30 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %31 = load i32, i32* @ATA_BMDEVSPEC_0, align 4
  %32 = call i32 @ATA_IDX_INB(%struct.ata_channel* %30, i32 %31)
  %33 = and i32 %32, 1
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %29
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @ata_print_cable(i32 %36, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %38 = load i32, i32* @ATA_UDMA2, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %29, %25, %3
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

declare dso_local i32 @ata_print_cable(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
