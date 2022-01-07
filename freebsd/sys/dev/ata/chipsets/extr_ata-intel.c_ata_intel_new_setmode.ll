; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_new_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-intel.c_ata_intel_new_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.ata_channel = type { i32, i32 }

@ata_intel_new_setmode.timings = internal constant [8 x i32] [i32 0, i32 0, i32 16, i32 33, i32 35, i32 0, i32 33, i32 35], align 16
@ata_intel_new_setmode.utimings = internal constant [7 x i32] [i32 0, i32 1, i32 2, i32 1, i32 2, i32 1, i32 2], align 16
@ATA_SATA = common dso_local global i32 0, align 4
@ata_dma_check_80pin = common dso_local global i64 0, align 8
@ATA_UDMA2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_MODE_MASK = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@ATA_UDMA5 = common dso_local global i32 0, align 4
@ATA_UDMA3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_intel_new_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_intel_new_setmode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.ata_pci_controller*, align 8
  %10 = alloca %struct.ata_channel*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %22 = load i32, i32* %5, align 4
  %23 = call i32 @device_get_parent(i32 %22)
  store i32 %23, i32* %8, align 4
  %24 = load i32, i32* %8, align 4
  %25 = call i8* @device_get_softc(i32 %24)
  %26 = bitcast i8* %25 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %26, %struct.ata_pci_controller** %9, align 8
  %27 = load i32, i32* %5, align 4
  %28 = call i8* @device_get_softc(i32 %27)
  %29 = bitcast i8* %28 to %struct.ata_channel*
  store %struct.ata_channel* %29, %struct.ata_channel** %10, align 8
  %30 = load %struct.ata_channel*, %struct.ata_channel** %10, align 8
  %31 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = shl i32 %32, 1
  %34 = load i32, i32* %6, align 4
  %35 = add nsw i32 %33, %34
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @pci_read_config(i32 %36, i32 64, i32 4)
  store i32 %37, i32* %13, align 4
  %38 = load i32, i32* %8, align 4
  %39 = call i32 @pci_read_config(i32 %38, i32 68, i32 1)
  store i32 %39, i32* %14, align 4
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @pci_read_config(i32 %40, i32 72, i32 1)
  store i32 %41, i32* %15, align 4
  %42 = load i32, i32* %8, align 4
  %43 = call i32 @pci_read_config(i32 %42, i32 74, i32 2)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %8, align 4
  %45 = call i32 @pci_read_config(i32 %44, i32 84, i32 2)
  store i32 %45, i32* %17, align 4
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  store i32 0, i32* %21, align 4
  %46 = load %struct.ata_channel*, %struct.ata_channel** %10, align 8
  %47 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @ATA_SATA, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %57

52:                                               ; preds = %3
  %53 = load i32, i32* %5, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* %7, align 4
  %56 = call i32 @ata_sata_setmode(i32 %53, i32 %54, i32 %55)
  store i32 %56, i32* %4, align 4
  br label %215

57:                                               ; preds = %3
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %9, align 8
  %60 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @min(i32 %58, i32 %63)
  store i32 %64, i32* %7, align 4
  %65 = load i64, i64* @ata_dma_check_80pin, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %81

67:                                               ; preds = %57
  %68 = load i32, i32* %7, align 4
  %69 = load i32, i32* @ATA_UDMA2, align 4
  %70 = icmp sgt i32 %68, %69
  br i1 %70, label %71, label %81

71:                                               ; preds = %67
  %72 = load i32, i32* %17, align 4
  %73 = load i32, i32* %11, align 4
  %74 = shl i32 16, %73
  %75 = and i32 %72, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %81, label %77

77:                                               ; preds = %71
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @ata_print_cable(i32 %78, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %80 = load i32, i32* @ATA_UDMA2, align 4
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %77, %71, %67, %57
  %82 = load i32, i32* %7, align 4
  %83 = load i32, i32* @ATA_UDMA0, align 4
  %84 = icmp sge i32 %82, %83
  br i1 %84, label %85, label %111

85:                                               ; preds = %81
  %86 = load i32, i32* %8, align 4
  %87 = load i32, i32* %15, align 4
  %88 = load i32, i32* %11, align 4
  %89 = shl i32 1, %88
  %90 = or i32 %87, %89
  %91 = call i32 @pci_write_config(i32 %86, i32 72, i32 %90, i32 2)
  %92 = load i32, i32* %8, align 4
  %93 = load i32, i32* %16, align 4
  %94 = load i32, i32* %11, align 4
  %95 = shl i32 %94, 2
  %96 = shl i32 3, %95
  %97 = xor i32 %96, -1
  %98 = and i32 %93, %97
  %99 = load i32, i32* %7, align 4
  %100 = load i32, i32* @ATA_MODE_MASK, align 4
  %101 = and i32 %99, %100
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds [7 x i32], [7 x i32]* @ata_intel_new_setmode.utimings, i64 0, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %11, align 4
  %106 = shl i32 %105, 2
  %107 = shl i32 %104, %106
  %108 = or i32 %98, %107
  %109 = call i32 @pci_write_config(i32 %92, i32 74, i32 %108, i32 2)
  %110 = load i32, i32* @ATA_PIO4, align 4
  store i32 %110, i32* %12, align 4
  br label %128

111:                                              ; preds = %81
  %112 = load i32, i32* %8, align 4
  %113 = load i32, i32* %15, align 4
  %114 = load i32, i32* %11, align 4
  %115 = shl i32 1, %114
  %116 = xor i32 %115, -1
  %117 = and i32 %113, %116
  %118 = call i32 @pci_write_config(i32 %112, i32 72, i32 %117, i32 2)
  %119 = load i32, i32* %8, align 4
  %120 = load i32, i32* %16, align 4
  %121 = load i32, i32* %11, align 4
  %122 = shl i32 %121, 2
  %123 = shl i32 3, %122
  %124 = xor i32 %123, -1
  %125 = and i32 %120, %124
  %126 = call i32 @pci_write_config(i32 %119, i32 74, i32 %125, i32 2)
  %127 = load i32, i32* %7, align 4
  store i32 %127, i32* %12, align 4
  br label %128

128:                                              ; preds = %111, %85
  %129 = load i32, i32* %17, align 4
  %130 = or i32 %129, 1024
  store i32 %130, i32* %17, align 4
  %131 = load i32, i32* %11, align 4
  %132 = shl i32 4097, %131
  %133 = xor i32 %132, -1
  %134 = load i32, i32* %17, align 4
  %135 = and i32 %134, %133
  store i32 %135, i32* %17, align 4
  %136 = load i32, i32* %7, align 4
  %137 = load i32, i32* @ATA_UDMA5, align 4
  %138 = icmp sge i32 %136, %137
  br i1 %138, label %139, label %144

139:                                              ; preds = %128
  %140 = load i32, i32* %11, align 4
  %141 = shl i32 4096, %140
  %142 = load i32, i32* %17, align 4
  %143 = or i32 %142, %141
  store i32 %143, i32* %17, align 4
  br label %154

144:                                              ; preds = %128
  %145 = load i32, i32* %7, align 4
  %146 = load i32, i32* @ATA_UDMA3, align 4
  %147 = icmp sge i32 %145, %146
  br i1 %147, label %148, label %153

148:                                              ; preds = %144
  %149 = load i32, i32* %11, align 4
  %150 = shl i32 1, %149
  %151 = load i32, i32* %17, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %17, align 4
  br label %153

153:                                              ; preds = %148, %144
  br label %154

154:                                              ; preds = %153, %139
  %155 = load i32, i32* %8, align 4
  %156 = load i32, i32* %17, align 4
  %157 = call i32 @pci_write_config(i32 %155, i32 84, i32 %156, i32 2)
  %158 = load i32, i32* %13, align 4
  %159 = and i32 %158, -16711936
  store i32 %159, i32* %13, align 4
  %160 = load i32, i32* %13, align 4
  %161 = or i32 %160, 1081557111
  store i32 %161, i32* %13, align 4
  %162 = load i32, i32* %6, align 4
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %164, label %170

164:                                              ; preds = %154
  store i32 13056, i32* %18, align 4
  %165 = load i32, i32* %12, align 4
  %166 = call i64 @ata_mode2idx(i32 %165)
  %167 = getelementptr inbounds [8 x i32], [8 x i32]* @ata_intel_new_setmode.timings, i64 0, i64 %166
  %168 = load i32, i32* %167, align 4
  %169 = shl i32 %168, 8
  store i32 %169, i32* %19, align 4
  br label %183

170:                                              ; preds = %154
  store i32 15, i32* %20, align 4
  %171 = load i32, i32* %12, align 4
  %172 = call i64 @ata_mode2idx(i32 %171)
  %173 = getelementptr inbounds [8 x i32], [8 x i32]* @ata_intel_new_setmode.timings, i64 0, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = and i32 %174, 48
  %176 = ashr i32 %175, 2
  %177 = load i32, i32* %12, align 4
  %178 = call i64 @ata_mode2idx(i32 %177)
  %179 = getelementptr inbounds [8 x i32], [8 x i32]* @ata_intel_new_setmode.timings, i64 0, i64 %178
  %180 = load i32, i32* %179, align 4
  %181 = and i32 %180, 3
  %182 = or i32 %176, %181
  store i32 %182, i32* %21, align 4
  br label %183

183:                                              ; preds = %170, %164
  %184 = load %struct.ata_channel*, %struct.ata_channel** %10, align 8
  %185 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %184, i32 0, i32 0
  %186 = load i32, i32* %185, align 4
  %187 = icmp ne i32 %186, 0
  br i1 %187, label %188, label %197

188:                                              ; preds = %183
  %189 = load i32, i32* %18, align 4
  %190 = shl i32 %189, 16
  store i32 %190, i32* %18, align 4
  %191 = load i32, i32* %19, align 4
  %192 = shl i32 %191, 16
  store i32 %192, i32* %19, align 4
  %193 = load i32, i32* %20, align 4
  %194 = shl i32 %193, 4
  store i32 %194, i32* %20, align 4
  %195 = load i32, i32* %21, align 4
  %196 = shl i32 %195, 4
  store i32 %196, i32* %21, align 4
  br label %197

197:                                              ; preds = %188, %183
  %198 = load i32, i32* %8, align 4
  %199 = load i32, i32* %13, align 4
  %200 = load i32, i32* %18, align 4
  %201 = xor i32 %200, -1
  %202 = and i32 %199, %201
  %203 = load i32, i32* %19, align 4
  %204 = or i32 %202, %203
  %205 = call i32 @pci_write_config(i32 %198, i32 64, i32 %204, i32 4)
  %206 = load i32, i32* %8, align 4
  %207 = load i32, i32* %14, align 4
  %208 = load i32, i32* %20, align 4
  %209 = xor i32 %208, -1
  %210 = and i32 %207, %209
  %211 = load i32, i32* %21, align 4
  %212 = or i32 %210, %211
  %213 = call i32 @pci_write_config(i32 %206, i32 68, i32 %212, i32 1)
  %214 = load i32, i32* %7, align 4
  store i32 %214, i32* %4, align 4
  br label %215

215:                                              ; preds = %197, %52
  %216 = load i32, i32* %4, align 4
  ret i32 %216
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @ata_sata_setmode(i32, i32, i32) #1

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
