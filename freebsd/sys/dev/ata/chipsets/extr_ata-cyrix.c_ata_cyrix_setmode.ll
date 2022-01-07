; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-cyrix.c_ata_cyrix_setmode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-cyrix.c_ata_cyrix_setmode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i64 }
%struct.ata_channel = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@ata_cyrix_setmode.piotiming = internal constant [5 x i32] [i32 37234, i32 74097, i32 131200, i32 204816, i32 262160], align 16
@ata_cyrix_setmode.dmatiming = internal constant [3 x i32] [i32 489329, i32 74017, i32 8224], align 4
@ata_cyrix_setmode.udmatiming = internal constant [3 x i32] [i32 9572944, i32 9507136, i32 9506864], align 4
@ATA_UDMA2 = common dso_local global i32 0, align 4
@ATA_UDMA0 = common dso_local global i32 0, align 4
@ATA_BMCMD_PORT = common dso_local global i64 0, align 8
@ATA_MODE_MASK = common dso_local global i32 0, align 4
@ATA_PIO4 = common dso_local global i32 0, align 4
@ATA_WDMA0 = common dso_local global i32 0, align 4
@ATA_PIO0 = common dso_local global i32 0, align 4
@ATA_WDMA1 = common dso_local global i32 0, align 4
@ATA_PIO3 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @ata_cyrix_setmode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_cyrix_setmode(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ata_pci_controller*, align 8
  %8 = alloca %struct.ata_channel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @device_get_parent(i32 %11)
  %13 = call i8* @device_get_softc(i32 %12)
  %14 = bitcast i8* %13 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %14, %struct.ata_pci_controller** %7, align 8
  %15 = load i32, i32* %4, align 4
  %16 = call i8* @device_get_softc(i32 %15)
  %17 = bitcast i8* %16 to %struct.ata_channel*
  store %struct.ata_channel* %17, %struct.ata_channel** %8, align 8
  %18 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %19 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = shl i32 %20, 1
  %22 = load i32, i32* %5, align 4
  %23 = add nsw i32 %21, %22
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* @ATA_UDMA2, align 4
  %26 = call i32 @min(i32 %24, i32 %25)
  store i32 %26, i32* %6, align 4
  %27 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %7, align 8
  %28 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %112

31:                                               ; preds = %3
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* @ATA_UDMA0, align 4
  %34 = icmp sge i32 %32, %33
  br i1 %34, label %35, label %54

35:                                               ; preds = %31
  %36 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %37 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %36, i32 0, i32 1
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = load i64, i64* @ATA_BMCMD_PORT, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %39
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %9, align 4
  %44 = shl i32 %43, 3
  %45 = add nsw i32 36, %44
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @ATA_MODE_MASK, align 4
  %48 = and i32 %46, %47
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [3 x i32], [3 x i32]* @ata_cyrix_setmode.udmatiming, i64 0, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @ATA_OUTL(i32 %42, i32 %45, i32 %51)
  %53 = load i32, i32* @ATA_PIO4, align 4
  store i32 %53, i32* %10, align 4
  br label %96

54:                                               ; preds = %31
  %55 = load i32, i32* %6, align 4
  %56 = load i32, i32* @ATA_WDMA0, align 4
  %57 = icmp sge i32 %55, %56
  br i1 %57, label %58, label %93

58:                                               ; preds = %54
  %59 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %60 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %59, i32 0, i32 1
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = load i64, i64* @ATA_BMCMD_PORT, align 8
  %63 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %9, align 4
  %67 = shl i32 %66, 3
  %68 = add nsw i32 36, %67
  %69 = load i32, i32* %6, align 4
  %70 = load i32, i32* @ATA_MODE_MASK, align 4
  %71 = and i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* @ata_cyrix_setmode.dmatiming, i64 0, i64 %72
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @ATA_OUTL(i32 %65, i32 %68, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @ATA_WDMA0, align 4
  %78 = icmp eq i32 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %58
  %80 = load i32, i32* @ATA_PIO0, align 4
  br label %91

81:                                               ; preds = %58
  %82 = load i32, i32* %6, align 4
  %83 = load i32, i32* @ATA_WDMA1, align 4
  %84 = icmp eq i32 %82, %83
  br i1 %84, label %85, label %87

85:                                               ; preds = %81
  %86 = load i32, i32* @ATA_PIO3, align 4
  br label %89

87:                                               ; preds = %81
  %88 = load i32, i32* @ATA_PIO4, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  br label %91

91:                                               ; preds = %89, %79
  %92 = phi i32 [ %80, %79 ], [ %90, %89 ]
  store i32 %92, i32* %10, align 4
  br label %95

93:                                               ; preds = %54
  %94 = load i32, i32* %6, align 4
  store i32 %94, i32* %10, align 4
  br label %95

95:                                               ; preds = %93, %91
  br label %96

96:                                               ; preds = %95, %35
  %97 = load %struct.ata_channel*, %struct.ata_channel** %8, align 8
  %98 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %97, i32 0, i32 1
  %99 = load %struct.TYPE_2__*, %struct.TYPE_2__** %98, align 8
  %100 = load i64, i64* @ATA_BMCMD_PORT, align 8
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i64 %100
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load i32, i32* %9, align 4
  %105 = shl i32 %104, 3
  %106 = add nsw i32 32, %105
  %107 = load i32, i32* %10, align 4
  %108 = call i64 @ata_mode2idx(i32 %107)
  %109 = getelementptr inbounds [5 x i32], [5 x i32]* @ata_cyrix_setmode.piotiming, i64 0, i64 %108
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ATA_OUTL(i32 %103, i32 %106, i32 %110)
  br label %112

112:                                              ; preds = %96, %3
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i64 @ata_mode2idx(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
