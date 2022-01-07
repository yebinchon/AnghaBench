; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32, i32, i32 }

@SDHCI_RESET_ALL = common dso_local global i32 0, align 4
@SDHCI_INT_BUS_POWER = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_END_BIT = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_CRC = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_TIMEOUT = common dso_local global i32 0, align 4
@SDHCI_INT_INDEX = common dso_local global i32 0, align 4
@SDHCI_INT_END_BIT = common dso_local global i32 0, align 4
@SDHCI_INT_CRC = common dso_local global i32 0, align 4
@SDHCI_INT_TIMEOUT = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_AVAIL = common dso_local global i32 0, align 4
@SDHCI_INT_SPACE_AVAIL = common dso_local global i32 0, align 4
@SDHCI_INT_DMA_END = common dso_local global i32 0, align 4
@SDHCI_INT_DATA_END = common dso_local global i32 0, align 4
@SDHCI_INT_RESPONSE = common dso_local global i32 0, align 4
@SDHCI_INT_ACMD12ERR = common dso_local global i32 0, align 4
@SDHCI_QUIRK_POLL_CARD_PRESENT = common dso_local global i32 0, align 4
@SDHCI_NON_REMOVABLE = common dso_local global i32 0, align 4
@SDHCI_INT_CARD_REMOVE = common dso_local global i32 0, align 4
@SDHCI_INT_CARD_INSERT = common dso_local global i32 0, align 4
@SDHCI_INT_ENABLE = common dso_local global i32 0, align 4
@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_slot*)* @sdhci_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_init(%struct.sdhci_slot* %0) #0 {
  %2 = alloca %struct.sdhci_slot*, align 8
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %2, align 8
  %3 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %4 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %5 = call i32 @sdhci_reset(%struct.sdhci_slot* %3, i32 %4)
  %6 = load i32, i32* @SDHCI_INT_BUS_POWER, align 4
  %7 = load i32, i32* @SDHCI_INT_DATA_END_BIT, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @SDHCI_INT_DATA_CRC, align 4
  %10 = or i32 %8, %9
  %11 = load i32, i32* @SDHCI_INT_DATA_TIMEOUT, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @SDHCI_INT_INDEX, align 4
  %14 = or i32 %12, %13
  %15 = load i32, i32* @SDHCI_INT_END_BIT, align 4
  %16 = or i32 %14, %15
  %17 = load i32, i32* @SDHCI_INT_CRC, align 4
  %18 = or i32 %16, %17
  %19 = load i32, i32* @SDHCI_INT_TIMEOUT, align 4
  %20 = or i32 %18, %19
  %21 = load i32, i32* @SDHCI_INT_DATA_AVAIL, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @SDHCI_INT_SPACE_AVAIL, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @SDHCI_INT_DMA_END, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @SDHCI_INT_DATA_END, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @SDHCI_INT_RESPONSE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @SDHCI_INT_ACMD12ERR, align 4
  %32 = or i32 %30, %31
  %33 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %34 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 4
  %35 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %36 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @SDHCI_QUIRK_POLL_CARD_PRESENT, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %56, label %41

41:                                               ; preds = %1
  %42 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %43 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @SDHCI_NON_REMOVABLE, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %56, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @SDHCI_INT_CARD_REMOVE, align 4
  %50 = load i32, i32* @SDHCI_INT_CARD_INSERT, align 4
  %51 = or i32 %49, %50
  %52 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %53 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %48, %41, %1
  %57 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %58 = load i32, i32* @SDHCI_INT_ENABLE, align 4
  %59 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %60 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i32 @WR4(%struct.sdhci_slot* %57, i32 %58, i32 %61)
  %63 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %64 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %65 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %66 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = call i32 @WR4(%struct.sdhci_slot* %63, i32 %64, i32 %67)
  ret void
}

declare dso_local i32 @sdhci_reset(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @WR4(%struct.sdhci_slot*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
