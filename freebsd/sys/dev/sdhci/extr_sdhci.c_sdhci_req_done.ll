; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_req_done.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_req_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32*, %struct.mmc_request*, i32 }
%struct.mmc_request = type { i32 (%struct.mmc_request*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_slot*)* @sdhci_req_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_req_done(%struct.sdhci_slot* %0) #0 {
  %2 = alloca %struct.sdhci_slot*, align 8
  %3 = alloca %struct.mmc_request*, align 8
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %2, align 8
  %4 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %5 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %4, i32 0, i32 1
  %6 = load %struct.mmc_request*, %struct.mmc_request** %5, align 8
  %7 = icmp ne %struct.mmc_request* %6, null
  br i1 %7, label %8, label %29

8:                                                ; preds = %1
  %9 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %10 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %14 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %15 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %14, i32 0, i32 2
  %16 = call i32 @callout_stop(i32* %15)
  %17 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %18 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %17, i32 0, i32 1
  %19 = load %struct.mmc_request*, %struct.mmc_request** %18, align 8
  store %struct.mmc_request* %19, %struct.mmc_request** %3, align 8
  %20 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %21 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %20, i32 0, i32 1
  store %struct.mmc_request* null, %struct.mmc_request** %21, align 8
  %22 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %23 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %22, i32 0, i32 0
  store i32* null, i32** %23, align 8
  %24 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %25 = getelementptr inbounds %struct.mmc_request, %struct.mmc_request* %24, i32 0, i32 0
  %26 = load i32 (%struct.mmc_request*)*, i32 (%struct.mmc_request*)** %25, align 8
  %27 = load %struct.mmc_request*, %struct.mmc_request** %3, align 8
  %28 = call i32 %26(%struct.mmc_request* %27)
  br label %29

29:                                               ; preds = %13, %8, %1
  ret void
}

declare dso_local i32 @callout_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
