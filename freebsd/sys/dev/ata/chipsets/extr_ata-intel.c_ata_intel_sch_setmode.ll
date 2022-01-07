; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_sch_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_sch_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_MODE_MASK = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@ATA_WDMA0 = common dso_local global i32 0, align 4
@ATA_PIO0 = common dso_local global i32 0, align 4
@ATA_WDMA1 = common dso_local global i32 0, align 4
@ATA_PIO3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_intel_sch_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_intel_sch_setmode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_pci_controller*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %12 = load i32, i32* %4, align 4
  %13 = call i32 @device_get_parent(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.ata_pci_controller* @device_get_softc(i32 %14)
  store %struct.ata_pci_controller* %15, %struct.ata_pci_controller** %8, align 8
  %16 = load i32, i32* %5, align 4
  %17 = shl i32 %16, 2
  %18 = add nsw i32 128, %17
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %9, align 4
  %21 = call i32 @pci_read_config(i32 %19, i32 %20, i32 4)
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %24 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @min(i32 %22, i32 %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32, i32* @ATA_UDMA0, align 4
  %31 = icmp sge i32 %29, %30
  br i1 %31, label %32, label %44

32:                                               ; preds = %3
  %33 = load i32, i32* %10, align 4
  %34 = or i32 %33, -2147483648
  store i32 %34, i32* %10, align 4
  %35 = load i32, i32* %10, align 4
  %36 = and i32 %35, -458753
  store i32 %36, i32* %10, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ATA_MODE_MASK, align 4
  %39 = and i32 %37, %38
  %40 = shl i32 %39, 16
  %41 = load i32, i32* %10, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %10, align 4
  %43 = load i32, i32* @ATA_PIO4, align 4
  store i32 %43, i32* %11, align 4
  br label %79

44:                                               ; preds = %3
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @ATA_WDMA0, align 4
  %47 = icmp sge i32 %45, %46
  br i1 %47, label %48, label %76

48:                                               ; preds = %44
  %49 = load i32, i32* %10, align 4
  %50 = and i32 %49, 2147483647
  store i32 %50, i32* %10, align 4
  %51 = load i32, i32* %10, align 4
  %52 = and i32 %51, -769
  store i32 %52, i32* %10, align 4
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @ATA_MODE_MASK, align 4
  %55 = and i32 %53, %54
  %56 = shl i32 %55, 8
  %57 = load i32, i32* %10, align 4
  %58 = or i32 %57, %56
  store i32 %58, i32* %10, align 4
  %59 = load i32, i32* %6, align 4
  %60 = load i32, i32* @ATA_WDMA0, align 4
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %62, label %64

62:                                               ; preds = %48
  %63 = load i32, i32* @ATA_PIO0, align 4
  br label %74

64:                                               ; preds = %48
  %65 = load i32, i32* %6, align 4
  %66 = load i32, i32* @ATA_WDMA1, align 4
  %67 = icmp eq i32 %65, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %64
  %69 = load i32, i32* @ATA_PIO3, align 4
  br label %72

70:                                               ; preds = %64
  %71 = load i32, i32* @ATA_PIO4, align 4
  br label %72

72:                                               ; preds = %70, %68
  %73 = phi i32 [ %69, %68 ], [ %71, %70 ]
  br label %74

74:                                               ; preds = %72, %62
  %75 = phi i32 [ %63, %62 ], [ %73, %72 ]
  store i32 %75, i32* %11, align 4
  br label %78

76:                                               ; preds = %44
  %77 = load i32, i32* %6, align 4
  store i32 %77, i32* %11, align 4
  br label %78

78:                                               ; preds = %76, %74
  br label %79

79:                                               ; preds = %78, %32
  %80 = load i32, i32* %10, align 4
  %81 = and i32 %80, -8
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %11, align 4
  %83 = and i32 %82, 7
  %84 = load i32, i32* %10, align 4
  %85 = or i32 %84, %83
  store i32 %85, i32* %10, align 4
  %86 = load i32, i32* %7, align 4
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @pci_write_config(i32 %86, i32 %87, i32 %88, i32 4)
  %90 = load i32, i32* %6, align 4
  ret i32 %90
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
