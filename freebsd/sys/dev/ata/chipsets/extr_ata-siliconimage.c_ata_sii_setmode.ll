; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-siliconimage.c_ata_sii_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-siliconimage.c_ata_sii_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ata_channel = type { i32 }

@ata_sii_setmode.piotimings = internal constant [5 x i32] [i32 12938, i32 8835, i32 4356, i32 4291, i32 4289], align 16
@ata_sii_setmode.dmatimings = internal constant [3 x i32] [i32 8712, i32 4290, i32 4289], align 4
@ata_sii_setmode.udmatimings = internal constant [7 x i32] [i32 15, i32 11, i32 7, i32 5, i32 3, i32 2, i32 1], align 16
@SII_SETCLK = common dso_local global i32 0, align 4
@ata_dma_check_80pin = common dso_local global i64 0, align 8
@ATA_UDMA2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_MODE_MASK = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@ATA_WDMA0 = common dso_local global i32 0, align 4
@ATA_PIO0 = common dso_local global i32 0, align 4
@ATA_WDMA1 = common dso_local global i32 0, align 4
@ATA_PIO3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_sii_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_sii_setmode(i32 %0, i32 %1, i32 %2) #0 {
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
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %18 = load i32, i32* %4, align 4
  %19 = call i32 @device_get_parent(i32 %18)
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = call i8* @device_get_softc(i32 %20)
  %22 = bitcast i8* %21 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %22, %struct.ata_pci_controller** %8, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i8* @device_get_softc(i32 %23)
  %25 = bitcast i8* %24 to %struct.ata_channel*
  store %struct.ata_channel* %25, %struct.ata_channel** %9, align 8
  %26 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %27 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = shl i32 %28, 4
  %30 = load i32, i32* %5, align 4
  %31 = shl i32 %30, 1
  %32 = add nsw i32 %29, %31
  store i32 %32, i32* %10, align 4
  %33 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %34 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  %37 = zext i1 %36 to i64
  %38 = select i1 %36, i32 132, i32 128
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %5, align 4
  %40 = shl i32 %39, 2
  %41 = shl i32 3, %40
  store i32 %41, i32* %12, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* %11, align 4
  %44 = call i32 @pci_read_config(i32 %42, i32 %43, i32 1)
  %45 = load i32, i32* %12, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 %44, %46
  store i32 %47, i32* %13, align 4
  %48 = load i32, i32* %10, align 4
  %49 = add nsw i32 164, %48
  store i32 %49, i32* %15, align 4
  %50 = load i32, i32* %10, align 4
  %51 = add nsw i32 168, %50
  store i32 %51, i32* %16, align 4
  %52 = load i32, i32* %10, align 4
  %53 = add nsw i32 172, %52
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %56 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %55, i32 0, i32 0
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @min(i32 %54, i32 %59)
  store i32 %60, i32* %6, align 4
  %61 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %62 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @SII_SETCLK, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %92

69:                                               ; preds = %3
  %70 = load i64, i64* @ata_dma_check_80pin, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %91

72:                                               ; preds = %69
  %73 = load i32, i32* %6, align 4
  %74 = load i32, i32* @ATA_UDMA2, align 4
  %75 = icmp sgt i32 %73, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %72
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @pci_read_config(i32 %77, i32 121, i32 1)
  %79 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %80 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  %83 = zext i1 %82 to i64
  %84 = select i1 %82, i32 2, i32 1
  %85 = and i32 %78, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %91

87:                                               ; preds = %76
  %88 = load i32, i32* %4, align 4
  %89 = call i32 @ata_print_cable(i32 %88, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %90 = load i32, i32* @ATA_UDMA2, align 4
  store i32 %90, i32* %6, align 4
  br label %91

91:                                               ; preds = %87, %76, %72, %69
  br label %92

92:                                               ; preds = %91, %3
  %93 = load i32, i32* %6, align 4
  %94 = load i32, i32* @ATA_UDMA0, align 4
  %95 = icmp sge i32 %93, %94
  br i1 %95, label %96, label %120

96:                                               ; preds = %92
  %97 = load i32, i32* %7, align 4
  %98 = load i32, i32* %11, align 4
  %99 = load i32, i32* %13, align 4
  %100 = load i32, i32* %5, align 4
  %101 = shl i32 %100, 2
  %102 = shl i32 3, %101
  %103 = or i32 %99, %102
  %104 = call i32 @pci_write_config(i32 %97, i32 %98, i32 %103, i32 1)
  %105 = load i32, i32* %7, align 4
  %106 = load i32, i32* %17, align 4
  %107 = load i32, i32* %7, align 4
  %108 = load i32, i32* %17, align 4
  %109 = call i32 @pci_read_config(i32 %107, i32 %108, i32 1)
  %110 = and i32 %109, -64
  %111 = load i32, i32* %6, align 4
  %112 = load i32, i32* @ATA_MODE_MASK, align 4
  %113 = and i32 %111, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [7 x i32], [7 x i32]* @ata_sii_setmode.udmatimings, i64 0, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = or i32 %110, %116
  %118 = call i32 @pci_write_config(i32 %105, i32 %106, i32 %117, i32 1)
  %119 = load i32, i32* @ATA_PIO4, align 4
  store i32 %119, i32* %14, align 4
  br label %170

120:                                              ; preds = %92
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* @ATA_WDMA0, align 4
  %123 = icmp sge i32 %121, %122
  br i1 %123, label %124, label %159

124:                                              ; preds = %120
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %11, align 4
  %127 = load i32, i32* %13, align 4
  %128 = load i32, i32* %5, align 4
  %129 = shl i32 %128, 2
  %130 = shl i32 2, %129
  %131 = or i32 %127, %130
  %132 = call i32 @pci_write_config(i32 %125, i32 %126, i32 %131, i32 1)
  %133 = load i32, i32* %7, align 4
  %134 = load i32, i32* %16, align 4
  %135 = load i32, i32* %6, align 4
  %136 = load i32, i32* @ATA_MODE_MASK, align 4
  %137 = and i32 %135, %136
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds [3 x i32], [3 x i32]* @ata_sii_setmode.dmatimings, i64 0, i64 %138
  %140 = load i32, i32* %139, align 4
  %141 = call i32 @pci_write_config(i32 %133, i32 %134, i32 %140, i32 2)
  %142 = load i32, i32* %6, align 4
  %143 = load i32, i32* @ATA_WDMA0, align 4
  %144 = icmp eq i32 %142, %143
  br i1 %144, label %145, label %147

145:                                              ; preds = %124
  %146 = load i32, i32* @ATA_PIO0, align 4
  br label %157

147:                                              ; preds = %124
  %148 = load i32, i32* %6, align 4
  %149 = load i32, i32* @ATA_WDMA1, align 4
  %150 = icmp eq i32 %148, %149
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, i32* @ATA_PIO3, align 4
  br label %155

153:                                              ; preds = %147
  %154 = load i32, i32* @ATA_PIO4, align 4
  br label %155

155:                                              ; preds = %153, %151
  %156 = phi i32 [ %152, %151 ], [ %154, %153 ]
  br label %157

157:                                              ; preds = %155, %145
  %158 = phi i32 [ %146, %145 ], [ %156, %155 ]
  store i32 %158, i32* %14, align 4
  br label %169

159:                                              ; preds = %120
  %160 = load i32, i32* %7, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load i32, i32* %13, align 4
  %163 = load i32, i32* %5, align 4
  %164 = shl i32 %163, 2
  %165 = shl i32 1, %164
  %166 = or i32 %162, %165
  %167 = call i32 @pci_write_config(i32 %160, i32 %161, i32 %166, i32 1)
  %168 = load i32, i32* %6, align 4
  store i32 %168, i32* %14, align 4
  br label %169

169:                                              ; preds = %159, %157
  br label %170

170:                                              ; preds = %169, %96
  %171 = load i32, i32* %7, align 4
  %172 = load i32, i32* %15, align 4
  %173 = load i32, i32* %14, align 4
  %174 = call i64 @ata_mode2idx(i32 %173)
  %175 = getelementptr inbounds [5 x i32], [5 x i32]* @ata_sii_setmode.piotimings, i64 0, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = call i32 @pci_write_config(i32 %171, i32 %172, i32 %176, i32 2)
  %178 = load i32, i32* %6, align 4
  ret i32 %178
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ata_print_cable(i32, i8*) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i64 @ata_mode2idx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
