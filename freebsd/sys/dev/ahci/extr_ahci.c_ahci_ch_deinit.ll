; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_ch_deinit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ahci/extr_ahci.c_ahci_ch_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ahci_channel = type { i32 }

@AHCI_P_IE = common dso_local global i32 0, align 4
@AHCI_P_CMD = common dso_local global i32 0, align 4
@AHCI_P_SCTL = common dso_local global i32 0, align 4
@AHCI_P_CMD_SLUMBER = common dso_local global i32 0, align 4
@ATA_SC_DET_DISABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ahci_ch_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ahci_ch_deinit(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ahci_channel*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call %struct.ahci_channel* @device_get_softc(i32 %4)
  store %struct.ahci_channel* %5, %struct.ahci_channel** %3, align 8
  %6 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %7 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @AHCI_P_IE, align 4
  %10 = call i32 @ATA_OUTL(i32 %8, i32 %9, i32 0)
  %11 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %12 = call i32 @ahci_stop(%struct.ahci_channel* %11)
  %13 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %14 = call i32 @ahci_stop_fr(%struct.ahci_channel* %13)
  %15 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %16 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @AHCI_P_CMD, align 4
  %19 = call i32 @ATA_OUTL(i32 %17, i32 %18, i32 0)
  %20 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %21 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @AHCI_P_SCTL, align 4
  %24 = call i32 @ATA_OUTL(i32 %22, i32 %23, i32 0)
  %25 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %26 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @AHCI_P_CMD, align 4
  %29 = load i32, i32* @AHCI_P_CMD_SLUMBER, align 4
  %30 = call i32 @ATA_OUTL(i32 %27, i32 %28, i32 %29)
  %31 = call i32 @DELAY(i32 100)
  %32 = load %struct.ahci_channel*, %struct.ahci_channel** %3, align 8
  %33 = getelementptr inbounds %struct.ahci_channel, %struct.ahci_channel* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i32, i32* @AHCI_P_SCTL, align 4
  %36 = load i32, i32* @ATA_SC_DET_DISABLE, align 4
  %37 = call i32 @ATA_OUTL(i32 %34, i32 %35, i32 %36)
  ret i32 0
}

declare dso_local %struct.ahci_channel* @device_get_softc(i32) #1

declare dso_local i32 @ATA_OUTL(i32, i32, i32) #1

declare dso_local i32 @ahci_stop(%struct.ahci_channel*) #1

declare dso_local i32 @ahci_stop_fr(%struct.ahci_channel*) #1

declare dso_local i32 @DELAY(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
