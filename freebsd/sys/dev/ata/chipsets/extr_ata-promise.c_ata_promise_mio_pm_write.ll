; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_mio_pm_write.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_mio_pm_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_pci_controller = type { i32 }
%struct.ata_channel = type { i32 }

@ATA_PM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ATA_FEATURE = common dso_local global i32 0, align 4
@ATA_DRIVE = common dso_local global i32 0, align 4
@ATA_COUNT = common dso_local global i32 0, align 4
@ATA_SECTOR = common dso_local global i32 0, align 4
@ATA_CYL_LSB = common dso_local global i32 0, align 4
@ATA_CYL_MSB = common dso_local global i32 0, align 4
@ATA_COMMAND = common dso_local global i32 0, align 4
@ATA_WRITE_PM = common dso_local global i32 0, align 4
@ATA_STATUS = common dso_local global i32 0, align 4
@ATA_S_BUSY = common dso_local global i32 0, align 4
@ATA_E_ABORT = common dso_local global i32 0, align 4
@ATA_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32, i32)* @ata_promise_mio_pm_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_promise_mio_pm_write(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.ata_pci_controller*, align 8
  %11 = alloca %struct.ata_channel*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @device_get_parent(i32 %14)
  %16 = call i8* @device_get_softc(i32 %15)
  %17 = bitcast i8* %16 to %struct.ata_pci_controller*
  store %struct.ata_pci_controller* %17, %struct.ata_pci_controller** %10, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call i8* @device_get_softc(i32 %18)
  %20 = bitcast i8* %19 to %struct.ata_channel*
  store %struct.ata_channel* %20, %struct.ata_channel** %11, align 8
  store i32 0, i32* %12, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %4
  %24 = load %struct.ata_channel*, %struct.ata_channel** %11, align 8
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* %9, align 4
  %27 = call i32 @ATA_IDX_OUTL(%struct.ata_channel* %24, i32 %25, i32 %26)
  store i32 0, i32* %5, align 4
  br label %110

28:                                               ; preds = %4
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* @ATA_PM, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load i32, i32* %8, align 4
  switch i32 %33, label %37 [
    i32 128, label %34
    i32 129, label %35
    i32 130, label %36
  ]

34:                                               ; preds = %32
  store i32 0, i32* %8, align 4
  br label %39

35:                                               ; preds = %32
  store i32 1, i32* %8, align 4
  br label %39

36:                                               ; preds = %32
  store i32 2, i32* %8, align 4
  br label %39

37:                                               ; preds = %32
  %38 = load i32, i32* @EINVAL, align 4
  store i32 %38, i32* %5, align 4
  br label %110

39:                                               ; preds = %36, %35, %34
  br label %40

40:                                               ; preds = %39, %28
  %41 = load %struct.ata_pci_controller*, %struct.ata_pci_controller** %10, align 8
  %42 = getelementptr inbounds %struct.ata_pci_controller, %struct.ata_pci_controller* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ata_channel*, %struct.ata_channel** %11, align 8
  %45 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = shl i32 %46, 8
  %48 = add nsw i32 1256, %47
  %49 = call i32 @ATA_OUTB(i32 %43, i32 %48, i32 15)
  %50 = load %struct.ata_channel*, %struct.ata_channel** %11, align 8
  %51 = load i32, i32* @ATA_FEATURE, align 4
  %52 = load i32, i32* %8, align 4
  %53 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %50, i32 %51, i32 %52)
  %54 = load %struct.ata_channel*, %struct.ata_channel** %11, align 8
  %55 = load i32, i32* @ATA_DRIVE, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %54, i32 %55, i32 %56)
  %58 = load %struct.ata_channel*, %struct.ata_channel** %11, align 8
  %59 = load i32, i32* @ATA_COUNT, align 4
  %60 = load i32, i32* %9, align 4
  %61 = and i32 %60, 255
  %62 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %58, i32 %59, i32 %61)
  %63 = load %struct.ata_channel*, %struct.ata_channel** %11, align 8
  %64 = load i32, i32* @ATA_SECTOR, align 4
  %65 = load i32, i32* %9, align 4
  %66 = ashr i32 %65, 8
  %67 = and i32 %66, 255
  %68 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %63, i32 %64, i32 %67)
  %69 = load %struct.ata_channel*, %struct.ata_channel** %11, align 8
  %70 = load i32, i32* @ATA_CYL_LSB, align 4
  %71 = load i32, i32* %9, align 4
  %72 = ashr i32 %71, 16
  %73 = and i32 %72, 255
  %74 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %69, i32 %70, i32 %73)
  %75 = load %struct.ata_channel*, %struct.ata_channel** %11, align 8
  %76 = load i32, i32* @ATA_CYL_MSB, align 4
  %77 = load i32, i32* %9, align 4
  %78 = ashr i32 %77, 24
  %79 = and i32 %78, 255
  %80 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %75, i32 %76, i32 %79)
  %81 = load %struct.ata_channel*, %struct.ata_channel** %11, align 8
  %82 = load i32, i32* @ATA_COMMAND, align 4
  %83 = load i32, i32* @ATA_WRITE_PM, align 4
  %84 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %81, i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %97, %40
  %86 = load i32, i32* %12, align 4
  %87 = icmp slt i32 %86, 1000000
  br i1 %87, label %88, label %101

88:                                               ; preds = %85
  %89 = load %struct.ata_channel*, %struct.ata_channel** %11, align 8
  %90 = load i32, i32* @ATA_STATUS, align 4
  %91 = call i32 @ATA_IDX_INB(%struct.ata_channel* %89, i32 %90)
  store i32 %91, i32* %13, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* @ATA_S_BUSY, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %97, label %96

96:                                               ; preds = %88
  br label %101

97:                                               ; preds = %88
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1000
  store i32 %99, i32* %12, align 4
  %100 = call i32 @DELAY(i32 1000)
  br label %85

101:                                              ; preds = %96, %85
  %102 = load i32, i32* %12, align 4
  %103 = icmp sge i32 %102, 1000000
  br i1 %103, label %104, label %106

104:                                              ; preds = %101
  %105 = load i32, i32* @ATA_E_ABORT, align 4
  store i32 %105, i32* %5, align 4
  br label %110

106:                                              ; preds = %101
  %107 = load %struct.ata_channel*, %struct.ata_channel** %11, align 8
  %108 = load i32, i32* @ATA_ERROR, align 4
  %109 = call i32 @ATA_IDX_INB(%struct.ata_channel* %107, i32 %108)
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %106, %104, %37, %23
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i8* @device_get_softc(i32) #1

declare dso_local i32 @device_get_parent(i32) #1

declare dso_local i32 @ATA_IDX_OUTL(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @ATA_OUTB(i32, i32, i32) #1

declare dso_local i32 @ATA_IDX_OUTB(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
