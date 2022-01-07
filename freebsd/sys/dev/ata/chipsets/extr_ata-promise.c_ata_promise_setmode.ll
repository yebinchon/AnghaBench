; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.ata_pci_controller = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.ata_channel = type { i32 }

@ata_promise_setmode.timings = internal constant [14 x [2 x %struct.TYPE_5__]] [[2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 5239593, i32 5242671 }, %struct.TYPE_5__ zeroinitializer], [2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 5237797, i32 5240874 }, %struct.TYPE_5__ zeroinitializer], [2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 5236771, i32 5238822 }, %struct.TYPE_5__ zeroinitializer], [2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 5236258, i32 5237796 }, %struct.TYPE_5__ zeroinitializer], [2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 5235745, i32 5236770 }, %struct.TYPE_5__ zeroinitializer], [2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 4548595, i32 4902646 }, %struct.TYPE_5__ zeroinitializer], [2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 4483059, i32 4771574 }, %struct.TYPE_5__ zeroinitializer], [2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 4417523, i32 4640502 }, %struct.TYPE_5__ zeroinitializer], [2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 4417523, i32 4640502 }, %struct.TYPE_5__ zeroinitializer], [2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 4343795, i32 4493046 }, %struct.TYPE_5__ zeroinitializer], [2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 4270067, i32 4419318 }, %struct.TYPE_5__ zeroinitializer], [2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 0, i32 4345590 }, %struct.TYPE_5__ zeroinitializer], [2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 0, i32 4270067 }, %struct.TYPE_5__ zeroinitializer], [2 x %struct.TYPE_5__] [%struct.TYPE_5__ { i32 0, i32 4270067 }, %struct.TYPE_5__ zeroinitializer]], align 16
@ata_dma_check_80pin = common dso_local global i32 0, align 4
@ATA_UDMA2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"controller\00", align 1
@ATA_BMDEVSPEC_0 = common dso_local global i32 0, align 4
@ATA_BMDEVSPEC_1 = common dso_local global i32 0, align 4
@PR_SX4X = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_promise_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_promise_setmode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ata_pci_controller*, align 8
  %9 = alloca %struct.ata_channel*, align 8
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  store i32 %12, i32* %7, align 4
  %13 = load i32, i32* %7, align 4
  %14 = call i8* @device_get_softc(i32 %13)
  %15 = bitcast i8* %14 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %15, %struct.ata_pci_controller** %8, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i8* @device_get_softc(i32 %16)
  %18 = bitcast i8* %17 to %struct.ata_channel*
  store %struct.ata_channel* %18, %struct.ata_channel** %9, align 8
  %19 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %20 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = shl i32 %21, 1
  %23 = load i32, i32* %5, align 4
  %24 = add nsw i32 %22, %23
  store i32 %24, i32* %10, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %27 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %26, i32 0, i32 0
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @min(i32 %25, i32 %30)
  store i32 %31, i32* %6, align 4
  %32 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %33 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %32, i32 0, i32 0
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  switch i32 %36, label %115 [
    i32 129, label %37
    i32 130, label %37
    i32 128, label %60
    i32 131, label %81
  ]

37:                                               ; preds = %3, %3
  %38 = load i32, i32* @ata_dma_check_80pin, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %59

40:                                               ; preds = %37
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* @ATA_UDMA2, align 4
  %43 = icmp sgt i32 %41, %42
  br i1 %43, label %44, label %59

44:                                               ; preds = %40
  %45 = load i32, i32* %7, align 4
  %46 = call i32 @pci_read_config(i32 %45, i32 80, i32 2)
  %47 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %48 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = zext i1 %50 to i64
  %52 = select i1 %50, i32 2048, i32 1024
  %53 = and i32 %46, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %44
  %56 = load i32, i32* %4, align 4
  %57 = call i32 @ata_print_cable(i32 %56, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %58 = load i32, i32* @ATA_UDMA2, align 4
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %55, %44, %40, %37
  br label %115

60:                                               ; preds = %3
  %61 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %62 = load i32, i32* @ATA_BMDEVSPEC_0, align 4
  %63 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %61, i32 %62, i32 11)
  %64 = load i32, i32* @ata_dma_check_80pin, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %80

66:                                               ; preds = %60
  %67 = load i32, i32* %6, align 4
  %68 = load i32, i32* @ATA_UDMA2, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %80

70:                                               ; preds = %66
  %71 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %72 = load i32, i32* @ATA_BMDEVSPEC_1, align 4
  %73 = call i32 @ATA_IDX_INB(%struct.ata_channel* %71, i32 %72)
  %74 = and i32 %73, 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %70
  %77 = load i32, i32* %4, align 4
  %78 = call i32 @ata_print_cable(i32 %77, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @ATA_UDMA2, align 4
  store i32 %79, i32* %6, align 4
  br label %80

80:                                               ; preds = %76, %70, %66, %60
  br label %115

81:                                               ; preds = %3
  %82 = load i32, i32* @ata_dma_check_80pin, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %114

84:                                               ; preds = %81
  %85 = load i32, i32* %6, align 4
  %86 = load i32, i32* @ATA_UDMA2, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %114

88:                                               ; preds = %84
  %89 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %90 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %93 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %92, i32 0, i32 0
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = load i32, i32* @PR_SX4X, align 4
  %98 = and i32 %96, %97
  %99 = icmp ne i32 %98, 0
  %100 = zext i1 %99 to i64
  %101 = select i1 %99, i32 787040, i32 608
  %102 = load %struct.ata_channel*, %struct.ata_channel** %9, align 8
  %103 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = shl i32 %104, 7
  %106 = add nsw i32 %101, %105
  %107 = call i32 @ATA_INL(i32 %91, i32 %106)
  %108 = and i32 %107, 16777216
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %114

110:                                              ; preds = %88
  %111 = load i32, i32* %4, align 4
  %112 = call i32 @ata_print_cable(i32 %111, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0))
  %113 = load i32, i32* @ATA_UDMA2, align 4
  store i32 %113, i32* %6, align 4
  br label %114

114:                                              ; preds = %110, %88, %84, %81
  br label %115

115:                                              ; preds = %3, %114, %80, %59
  %116 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %117 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %116, i32 0, i32 0
  %118 = load %struct.TYPE_4__*, %struct.TYPE_4__** %117, align 8
  %119 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %118, i32 0, i32 0
  %120 = load i32, i32* %119, align 4
  %121 = icmp slt i32 %120, 128
  br i1 %121, label %122, label %140

122:                                              ; preds = %115
  %123 = load i32, i32* %7, align 4
  %124 = load i32, i32* %10, align 4
  %125 = shl i32 %124, 2
  %126 = add nsw i32 96, %125
  %127 = load i32, i32* %6, align 4
  %128 = call i64 @ata_mode2idx(i32 %127)
  %129 = getelementptr inbounds [14 x [2 x %struct.TYPE_5__]], [14 x [2 x %struct.TYPE_5__]]* @ata_promise_setmode.timings, i64 0, i64 %128
  %130 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %8, align 8
  %131 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds [2 x %struct.TYPE_5__], [2 x %struct.TYPE_5__]* %129, i64 0, i64 %135
  %137 = bitcast %struct.TYPE_5__* %136 to i64*
  %138 = load i64, i64* %137, align 8
  %139 = call i32 @pci_write_config(i32 %123, i32 %126, i64 %138, i32 4)
  br label %140

140:                                              ; preds = %122, %115
  %141 = load i32, i32* %6, align 4
  ret i32 %141
}

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @pci_read_config(i32, i32, i32) #1

declare dso_local i32 @ata_print_cable(i32, i8*) #1

declare dso_local i32 @ATA_IDX_OUTB(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

declare dso_local i32 @ATA_INL(i32, i32) #1

declare dso_local i32 @pci_write_config(i32, i32, i64, i32) #1

declare dso_local i64 @ata_mode2idx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
