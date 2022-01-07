; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_generic_suspend.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_generic_suspend.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32, i32 }

@SDHCI_TUNING_ENABLED = common dso_local global i32 0, align 4
@SDHCI_RESET_ALL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdhci_generic_suspend(%struct.sdhci_slot* %0) #0 {
  %2 = alloca %struct.sdhci_slot*, align 8
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %2, align 8
  %3 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %4 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %3, i32 0, i32 1
  %5 = call i32 @callout_drain(i32* %4)
  %6 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %7 = call i32 @SDHCI_LOCK(%struct.sdhci_slot* %6)
  %8 = load i32, i32* @SDHCI_TUNING_ENABLED, align 4
  %9 = xor i32 %8, -1
  %10 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %11 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = and i32 %12, %9
  store i32 %13, i32* %11, align 4
  %14 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %15 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %16 = call i32 @sdhci_reset(%struct.sdhci_slot* %14, i32 %15)
  %17 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %18 = call i32 @SDHCI_UNLOCK(%struct.sdhci_slot* %17)
  ret i32 0
}

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @SDHCI_LOCK(%struct.sdhci_slot*) #1

declare dso_local i32 @sdhci_reset(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @SDHCI_UNLOCK(%struct.sdhci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
