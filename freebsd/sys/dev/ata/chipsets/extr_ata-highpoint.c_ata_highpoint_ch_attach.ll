; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-highpoint.c_ata_highpoint_ch_attach.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-highpoint.c_ata_highpoint_ch_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.ata_channel = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@ATA_ALWAYS_DMASTAT = common dso_local global i32 0, align 4
@ATA_CHECKS_CABLE = common dso_local global i32 0, align 4
@HPT_366 = common dso_local global i64 0, align 8
@ATA_NO_ATAPI_DMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_highpoint_ch_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_highpoint_ch_attach(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_pci_controller*, align 8
  %5 = alloca %struct.ata_channel*, align 8
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @device_get_parent(i32 %6)
  %8 = call i8* @device_get_softc(i32 %7)
  %9 = bitcast i8* %8 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %9, %struct.ata_pci_controller** %4, align 8
  %10 = load i32, i32* %3, align 4
  %11 = call i8* @device_get_softc(i32 %10)
  %12 = bitcast i8* %11 to %struct.ata_channel*
  store %struct.ata_channel* %12, %struct.ata_channel** %5, align 8
  %13 = load i32, i32* %3, align 4
  %14 = call i64 @ata_pci_ch_attach(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* @ENXIO, align 4
  store i32 %17, i32* %2, align 4
  br label %43

18:                                               ; preds = %1
  %19 = load i32, i32* @ATA_ALWAYS_DMASTAT, align 4
  %20 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %21 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = or i32 %22, %19
  store i32 %23, i32* %21, align 4
  %24 = load i32, i32* @ATA_CHECKS_CABLE, align 4
  %25 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %26 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %4, align 8
  %30 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @HPT_366, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %42

36:                                               ; preds = %18
  %37 = load i32, i32* @ATA_NO_ATAPI_DMA, align 4
  %38 = load %struct.ata_channel*, %struct.ata_channel** %5, align 8
  %39 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %36, %18
  store i32 0, i32* %2, align 4
  br label %43

43:                                               ; preds = %42, %16
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i64 @ata_pci_ch_attach(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
