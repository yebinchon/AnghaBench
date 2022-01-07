; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-serverworks.c_ata_serverworks_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-serverworks.c_ata_serverworks_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ata_channel = type { i32 }

@ata_serverworks_setmode.piotimings = internal constant [5 x i32] [i32 93, i32 71, i32 52, i32 34, i32 32], align 16
@ata_serverworks_setmode.dmatimings = internal constant [3 x i32] [i32 119, i32 33, i32 32], align 4
@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_MODE_MASK = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@ATA_WDMA0 = common dso_local global i32 0, align 4
@ATA_PIO0 = common dso_local global i32 0, align 4
@ATA_WDMA1 = common dso_local global i32 0, align 4
@ATA_PIO3 = common dso_local global i32 0, align 4
@SWKS_33 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_serverworks_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_serverworks_setmode(i32 %0, i32 %1, i32 %2) #0 {
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
  %28 = xor i32 %27, 1
  %29 = shl i32 %28, 3
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %6, align 4
  %31 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %32 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %31, i32 0, i32 0
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @min(i32 %30, i32 %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = load i32, i32* @ATA_UDMA0, align 4
  %39 = icmp sge i32 %37, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %3
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @pci_read_config(i32 %42, i32 86, i32 2)
  %44 = load i32, i32* %10, align 4
  %45 = shl i32 %44, 2
  %46 = shl i32 15, %45
  %47 = xor i32 %46, -1
  %48 = and i32 %43, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @ATA_MODE_MASK, align 4
  %51 = and i32 %49, %50
  %52 = load i32, i32* %10, align 4
  %53 = shl i32 %52, 2
  %54 = shl i32 %51, %53
  %55 = or i32 %48, %54
  %56 = call i32 @pci_write_config(i32 %41, i32 86, i32 %55, i32 2)
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %7, align 4
  %59 = call i32 @pci_read_config(i32 %58, i32 84, i32 1)
  %60 = load i32, i32* %10, align 4
  %61 = shl i32 1, %60
  %62 = or i32 %59, %61
  %63 = call i32 @pci_write_config(i32 %57, i32 84, i32 %62, i32 1)
  %64 = load i32, i32* %7, align 4
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @pci_read_config(i32 %65, i32 68, i32 4)
  %67 = load i32, i32* %11, align 4
  %68 = shl i32 255, %67
  %69 = xor i32 %68, -1
  %70 = and i32 %66, %69
  %71 = load i32, i32* getelementptr inbounds ([3 x i32], [3 x i32]* @ata_serverworks_setmode.dmatimings, i64 0, i64 2), align 4
  %72 = load i32, i32* %11, align 4
  %73 = shl i32 %71, %72
  %74 = or i32 %70, %73
  %75 = call i32 @pci_write_config(i32 %64, i32 68, i32 %74, i32 4)
  %76 = load i32, i32* @ATA_PIO4, align 4
  store i32 %76, i32* %12, align 4
  br label %135

77:                                               ; preds = %3
  %78 = load i32, i32* %6, align 4
  %79 = load i32, i32* @ATA_WDMA0, align 4
  %80 = icmp sge i32 %78, %79
  br i1 %80, label %81, label %124

81:                                               ; preds = %77
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* %7, align 4
  %84 = call i32 @pci_read_config(i32 %83, i32 84, i32 1)
  %85 = load i32, i32* %10, align 4
  %86 = shl i32 1, %85
  %87 = xor i32 %86, -1
  %88 = and i32 %84, %87
  %89 = call i32 @pci_write_config(i32 %82, i32 84, i32 %88, i32 1)
  %90 = load i32, i32* %7, align 4
  %91 = load i32, i32* %7, align 4
  %92 = call i32 @pci_read_config(i32 %91, i32 68, i32 4)
  %93 = load i32, i32* %11, align 4
  %94 = shl i32 255, %93
  %95 = xor i32 %94, -1
  %96 = and i32 %92, %95
  %97 = load i32, i32* %6, align 4
  %98 = load i32, i32* @ATA_MODE_MASK, align 4
  %99 = and i32 %97, %98
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds [3 x i32], [3 x i32]* @ata_serverworks_setmode.dmatimings, i64 0, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* %11, align 4
  %104 = shl i32 %102, %103
  %105 = or i32 %96, %104
  %106 = call i32 @pci_write_config(i32 %90, i32 68, i32 %105, i32 4)
  %107 = load i32, i32* %6, align 4
  %108 = load i32, i32* @ATA_WDMA0, align 4
  %109 = icmp eq i32 %107, %108
  br i1 %109, label %110, label %112

110:                                              ; preds = %81
  %111 = load i32, i32* @ATA_PIO0, align 4
  br label %122

112:                                              ; preds = %81
  %113 = load i32, i32* %6, align 4
  %114 = load i32, i32* @ATA_WDMA1, align 4
  %115 = icmp eq i32 %113, %114
  br i1 %115, label %116, label %118

116:                                              ; preds = %112
  %117 = load i32, i32* @ATA_PIO3, align 4
  br label %120

118:                                              ; preds = %112
  %119 = load i32, i32* @ATA_PIO4, align 4
  br label %120

120:                                              ; preds = %118, %116
  %121 = phi i32 [ %117, %116 ], [ %119, %118 ]
  br label %122

122:                                              ; preds = %120, %110
  %123 = phi i32 [ %111, %110 ], [ %121, %120 ]
  store i32 %123, i32* %12, align 4
  br label %134

124:                                              ; preds = %77
  %125 = load i32, i32* %7, align 4
  %126 = load i32, i32* %7, align 4
  %127 = call i32 @pci_read_config(i32 %126, i32 84, i32 1)
  %128 = load i32, i32* %10, align 4
  %129 = shl i32 1, %128
  %130 = xor i32 %129, -1
  %131 = and i32 %127, %130
  %132 = call i32 @pci_write_config(i32 %125, i32 84, i32 %131, i32 1)
  %133 = load i32, i32* %6, align 4
  store i32 %133, i32* %12, align 4
  br label %134

134:                                              ; preds = %124, %122
  br label %135

135:                                              ; preds = %134, %40
  %136 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %137 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %136, i32 0, i32 0
  %138 = load %struct.TYPE_2__*, %struct.TYPE_2__** %137, align 8
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @SWKS_33, align 8
  %142 = icmp ne i64 %140, %141
  br i1 %142, label %143, label %160

143:                                              ; preds = %135
  %144 = load i32, i32* %7, align 4
  %145 = load i32, i32* %7, align 4
  %146 = call i32 @pci_read_config(i32 %145, i32 74, i32 2)
  %147 = load i32, i32* %10, align 4
  %148 = shl i32 %147, 2
  %149 = shl i32 15, %148
  %150 = xor i32 %149, -1
  %151 = and i32 %146, %150
  %152 = load i32, i32* %12, align 4
  %153 = load i32, i32* @ATA_PIO0, align 4
  %154 = sub nsw i32 %152, %153
  %155 = load i32, i32* %10, align 4
  %156 = shl i32 %155, 2
  %157 = shl i32 %154, %156
  %158 = or i32 %151, %157
  %159 = call i32 @pci_write_config(i32 %144, i32 74, i32 %158, i32 2)
  br label %160

160:                                              ; preds = %143, %135
  %161 = load i32, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = call i32 @pci_read_config(i32 %162, i32 64, i32 4)
  %164 = load i32, i32* %11, align 4
  %165 = shl i32 255, %164
  %166 = xor i32 %165, -1
  %167 = and i32 %163, %166
  %168 = load i32, i32* %12, align 4
  %169 = call i64 @ata_mode2idx(i32 %168)
  %170 = getelementptr inbounds [5 x i32], [5 x i32]* @ata_serverworks_setmode.piotimings, i64 0, i64 %169
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %11, align 4
  %173 = shl i32 %171, %172
  %174 = or i32 %167, %173
  %175 = call i32 @pci_write_config(i32 %161, i32 64, i32 %174, i32 4)
  %176 = load i32, i32* %6, align 4
  ret i32 %176
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i64 @ata_mode2idx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
