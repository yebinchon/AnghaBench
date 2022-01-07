; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-ite.c_ata_ite_821x_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-ite.c_ata_ite_821x_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ata_channel = type { i32 }

@ata_ite_821x_setmode.udmatiming = internal constant [7 x i32] [i32 68, i32 66, i32 49, i32 33, i32 17, i32 162, i32 145], align 16
@ata_ite_821x_setmode.chtiming = internal constant [8 x i32] [i32 170, i32 163, i32 161, i32 51, i32 49, i32 136, i32 50, i32 49], align 16
@ata_dma_check_80pin = common dso_local global i64 0, align 8
@ATA_UDMA2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_MODE_MASK = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_ite_821x_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_ite_821x_setmode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_pci_controller*, align 8
  %9 = alloca %struct.ata_channel*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
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
  %27 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %28 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %27, i32 0, i32 1
  store i32* %28, i32** %12, align 8
  %29 = load i32, i32* %6, align 4
  %30 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %31 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %30, i32 0, i32 0
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @min(i32 %29, i32 %34)
  store i32 %35, i32* %6, align 4
  %36 = load i64, i64* @ata_dma_check_80pin, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %57

38:                                               ; preds = %3
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @ATA_UDMA2, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %57

42:                                               ; preds = %38
  %43 = load i32, i32* %7, align 4
  %44 = call i32 @pci_read_config(i32 %43, i32 64, i32 2)
  %45 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %46 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 8, i32 4
  %51 = and i32 %44, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %42
  %54 = load i32, i32* %4, align 4
  %55 = call i32 @ata_print_cable(i32 %54, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %56 = load i32, i32* @ATA_UDMA2, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %53, %42, %38, %3
  %58 = load i32, i32* %6, align 4
  %59 = load i32, i32* @ATA_UDMA0, align 4
  %60 = icmp sge i32 %58, %59
  br i1 %60, label %61, label %87

61:                                               ; preds = %57
  %62 = load i32, i32* %7, align 4
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @pci_read_config(i32 %63, i32 80, i32 1)
  %65 = load i32, i32* %10, align 4
  %66 = add nsw i32 %65, 3
  %67 = shl i32 1, %66
  %68 = xor i32 %67, -1
  %69 = and i32 %64, %68
  %70 = call i32 @pci_write_config(i32 %62, i32 80, i32 %69, i32 1)
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %73 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = shl i32 %74, 2
  %76 = add nsw i32 86, %75
  %77 = load i32, i32* %5, align 4
  %78 = add nsw i32 %76, %77
  %79 = load i32, i32* %6, align 4
  %80 = load i32, i32* @ATA_MODE_MASK, align 4
  %81 = and i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [7 x i32], [7 x i32]* @ata_ite_821x_setmode.udmatiming, i64 0, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @pci_write_config(i32 %71, i32 %78, i32 %84, i32 1)
  %86 = load i32, i32* @ATA_PIO4, align 4
  store i32 %86, i32* %11, align 4
  br label %97

87:                                               ; preds = %57
  %88 = load i32, i32* %7, align 4
  %89 = load i32, i32* %7, align 4
  %90 = call i32 @pci_read_config(i32 %89, i32 80, i32 1)
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 3
  %93 = shl i32 1, %92
  %94 = or i32 %90, %93
  %95 = call i32 @pci_write_config(i32 %88, i32 80, i32 %94, i32 1)
  %96 = load i32, i32* %6, align 4
  store i32 %96, i32* %11, align 4
  br label %97

97:                                               ; preds = %87, %61
  %98 = load i32, i32* %11, align 4
  %99 = call i64 @ata_mode2idx(i32 %98)
  %100 = getelementptr inbounds [8 x i32], [8 x i32]* @ata_ite_821x_setmode.chtiming, i64 0, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %12, align 8
  %103 = load i32, i32* %10, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %108 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = shl i32 %109, 2
  %111 = add nsw i32 84, %110
  %112 = load i32*, i32** %12, align 8
  %113 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %114 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %113, i32 0, i32 0
  %115 = load i32, i32* %114, align 4
  %116 = shl i32 %115, 1
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %112, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32*, i32** %12, align 8
  %121 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %122 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 4
  %124 = shl i32 %123, 1
  %125 = add nsw i32 %124, 1
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds i32, i32* %120, i64 %126
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @max(i32 %119, i32 %128)
  %130 = call i32 @pci_write_config(i32 %106, i32 %111, i32 %129, i32 1)
  %131 = load i32, i32* %6, align 4
  ret i32 %131
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @ata_print_cable(i32, i8*) #1

declare dso_local i32 @pci_write_config(i32, i32, i32, i32) #1

declare dso_local i64 @ata_mode2idx(i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
