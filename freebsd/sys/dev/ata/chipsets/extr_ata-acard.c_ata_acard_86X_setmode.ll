; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-acard.c_ata_acard_86X_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-acard.c_ata_acard_86X_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_channel = type { i32 }

@ATA_WDMA2 = common dso_local global i32 0, align 4
@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_MODE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_acard_86X_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_acard_86X_setmode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_pci_controller*, align 8
  %9 = alloca %struct.ata_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @device_get_parent(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call i8* @device_get_softc(i32 %14)
  %16 = bitcast i8* %15 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %16, %struct.ata_pci_controller** %8, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i8* @device_get_softc(i32 %17)
  %19 = bitcast i8* %18 to %struct.ata_channel*
  store %struct.ata_channel* %19, %struct.ata_channel** %9, align 8
  %20 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %21 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 1
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %23, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %28 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @min(i32 %26, i32 %31)
  store i32 %32, i32* %6, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load i32, i32* @ATA_WDMA2, align 4
  %35 = icmp sge i32 %33, %34
  br i1 %35, label %36, label %68

36:                                               ; preds = %3
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @pci_read_config(i32 %37, i32 68, i32 2)
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = shl i32 %39, 2
  %41 = shl i32 15, %40
  %42 = xor i32 %41, -1
  %43 = load i32, i32* %11, align 4
  %44 = and i32 %43, %42
  store i32 %44, i32* %11, align 4
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ATA_UDMA0, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %36
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @ATA_MODE_MASK, align 4
  %51 = and i32 %49, %50
  %52 = add nsw i32 %51, 1
  %53 = load i32, i32* %10, align 4
  %54 = shl i32 %53, 2
  %55 = shl i32 %52, %54
  %56 = load i32, i32* %11, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %11, align 4
  br label %58

58:                                               ; preds = %48, %36
  %59 = load i32, i32* %7, align 4
  %60 = load i32, i32* %11, align 4
  %61 = call i32 @pci_write_config(i32 %59, i32 68, i32 %60, i32 2)
  %62 = load i32, i32* %7, align 4
  %63 = call i32 @pci_write_config(i32 %62, i32 74, i32 166, i32 1)
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 64, %65
  %67 = call i32 @pci_write_config(i32 %64, i32 %66, i32 49, i32 1)
  br label %68

68:                                               ; preds = %58, %3
  %69 = load i32, i32* %6, align 4
  ret i32 %69
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
