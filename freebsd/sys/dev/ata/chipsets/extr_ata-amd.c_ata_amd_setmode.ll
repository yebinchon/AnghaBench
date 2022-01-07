; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-amd.c_ata_amd_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-amd.c_ata_amd_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ata_channel = type { i32 }

@ata_amd_setmode.timings = internal constant [8 x i32] [i32 168, i32 101, i32 66, i32 34, i32 32, i32 168, i32 34, i32 32], align 16
@ata_amd_setmode.modes = internal constant [7 x i32] [i32 194, i32 193, i32 192, i32 196, i32 197, i32 198, i32 199], align 16
@AMD_CABLE = common dso_local global i32 0, align 4
@ata_dma_check_80pin = common dso_local global i64 0, align 8
@ATA_UDMA2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_MODE_MASK = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_amd_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_amd_setmode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_pci_controller*, align 8
  %9 = alloca %struct.ata_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @device_get_parent(i32 %13)
  store i32 %14, i32* %7, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call i8* @device_get_softc(i32 %15)
  %17 = bitcast i8* %16 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %17, %struct.ata_pci_controller** %8, align 8
  %18 = load i32, i32* %4, align 4
  %19 = call i8* @device_get_softc(i32 %18)
  %20 = bitcast i8* %19 to %struct.ata_channel*
  store %struct.ata_channel* %20, %struct.ata_channel** %9, align 8
  %21 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %22 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = shl i32 %23, 1
  %25 = load i32, i32* %5, align 4
  %26 = add nsw i32 %24, %25
  store i32 %26, i32* %10, align 4
  %27 = load i32, i32* %10, align 4
  %28 = sub nsw i32 83, %27
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %31 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @min(i32 %29, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %37 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* @AMD_CABLE, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %63

44:                                               ; preds = %3
  %45 = load i64, i64* @ata_dma_check_80pin, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %44
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ATA_UDMA2, align 4
  %50 = icmp sgt i32 %48, %49
  br i1 %50, label %51, label %62

51:                                               ; preds = %47
  %52 = load i32, i32* %7, align 4
  %53 = call i32 @pci_read_config(i32 %52, i32 66, i32 1)
  %54 = load i32, i32* %10, align 4
  %55 = shl i32 1, %54
  %56 = and i32 %53, %55
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %62, label %58

58:                                               ; preds = %51
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @ata_print_cable(i32 %59, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %61 = load i32, i32* @ATA_UDMA2, align 4
  store i32 %61, i32* %6, align 4
  br label %62

62:                                               ; preds = %58, %51, %47, %44
  br label %63

63:                                               ; preds = %62, %3
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @ATA_UDMA0, align 4
  %66 = icmp sge i32 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* %12, align 4
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @ATA_MODE_MASK, align 4
  %72 = and i32 %70, %71
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [7 x i32], [7 x i32]* @ata_amd_setmode.modes, i64 0, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @pci_write_config(i32 %68, i32 %69, i32 %75, i32 1)
  %77 = load i32, i32* @ATA_PIO4, align 4
  store i32 %77, i32* %11, align 4
  br label %83

78:                                               ; preds = %63
  %79 = load i32, i32* %7, align 4
  %80 = load i32, i32* %12, align 4
  %81 = call i32 @pci_write_config(i32 %79, i32 %80, i32 139, i32 1)
  %82 = load i32, i32* %6, align 4
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %78, %67
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* %12, align 4
  %86 = sub nsw i32 %85, 8
  %87 = load i32, i32* %11, align 4
  %88 = call i64 @ata_mode2idx(i32 %87)
  %89 = getelementptr inbounds [8 x i32], [8 x i32]* @ata_amd_setmode.timings, i64 0, i64 %88
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @pci_write_config(i32 %84, i32 %86, i32 %90, i32 1)
  %92 = load i32, i32* %6, align 4
  ret i32 %92
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @ata_print_cable(i32, i8*) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i64 @ata_mode2idx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
