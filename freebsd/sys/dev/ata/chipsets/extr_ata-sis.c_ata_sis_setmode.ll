; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-sis.c_ata_sis_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-sis.c_ata_sis_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ata_channel = type { i32 }

@ata_dma_check_80pin = common dso_local global i64 0, align 8
@ATA_UDMA2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@ata_sis_setmode.timings = internal constant [15 x i32] [i32 673615880, i32 203841544, i32 69611528, i32 201994248, i32 84488200, i32 572088328, i32 201994248, i32 84488200, i32 84490748, i32 84489900, i32 84489340, i32 84488796, i32 84488764, i32 84488748, i32 84488732], align 16
@ata_sis_setmode.timings.1 = internal constant [15 x i32] [i32 203, i32 103, i32 68, i32 51, i32 49, i32 68, i32 51, i32 49, i32 36657, i32 35377, i32 34609, i32 34097, i32 33585, i32 33329, i32 33073], align 16
@ata_sis_setmode.timings.2 = internal constant [14 x i32] [i32 203, i32 103, i32 68, i32 51, i32 49, i32 68, i32 51, i32 49, i32 35633, i32 34609, i32 34097, i32 33841, i32 33329, i32 33073], align 16
@ata_sis_setmode.timings.3 = internal constant [14 x i32] [i32 3083, i32 1543, i32 1028, i32 771, i32 769, i32 1028, i32 771, i32 769, i32 62209, i32 54017, i32 45825, i32 41729, i32 37633, i32 33537], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_sis_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_sis_setmode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_pci_controller*, align 8
  %9 = alloca %struct.ata_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @device_get_parent(i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = call i8* @device_get_softc(i32 %17)
  %19 = bitcast i8* %18 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %19, %struct.ata_pci_controller** %8, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i8* @device_get_softc(i32 %20)
  %22 = bitcast i8* %21 to %struct.ata_channel*
  store %struct.ata_channel* %22, %struct.ata_channel** %9, align 8
  %23 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %24 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = shl i32 %25, 1
  %27 = load i32, i32* %5, align 4
  %28 = add nsw i32 %26, %27
  store i32 %28, i32* %10, align 4
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
  %41 = icmp eq i32 %40, 131
  br i1 %41, label %42, label %65

42:                                               ; preds = %3
  %43 = load i64, i64* @ata_dma_check_80pin, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %64

45:                                               ; preds = %42
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ATA_UDMA2, align 4
  %48 = icmp sgt i32 %46, %47
  br i1 %48, label %49, label %64

49:                                               ; preds = %45
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %52 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  %55 = zext i1 %54 to i64
  %56 = select i1 %54, i32 82, i32 80
  %57 = call i32 @pci_read_config(i32 %50, i32 %56, i32 2)
  %58 = and i32 %57, 32768
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %49
  %61 = load i32, i32* %4, align 4
  %62 = call i32 @ata_print_cable(i32 %61, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %63 = load i32, i32* @ATA_UDMA2, align 4
  store i32 %63, i32* %6, align 4
  br label %64

64:                                               ; preds = %60, %49, %45, %42
  br label %88

65:                                               ; preds = %3
  %66 = load i64, i64* @ata_dma_check_80pin, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @ATA_UDMA2, align 4
  %71 = icmp sgt i32 %69, %70
  br i1 %71, label %72, label %87

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  %74 = call i32 @pci_read_config(i32 %73, i32 72, i32 1)
  %75 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %76 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = icmp ne i32 %77, 0
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 32, i32 16
  %81 = and i32 %74, %80
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %72
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @ata_print_cable(i32 %84, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %86 = load i32, i32* @ATA_UDMA2, align 4
  store i32 %86, i32* %6, align 4
  br label %87

87:                                               ; preds = %83, %72, %68, %65
  br label %88

88:                                               ; preds = %87, %64
  %89 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %90 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %89, i32 0, i32 0
  %91 = load %struct.TYPE_2__*, %struct.TYPE_2__** %90, align 8
  %92 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  switch i32 %93, label %144 [
    i32 131, label %94
    i32 130, label %111
    i32 133, label %122
    i32 132, label %133
    i32 128, label %133
    i32 129, label %133
  ]

94:                                               ; preds = %88
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @pci_read_config(i32 %95, i32 87, i32 1)
  %97 = and i32 %96, 64
  %98 = icmp ne i32 %97, 0
  %99 = zext i1 %98 to i64
  %100 = select i1 %98, i32 112, i32 64
  %101 = load i32, i32* %10, align 4
  %102 = shl i32 %101, 2
  %103 = add nsw i32 %100, %102
  store i32 %103, i32* %11, align 4
  %104 = load i32, i32* %7, align 4
  %105 = load i32, i32* %11, align 4
  %106 = load i32, i32* %6, align 4
  %107 = call i64 @ata_mode2idx(i32 %106)
  %108 = getelementptr inbounds [15 x i32], [15 x i32]* @ata_sis_setmode.timings, i64 0, i64 %107
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @pci_write_config(i32 %104, i32 %105, i32 %109, i32 4)
  br label %144

111:                                              ; preds = %88
  %112 = load i32, i32* %10, align 4
  %113 = shl i32 %112, 1
  %114 = add nsw i32 64, %113
  store i32 %114, i32* %12, align 4
  %115 = load i32, i32* %7, align 4
  %116 = load i32, i32* %12, align 4
  %117 = load i32, i32* %6, align 4
  %118 = call i64 @ata_mode2idx(i32 %117)
  %119 = getelementptr inbounds [15 x i32], [15 x i32]* @ata_sis_setmode.timings.1, i64 0, i64 %118
  %120 = load i32, i32* %119, align 4
  %121 = call i32 @pci_write_config(i32 %115, i32 %116, i32 %120, i32 2)
  br label %144

122:                                              ; preds = %88
  %123 = load i32, i32* %10, align 4
  %124 = shl i32 %123, 1
  %125 = add nsw i32 64, %124
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %7, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %6, align 4
  %129 = call i64 @ata_mode2idx(i32 %128)
  %130 = getelementptr inbounds [14 x i32], [14 x i32]* @ata_sis_setmode.timings.2, i64 0, i64 %129
  %131 = load i32, i32* %130, align 4
  %132 = call i32 @pci_write_config(i32 %126, i32 %127, i32 %131, i32 2)
  br label %144

133:                                              ; preds = %88, %88, %88
  %134 = load i32, i32* %10, align 4
  %135 = shl i32 %134, 1
  %136 = add nsw i32 64, %135
  store i32 %136, i32* %14, align 4
  %137 = load i32, i32* %7, align 4
  %138 = load i32, i32* %14, align 4
  %139 = load i32, i32* %6, align 4
  %140 = call i64 @ata_mode2idx(i32 %139)
  %141 = getelementptr inbounds [14 x i32], [14 x i32]* @ata_sis_setmode.timings.3, i64 0, i64 %140
  %142 = load i32, i32* %141, align 4
  %143 = call i32 @pci_write_config(i32 %137, i32 %138, i32 %142, i32 2)
  br label %144

144:                                              ; preds = %88, %133, %122, %111, %94
  %145 = load i32, i32* %6, align 4
  ret i32 %145
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
