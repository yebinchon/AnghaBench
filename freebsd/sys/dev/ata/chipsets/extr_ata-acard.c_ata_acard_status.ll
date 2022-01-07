; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-acard.c_ata_acard_status.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-acard.c_ata_acard_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@ATA_DMA_ACTIVE = common dso_local global i32 0, align 4
@ATA_BMSTAT_PORT = common dso_local global i32 0, align 4
@ATA_BMSTAT_MASK = common dso_local global i32 0, align 4
@ATA_BMSTAT_ACTIVE = common dso_local global i32 0, align 4
@ATA_BMSTAT_INTERRUPT = common dso_local global i32 0, align 4
@ATA_BMSTAT_ERROR = common dso_local global i32 0, align 4
@ATA_BMCMD_PORT = common dso_local global i32 0, align 4
@ATA_BMCMD_START_STOP = common dso_local global i32 0, align 4
@ATA_ALTSTAT = common dso_local global i32 0, align 4
@ATA_S_BUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ata_acard_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ata_acard_status(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.ata_channel*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call %struct.ata_channel* @device_get_softc(i32 %6)
  store %struct.ata_channel* %7, %struct.ata_channel** %4, align 8
  %8 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %9 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* @ATA_DMA_ACTIVE, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %48

15:                                               ; preds = %1
  %16 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %17 = load i32, i32* @ATA_BMSTAT_PORT, align 4
  %18 = call i32 @ATA_IDX_INB(%struct.ata_channel* %16, i32 %17)
  %19 = load i32, i32* @ATA_BMSTAT_MASK, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %5, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @ATA_BMSTAT_ACTIVE, align 4
  %23 = load i32, i32* @ATA_BMSTAT_INTERRUPT, align 4
  %24 = or i32 %22, %23
  %25 = and i32 %21, %24
  %26 = load i32, i32* @ATA_BMSTAT_INTERRUPT, align 4
  %27 = icmp ne i32 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %15
  store i32 0, i32* %2, align 4
  br label %66

29:                                               ; preds = %15
  %30 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %31 = load i32, i32* @ATA_BMSTAT_PORT, align 4
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* @ATA_BMSTAT_ERROR, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  %36 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %30, i32 %31, i32 %35)
  %37 = call i32 @DELAY(i32 1)
  %38 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %39 = load i32, i32* @ATA_BMCMD_PORT, align 4
  %40 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %41 = load i32, i32* @ATA_BMCMD_PORT, align 4
  %42 = call i32 @ATA_IDX_INB(%struct.ata_channel* %40, i32 %41)
  %43 = load i32, i32* @ATA_BMCMD_START_STOP, align 4
  %44 = xor i32 %43, -1
  %45 = and i32 %42, %44
  %46 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %38, i32 %39, i32 %45)
  %47 = call i32 @DELAY(i32 1)
  br label %48

48:                                               ; preds = %29, %1
  %49 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %50 = load i32, i32* @ATA_ALTSTAT, align 4
  %51 = call i32 @ATA_IDX_INB(%struct.ata_channel* %49, i32 %50)
  %52 = load i32, i32* @ATA_S_BUSY, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %65

55:                                               ; preds = %48
  %56 = call i32 @DELAY(i32 100)
  %57 = load %struct.ata_channel*, %struct.ata_channel** %4, align 8
  %58 = load i32, i32* @ATA_ALTSTAT, align 4
  %59 = call i32 @ATA_IDX_INB(%struct.ata_channel* %57, i32 %58)
  %60 = load i32, i32* @ATA_S_BUSY, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %55
  store i32 0, i32* %2, align 4
  br label %66

64:                                               ; preds = %55
  br label %65

65:                                               ; preds = %64, %48
  store i32 1, i32* %2, align 4
  br label %66

66:                                               ; preds = %65, %63, %28
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

declare dso_local i32 @ATA_IDX_OUTB(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
