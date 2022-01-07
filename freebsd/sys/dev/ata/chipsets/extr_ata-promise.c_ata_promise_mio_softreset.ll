; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_mio_softreset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_mio_softreset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32 }
%struct.ata_channel = type { i32 }

@ATA_DRIVE = common dso_local global i32 0, align 4
@ATA_D_IBM = common dso_local global i32 0, align 4
@ATA_D_LBA = common dso_local global i32 0, align 4
@ATA_MASTER = common dso_local global i32 0, align 4
@ATA_CONTROL = common dso_local global i32 0, align 4
@ATA_A_IDS = common dso_local global i32 0, align 4
@ATA_A_RESET = common dso_local global i32 0, align 4
@ATA_ERROR = common dso_local global i32 0, align 4
@ATA_STATUS = common dso_local global i32 0, align 4
@ATA_S_BUSY = common dso_local global i32 0, align 4
@ATA_COUNT = common dso_local global i32 0, align 4
@ATA_SECTOR = common dso_local global i32 0, align 4
@ATA_CYL_LSB = common dso_local global i32 0, align 4
@ATA_CYL_MSB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ata_promise_mio_softreset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_promise_mio_softreset(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ata_pci_controller*, align 8
  %7 = alloca %struct.ata_channel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @device_get_parent(i32 %10)
  %12 = call i8* @device_get_softc(i32 %11)
  %13 = bitcast i8* %12 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %13, %struct.ata_pci_controller** %6, align 8
  %14 = load i32, i32* %4, align 4
  %15 = call i8* @device_get_softc(i32 %14)
  %16 = bitcast i8* %15 to %struct.ata_channel*
  store %struct.ata_channel* %16, %struct.ata_channel** %7, align 8
  %17 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %6, align 8
  %18 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %21 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = shl i32 %22, 8
  %24 = add nsw i32 1256, %23
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, 15
  %27 = call i32 @ATA_OUTB(i32 %19, i32 %24, i32 %26)
  %28 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %29 = load i32, i32* @ATA_DRIVE, align 4
  %30 = load i32, i32* @ATA_D_IBM, align 4
  %31 = load i32, i32* @ATA_D_LBA, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @ATA_MASTER, align 4
  %34 = call i32 @ATA_DEV(i32 %33)
  %35 = or i32 %32, %34
  %36 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %28, i32 %29, i32 %35)
  %37 = call i32 @DELAY(i32 10)
  %38 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %39 = load i32, i32* @ATA_CONTROL, align 4
  %40 = load i32, i32* @ATA_A_IDS, align 4
  %41 = load i32, i32* @ATA_A_RESET, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %38, i32 %39, i32 %42)
  %44 = call i32 @ata_udelay(i32 10000)
  %45 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %46 = load i32, i32* @ATA_CONTROL, align 4
  %47 = load i32, i32* @ATA_A_IDS, align 4
  %48 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %45, i32 %46, i32 %47)
  %49 = call i32 @ata_udelay(i32 150000)
  %50 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %51 = load i32, i32* @ATA_ERROR, align 4
  %52 = call i32 @ATA_IDX_INB(%struct.ata_channel* %50, i32 %51)
  store i32 0, i32* %8, align 4
  br label %53

53:                                               ; preds = %100, %2
  %54 = load i32, i32* %8, align 4
  %55 = icmp slt i32 %54, 100
  br i1 %55, label %56, label %103

56:                                               ; preds = %53
  %57 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %58 = load i32, i32* @ATA_ERROR, align 4
  %59 = call i32 @ATA_IDX_INB(%struct.ata_channel* %57, i32 %58)
  %60 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %61 = load i32, i32* @ATA_STATUS, align 4
  %62 = call i32 @ATA_IDX_INB(%struct.ata_channel* %60, i32 %61)
  store i32 %62, i32* %9, align 4
  %63 = load i32, i32* %9, align 4
  %64 = load i32, i32* @ATA_S_BUSY, align 4
  %65 = and i32 %63, %64
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %86, label %67

67:                                               ; preds = %56
  %68 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %69 = load i32, i32* @ATA_COUNT, align 4
  %70 = call i32 @ATA_IDX_INB(%struct.ata_channel* %68, i32 %69)
  %71 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %72 = load i32, i32* @ATA_SECTOR, align 4
  %73 = call i32 @ATA_IDX_INB(%struct.ata_channel* %71, i32 %72)
  %74 = shl i32 %73, 8
  %75 = or i32 %70, %74
  %76 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %77 = load i32, i32* @ATA_CYL_LSB, align 4
  %78 = call i32 @ATA_IDX_INB(%struct.ata_channel* %76, i32 %77)
  %79 = shl i32 %78, 16
  %80 = or i32 %75, %79
  %81 = load %struct.ata_channel*, %struct.ata_channel** %7, align 8
  %82 = load i32, i32* @ATA_CYL_MSB, align 4
  %83 = call i32 @ATA_IDX_INB(%struct.ata_channel* %81, i32 %82)
  %84 = shl i32 %83, 24
  %85 = or i32 %80, %84
  store i32 %85, i32* %3, align 4
  br label %104

86:                                               ; preds = %56
  %87 = load i32, i32* %9, align 4
  %88 = load i32, i32* @ATA_S_BUSY, align 4
  %89 = and i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %97

91:                                               ; preds = %86
  %92 = load i32, i32* %9, align 4
  %93 = icmp eq i32 %92, 255
  br i1 %93, label %94, label %98

94:                                               ; preds = %91
  %95 = load i32, i32* %8, align 4
  %96 = icmp sgt i32 %95, 10
  br i1 %96, label %97, label %98

97:                                               ; preds = %94, %86
  br label %103

98:                                               ; preds = %94, %91
  %99 = call i32 @ata_udelay(i32 100000)
  br label %100

100:                                              ; preds = %98
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  store i32 %102, i32* %8, align 4
  br label %53

103:                                              ; preds = %97, %53
  store i32 -1, i32* %3, align 4
  br label %104

104:                                              ; preds = %103, %67
  %105 = load i32, i32* %3, align 4
  ret i32 %105
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ATA_OUTB(i32, i32, i32) #1

declare dso_local i32 @ATA_IDX_OUTB(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @ATA_DEV(i32) #1

declare dso_local i32 @DELAY(i32) #1

declare dso_local i32 @ata_udelay(i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
