; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-ite.c_ata_ite_8213_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-ite.c_ata_ite_8213_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ata_ite_8213_setmode.timings = internal constant [8 x i32] [i32 0, i32 0, i32 16, i32 33, i32 35, i32 0, i32 33, i32 35], align 16
@ata_ite_8213_setmode.utimings = internal constant [7 x i32] [i32 0, i32 1, i32 2, i32 1, i32 2, i32 1, i32 2], align 16
@ata_dma_check_80pin = common dso_local global i64 0, align 8
@ATA_UDMA2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_MODE_MASK = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@ATA_UDMA5 = common dso_local global i32 0, align 4
@ATA_UDMA3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_ite_8213_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_ite_8213_setmode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_pci_controller*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %19 = load i32, i32* %4, align 4
  %20 = call i32 @device_get_parent(i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.ata_pci_controller* @device_get_softc(i32 %21)
  store %struct.ata_pci_controller* %22, %struct.ata_pci_controller** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @pci_read_config(i32 %23, i32 64, i32 2)
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i32 @pci_read_config(i32 %25, i32 68, i32 1)
  store i32 %26, i32* %11, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @pci_read_config(i32 %27, i32 72, i32 1)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* %7, align 4
  %30 = call i32 @pci_read_config(i32 %29, i32 74, i32 2)
  store i32 %30, i32* %13, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @pci_read_config(i32 %31, i32 84, i32 2)
  store i32 %32, i32* %14, align 4
  store i32 0, i32* %15, align 4
  store i32 0, i32* %16, align 4
  store i32 0, i32* %17, align 4
  store i32 0, i32* %18, align 4
  %33 = load i32, i32* %6, align 4
  %34 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %35 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %34, i32 0, i32 0
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @min(i32 %33, i32 %38)
  store i32 %39, i32* %6, align 4
  %40 = load i64, i64* @ata_dma_check_80pin, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %56

42:                                               ; preds = %3
  %43 = load i32, i32* %6, align 4
  %44 = load i32, i32* @ATA_UDMA2, align 4
  %45 = icmp sgt i32 %43, %44
  br i1 %45, label %46, label %56

46:                                               ; preds = %42
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %5, align 4
  %49 = shl i32 16, %48
  %50 = and i32 %47, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %46
  %53 = load i32, i32* %4, align 4
  %54 = call i32 @ata_print_cable(i32 %53, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* @ATA_UDMA2, align 4
  store i32 %55, i32* %6, align 4
  br label %56

56:                                               ; preds = %52, %46, %42, %3
  %57 = load i32, i32* %6, align 4
  %58 = load i32, i32* @ATA_UDMA0, align 4
  %59 = icmp sge i32 %57, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %56
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %12, align 4
  %63 = load i32, i32* %5, align 4
  %64 = shl i32 1, %63
  %65 = or i32 %62, %64
  %66 = call i32 @pci_write_config(i32 %61, i32 72, i32 %65, i32 2)
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* %5, align 4
  %70 = shl i32 %69, 2
  %71 = shl i32 3, %70
  %72 = xor i32 %71, -1
  %73 = and i32 %68, %72
  %74 = load i32, i32* %6, align 4
  %75 = load i32, i32* @ATA_MODE_MASK, align 4
  %76 = and i32 %74, %75
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds [7 x i32], [7 x i32]* @ata_ite_8213_setmode.utimings, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %5, align 4
  %81 = shl i32 %80, 2
  %82 = shl i32 %79, %81
  %83 = or i32 %73, %82
  %84 = call i32 @pci_write_config(i32 %67, i32 74, i32 %83, i32 2)
  %85 = load i32, i32* @ATA_PIO4, align 4
  store i32 %85, i32* %9, align 4
  br label %103

86:                                               ; preds = %56
  %87 = load i32, i32* %7, align 4
  %88 = load i32, i32* %12, align 4
  %89 = load i32, i32* %5, align 4
  %90 = shl i32 1, %89
  %91 = xor i32 %90, -1
  %92 = and i32 %88, %91
  %93 = call i32 @pci_write_config(i32 %87, i32 72, i32 %92, i32 2)
  %94 = load i32, i32* %7, align 4
  %95 = load i32, i32* %13, align 4
  %96 = load i32, i32* %5, align 4
  %97 = shl i32 %96, 2
  %98 = shl i32 3, %97
  %99 = xor i32 %98, -1
  %100 = and i32 %95, %99
  %101 = call i32 @pci_write_config(i32 %94, i32 74, i32 %100, i32 2)
  %102 = load i32, i32* %6, align 4
  store i32 %102, i32* %9, align 4
  br label %103

103:                                              ; preds = %86, %60
  %104 = load i32, i32* %5, align 4
  %105 = shl i32 4097, %104
  %106 = xor i32 %105, -1
  %107 = load i32, i32* %14, align 4
  %108 = and i32 %107, %106
  store i32 %108, i32* %14, align 4
  %109 = load i32, i32* %6, align 4
  %110 = load i32, i32* @ATA_UDMA5, align 4
  %111 = icmp sge i32 %109, %110
  br i1 %111, label %112, label %117

112:                                              ; preds = %103
  %113 = load i32, i32* %5, align 4
  %114 = shl i32 4096, %113
  %115 = load i32, i32* %14, align 4
  %116 = or i32 %115, %114
  store i32 %116, i32* %14, align 4
  br label %127

117:                                              ; preds = %103
  %118 = load i32, i32* %6, align 4
  %119 = load i32, i32* @ATA_UDMA3, align 4
  %120 = icmp sge i32 %118, %119
  br i1 %120, label %121, label %126

121:                                              ; preds = %117
  %122 = load i32, i32* %5, align 4
  %123 = shl i32 1, %122
  %124 = load i32, i32* %14, align 4
  %125 = or i32 %124, %123
  store i32 %125, i32* %14, align 4
  br label %126

126:                                              ; preds = %121, %117
  br label %127

127:                                              ; preds = %126, %112
  %128 = load i32, i32* %7, align 4
  %129 = load i32, i32* %14, align 4
  %130 = call i32 @pci_write_config(i32 %128, i32 84, i32 %129, i32 2)
  %131 = load i32, i32* %10, align 4
  %132 = and i32 %131, 65280
  store i32 %132, i32* %10, align 4
  %133 = load i32, i32* %10, align 4
  %134 = or i32 %133, 16435
  store i32 %134, i32* %10, align 4
  %135 = load i32, i32* %5, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %151

137:                                              ; preds = %127
  %138 = load i32, i32* %4, align 4
  %139 = load i32, i32* %5, align 4
  %140 = call i64 @ata_atapi(i32 %138, i32 %139)
  %141 = icmp ne i64 %140, 0
  %142 = zext i1 %141 to i64
  %143 = select i1 %141, i32 4, i32 0
  %144 = load i32, i32* %10, align 4
  %145 = or i32 %144, %143
  store i32 %145, i32* %10, align 4
  store i32 13056, i32* %15, align 4
  %146 = load i32, i32* %9, align 4
  %147 = call i64 @ata_mode2idx(i32 %146)
  %148 = getelementptr inbounds [8 x i32], [8 x i32]* @ata_ite_8213_setmode.timings, i64 0, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = shl i32 %149, 8
  store i32 %150, i32* %16, align 4
  br label %172

151:                                              ; preds = %127
  %152 = load i32, i32* %4, align 4
  %153 = load i32, i32* %5, align 4
  %154 = call i64 @ata_atapi(i32 %152, i32 %153)
  %155 = icmp ne i64 %154, 0
  %156 = zext i1 %155 to i64
  %157 = select i1 %155, i32 64, i32 0
  %158 = load i32, i32* %10, align 4
  %159 = or i32 %158, %157
  store i32 %159, i32* %10, align 4
  store i32 15, i32* %17, align 4
  %160 = load i32, i32* %9, align 4
  %161 = call i64 @ata_mode2idx(i32 %160)
  %162 = getelementptr inbounds [8 x i32], [8 x i32]* @ata_ite_8213_setmode.timings, i64 0, i64 %161
  %163 = load i32, i32* %162, align 4
  %164 = and i32 %163, 48
  %165 = ashr i32 %164, 2
  %166 = load i32, i32* %9, align 4
  %167 = call i64 @ata_mode2idx(i32 %166)
  %168 = getelementptr inbounds [8 x i32], [8 x i32]* @ata_ite_8213_setmode.timings, i64 0, i64 %167
  %169 = load i32, i32* %168, align 4
  %170 = and i32 %169, 3
  %171 = or i32 %165, %170
  store i32 %171, i32* %18, align 4
  br label %172

172:                                              ; preds = %151, %137
  %173 = load i32, i32* %7, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %15, align 4
  %176 = xor i32 %175, -1
  %177 = and i32 %174, %176
  %178 = load i32, i32* %16, align 4
  %179 = or i32 %177, %178
  %180 = call i32 @pci_write_config(i32 %173, i32 64, i32 %179, i32 4)
  %181 = load i32, i32* %7, align 4
  %182 = load i32, i32* %11, align 4
  %183 = load i32, i32* %17, align 4
  %184 = xor i32 %183, -1
  %185 = and i32 %182, %184
  %186 = load i32, i32* %18, align 4
  %187 = or i32 %185, %186
  %188 = call i32 @pci_write_config(i32 %181, i32 68, i32 %187, i32 1)
  %189 = load i32, i32* %6, align 4
  ret i32 %189
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.ata_pci_controller* @device_get_softc(i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ata_print_cable(i32, i8*) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i64 @ata_atapi(i32, i32) #1

declare dso_local i64 @ata_mode2idx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
