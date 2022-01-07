; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-national.c_ata_national_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-national.c_ata_national_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i32 }

@ata_national_setmode.piotiming = internal constant [8 x i32] [i32 -1854746318, i32 561082657, i32 8400928, i32 537927696, i32 1048592, i32 -1854746318, i32 537927696, i32 1048592], align 16
@ata_national_setmode.dmatiming = internal constant [3 x i32] [i32 -2146994319, i32 -2147409631, i32 -2147475424], align 4
@ata_national_setmode.udmatiming = internal constant [3 x i32] [i32 -2137910704, i32 -2137976512, i32 -2137976784], align 4
@ATA_UDMA2 = common dso_local global i32 0, align 4
@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_MODE_MASK = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@ATA_WDMA0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_national_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_national_setmode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %4, align 4
  %14 = call %struct.ata_channel* @device_get_softc(i32 %13)
  store %struct.ata_channel* %14, %struct.ata_channel** %8, align 8
  %15 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %16 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = shl i32 %17, 1
  %19 = load i32, i32* %5, align 4
  %20 = add nsw i32 %18, %19
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %6, align 4
  %22 = load i32, i32* @ATA_UDMA2, align 4
  %23 = call i32 @min(i32 %21, i32 %22)
  store i32 %23, i32* %6, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @ATA_UDMA0, align 4
  %26 = icmp sge i32 %24, %25
  br i1 %26, label %27, label %40

27:                                               ; preds = %3
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %9, align 4
  %30 = shl i32 %29, 3
  %31 = add nsw i32 68, %30
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ATA_MODE_MASK, align 4
  %34 = and i32 %32, %33
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [3 x i32], [3 x i32]* @ata_national_setmode.udmatiming, i64 0, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @pci_write_config(i32 %28, i32 %31, i32 %37, i32 4)
  %39 = load i32, i32* @ATA_PIO4, align 4
  store i32 %39, i32* %10, align 4
  br label %71

40:                                               ; preds = %3
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ATA_WDMA0, align 4
  %43 = icmp sge i32 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* %9, align 4
  %47 = shl i32 %46, 3
  %48 = add nsw i32 68, %47
  %49 = load i32, i32* %6, align 4
  %50 = load i32, i32* @ATA_MODE_MASK, align 4
  %51 = and i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* @ata_national_setmode.dmatiming, i64 0, i64 %52
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @pci_write_config(i32 %45, i32 %48, i32 %54, i32 4)
  %56 = load i32, i32* %6, align 4
  store i32 %56, i32* %10, align 4
  br label %70

57:                                               ; preds = %40
  %58 = load i32, i32* %7, align 4
  %59 = load i32, i32* %9, align 4
  %60 = shl i32 %59, 3
  %61 = add nsw i32 68, %60
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %9, align 4
  %64 = shl i32 %63, 3
  %65 = add nsw i32 68, %64
  %66 = call i32 @pci_read_config(i32 %62, i32 %65, i32 4)
  %67 = or i32 %66, -2147483648
  %68 = call i32 @pci_write_config(i32 %58, i32 %61, i32 %67, i32 4)
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %10, align 4
  br label %70

70:                                               ; preds = %57, %44
  br label %71

71:                                               ; preds = %70, %27
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %9, align 4
  %74 = shl i32 %73, 3
  %75 = add nsw i32 64, %74
  %76 = load i32, i32* %10, align 4
  %77 = call i64 @ata_mode2idx(i32 %76)
  %78 = getelementptr inbounds [8 x i32], [8 x i32]* @ata_national_setmode.piotiming, i64 0, i64 %77
  %79 = load i32, i32* %78, align 4
  %80 = call i32 @pci_write_config(i32 %72, i32 %75, i32 %79, i32 4)
  %81 = load i32, i32* %6, align 4
  ret i32 %81
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

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
