; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_dmareset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ata/chipsets/extr_ata-promise.c_ata_promise_dmareset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ata_channel = type { i32 }

@ATA_BMCMD_PORT = common dso_local global i32 0, align 4
@ATA_BMCMD_START_STOP = common dso_local global i32 0, align 4
@ATA_BMSTAT_PORT = common dso_local global i32 0, align 4
@ATA_BMSTAT_INTERRUPT = common dso_local global i32 0, align 4
@ATA_BMSTAT_ERROR = common dso_local global i32 0, align 4
@ATA_DMA_ACTIVE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @ata_promise_dmareset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ata_promise_dmareset(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ata_channel*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ata_channel* @device_get_softc(i32 %4)
  store %struct.ata_channel* %5, %struct.ata_channel** %3, align 8
  %6 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %7 = load i32, i32* @ATA_BMCMD_PORT, align 4
  %8 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %9 = load i32, i32* @ATA_BMCMD_PORT, align 4
  %10 = call i32 @ATA_IDX_INB(%struct.ata_channel* %8, i32 %9)
  %11 = load i32, i32* @ATA_BMCMD_START_STOP, align 4
  %12 = xor i32 %11, -1
  %13 = and i32 %10, %12
  %14 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %6, i32 %7, i32 %13)
  %15 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %16 = load i32, i32* @ATA_BMSTAT_PORT, align 4
  %17 = load i32, i32* @ATA_BMSTAT_INTERRUPT, align 4
  %18 = load i32, i32* @ATA_BMSTAT_ERROR, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @ATA_IDX_OUTB(%struct.ata_channel* %15, i32 %16, i32 %19)
  %21 = load i32, i32* @ATA_DMA_ACTIVE, align 4
  %22 = xor i32 %21, -1
  %23 = load %struct.ata_channel*, %struct.ata_channel** %3, align 8
  %24 = getelementptr inbounds %struct.ata_channel, %struct.ata_channel* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = and i32 %25, %22
  store i32 %26, i32* %24, align 4
  ret void
}

declare dso_local %struct.ata_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_IDX_OUTB(%struct.ata_channel*, i32, i32) #1

declare dso_local i32 @ATA_IDX_INB(%struct.ata_channel*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
