; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-acerlabs.c_ata_ali_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-acerlabs.c_ata_ali_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.ata_channel = type { i32, i32, i32 }

@ata_ali_setmode.piotimings = internal constant [8 x i32] [i32 7143427, i32 5767170, i32 4456449, i32 3342337, i32 3211265, i32 7143427, i32 3342337, i32 3211265], align 16
@ata_ali_setmode.udma = internal constant [7 x i32] [i32 12, i32 11, i32 10, i32 9, i32 8, i32 15, i32 13], align 16
@ALI_NEW = common dso_local global i32 0, align 4
@ata_dma_check_80pin = common dso_local global i64 0, align 8
@ATA_UDMA2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@ALI_OLD = common dso_local global i32 0, align 4
@ATA_ATAPI_DMA_RO = common dso_local global i32 0, align 4
@ATA_ATAPI_MASTER = common dso_local global i32 0, align 4
@ATA_ATAPI_SLAVE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"two atapi devices on this channel, no DMA\0A\00", align 1
@ATA_PIO_MAX = common dso_local global i32 0, align 4
@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_MODE_MASK = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_ali_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_ali_setmode(i32 %0, i32 %1, i32 %2) #0 {
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
  %27 = load i32, i32* %6, align 4
  %28 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %29 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %28, i32 0, i32 0
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @min(i32 %27, i32 %32)
  store i32 %33, i32* %6, align 4
  %34 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %35 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ALI_NEW, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %70

42:                                               ; preds = %3
  %43 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %44 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %43, i32 0, i32 0
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp slt i32 %47, 199
  br i1 %48, label %49, label %70

49:                                               ; preds = %42
  %50 = load i64, i64* @ata_dma_check_80pin, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %69

52:                                               ; preds = %49
  %53 = load i32, i32* %6, align 4
  %54 = load i32, i32* @ATA_UDMA2, align 4
  %55 = icmp sgt i32 %53, %54
  br i1 %55, label %56, label %69

56:                                               ; preds = %52
  %57 = load i32, i32* %7, align 4
  %58 = call i32 @pci_read_config(i32 %57, i32 74, i32 1)
  %59 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %60 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 1, %61
  %63 = and i32 %58, %62
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %56
  %66 = load i32, i32* %4, align 4
  %67 = call i32 @ata_print_cable(i32 %66, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %68 = load i32, i32* @ATA_UDMA2, align 4
  store i32 %68, i32* %6, align 4
  br label %69

69:                                               ; preds = %65, %56, %52, %49
  br label %70

70:                                               ; preds = %69, %42, %3
  %71 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %72 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %71, i32 0, i32 0
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @ALI_OLD, align 4
  %77 = and i32 %75, %76
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %105

79:                                               ; preds = %70
  %80 = load i32, i32* @ATA_ATAPI_DMA_RO, align 4
  %81 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %82 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = or i32 %83, %80
  store i32 %84, i32* %82, align 4
  %85 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %86 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* @ATA_ATAPI_MASTER, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %104

91:                                               ; preds = %79
  %92 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %93 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* @ATA_ATAPI_SLAVE, align 4
  %96 = and i32 %94, %95
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %104

98:                                               ; preds = %91
  %99 = load i32, i32* %4, align 4
  %100 = call i32 @device_printf(i32 %99, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* @ATA_PIO_MAX, align 4
  %103 = call i32 @min(i32 %101, i32 %102)
  store i32 %103, i32* %6, align 4
  br label %104

104:                                              ; preds = %98, %91, %79
  br label %105

105:                                              ; preds = %104, %70
  %106 = load i32, i32* %7, align 4
  %107 = call i32 @pci_read_config(i32 %106, i32 84, i32 4)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %6, align 4
  %109 = load i32, i32* @ATA_UDMA0, align 4
  %110 = icmp sge i32 %108, %109
  br i1 %110, label %111, label %132

111:                                              ; preds = %105
  %112 = load i32, i32* %10, align 4
  %113 = shl i32 %112, 2
  %114 = shl i32 983055, %113
  %115 = xor i32 %114, -1
  %116 = load i32, i32* %12, align 4
  %117 = and i32 %116, %115
  store i32 %117, i32* %12, align 4
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @ATA_MODE_MASK, align 4
  %120 = and i32 %118, %119
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [7 x i32], [7 x i32]* @ata_ali_setmode.udma, i64 0, i64 %121
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 16
  %125 = or i32 %124, 5
  %126 = load i32, i32* %10, align 4
  %127 = shl i32 %126, 2
  %128 = shl i32 %125, %127
  %129 = load i32, i32* %12, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %12, align 4
  %131 = load i32, i32* @ATA_PIO4, align 4
  store i32 %131, i32* %11, align 4
  br label %140

132:                                              ; preds = %105
  %133 = load i32, i32* %10, align 4
  %134 = shl i32 %133, 2
  %135 = shl i32 524303, %134
  %136 = xor i32 %135, -1
  %137 = load i32, i32* %12, align 4
  %138 = and i32 %137, %136
  store i32 %138, i32* %12, align 4
  %139 = load i32, i32* %6, align 4
  store i32 %139, i32* %11, align 4
  br label %140

140:                                              ; preds = %132, %111
  %141 = load i32, i32* %7, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i32 @pci_write_config(i32 %141, i32 84, i32 %142, i32 4)
  %144 = load i32, i32* %7, align 4
  %145 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %146 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = shl i32 %147, 2
  %149 = add nsw i32 88, %148
  %150 = load i32, i32* %11, align 4
  %151 = call i64 @ata_mode2idx(i32 %150)
  %152 = getelementptr inbounds [8 x i32], [8 x i32]* @ata_ali_setmode.piotimings, i64 0, i64 %151
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @pci_write_config(i32 %144, i32 %149, i32 %153, i32 4)
  %155 = load i32, i32* %6, align 4
  ret i32 %155
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @ata_print_cable(i32, i8*) #1

declare dso_local i32 @device_printf(i32, i8*) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i64 @ata_mode2idx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
