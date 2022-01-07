; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_old_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-via.c_ata_via_old_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }
%struct.ata_channel = type { i32 }

@ata_via_old_setmode.timings = internal constant [8 x i32] [i32 168, i32 101, i32 66, i32 34, i32 32, i32 168, i32 34, i32 32], align 16
@ata_via_old_setmode.modes = internal constant [4 x [7 x i32]] [[7 x i32] [i32 194, i32 193, i32 192, i32 0, i32 0, i32 0, i32 0], [7 x i32] [i32 238, i32 236, i32 234, i32 233, i32 232, i32 0, i32 0], [7 x i32] [i32 247, i32 246, i32 244, i32 242, i32 241, i32 240, i32 0], [7 x i32] [i32 247, i32 247, i32 246, i32 244, i32 242, i32 241, i32 240]], align 16
@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_MODE_MASK = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_via_old_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_via_old_setmode(i32 %0, i32 %1, i32 %2) #0 {
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
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %31 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @min(i32 %29, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = load i32, i32* @ATA_UDMA0, align 4
  %38 = icmp sge i32 %36, %37
  br i1 %38, label %39, label %56

39:                                               ; preds = %3
  %40 = load i32, i32* %7, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %43 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = getelementptr inbounds [4 x [7 x i32]], [4 x [7 x i32]]* @ata_via_old_setmode.modes, i64 0, i64 %46
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* @ATA_MODE_MASK, align 4
  %50 = and i32 %48, %49
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds [7 x i32], [7 x i32]* %47, i64 0, i64 %51
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @pci_write_config(i32 %40, i32 %41, i32 %53, i32 1)
  %55 = load i32, i32* @ATA_PIO4, align 4
  store i32 %55, i32* %12, align 4
  br label %61

56:                                               ; preds = %3
  %57 = load i32, i32* %7, align 4
  %58 = load i32, i32* %11, align 4
  %59 = call i32 @pci_write_config(i32 %57, i32 %58, i32 139, i32 1)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %12, align 4
  br label %61

61:                                               ; preds = %56, %39
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %11, align 4
  %64 = sub nsw i32 %63, 8
  %65 = load i32, i32* %12, align 4
  %66 = call i64 @ata_mode2idx(i32 %65)
  %67 = getelementptr inbounds [8 x i32], [8 x i32]* @ata_via_old_setmode.timings, i64 0, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @pci_write_config(i32 %62, i32 %64, i32 %68, i32 1)
  %70 = load i32, i32* %6, align 4
  ret i32 %70
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i64 @ata_mode2idx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
