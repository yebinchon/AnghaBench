; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_cleanup_slot.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_cleanup_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }

@taskqueue_swi_giant = common dso_local global i32 0, align 4
@SDHCI_RESET_ALL = common dso_local global i32 0, align 4
@SDHCI_HAVE_DMA = common dso_local global i32 0, align 4
@SDHCI_TUNING_SUPPORTED = common dso_local global i32 0, align 4
@M_DEVBUF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sdhci_cleanup_slot(%struct.sdhci_slot* %0) #0 {
  %2 = alloca %struct.sdhci_slot*, align 8
  %3 = alloca i32*, align 8
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %2, align 8
  %4 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %5 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %4, i32 0, i32 10
  %6 = call i32 @callout_drain(i32* %5)
  %7 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %8 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %7, i32 0, i32 9
  %9 = call i32 @callout_drain(i32* %8)
  %10 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %11 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %10, i32 0, i32 8
  %12 = call i32 @callout_drain(i32* %11)
  %13 = load i32, i32* @taskqueue_swi_giant, align 4
  %14 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %15 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %14, i32 0, i32 7
  %16 = call i32 @taskqueue_drain(i32 %13, i32* %15)
  %17 = load i32, i32* @taskqueue_swi_giant, align 4
  %18 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %19 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %18, i32 0, i32 6
  %20 = call i32 @taskqueue_drain_timeout(i32 %17, i32* %19)
  %21 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %22 = call i32 @SDHCI_LOCK(%struct.sdhci_slot* %21)
  %23 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %24 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %23, i32 0, i32 5
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %3, align 8
  %26 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %27 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %26, i32 0, i32 5
  store i32* null, i32** %27, align 8
  %28 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %29 = call i32 @SDHCI_UNLOCK(%struct.sdhci_slot* %28)
  %30 = load i32*, i32** %3, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %38

32:                                               ; preds = %1
  %33 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %34 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 8
  %36 = load i32*, i32** %3, align 8
  %37 = call i32 @device_delete_child(i32 %35, i32* %36)
  br label %38

38:                                               ; preds = %32, %1
  %39 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %40 = call i32 @SDHCI_LOCK(%struct.sdhci_slot* %39)
  %41 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %42 = load i32, i32* @SDHCI_RESET_ALL, align 4
  %43 = call i32 @sdhci_reset(%struct.sdhci_slot* %41, i32 %42)
  %44 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %45 = call i32 @SDHCI_UNLOCK(%struct.sdhci_slot* %44)
  %46 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %47 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* @SDHCI_HAVE_DMA, align 4
  %50 = and i32 %48, %49
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %55

52:                                               ; preds = %38
  %53 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %54 = call i32 @sdhci_dma_free(%struct.sdhci_slot* %53)
  br label %55

55:                                               ; preds = %52, %38
  %56 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %57 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SDHCI_TUNING_SUPPORTED, align 4
  %60 = and i32 %58, %59
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %78

62:                                               ; preds = %55
  %63 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %64 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* @M_DEVBUF, align 4
  %67 = call i32 @free(i32 %65, i32 %66)
  %68 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %69 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @M_DEVBUF, align 4
  %72 = call i32 @free(i32 %70, i32 %71)
  %73 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %74 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* @M_DEVBUF, align 4
  %77 = call i32 @free(i32 %75, i32 %76)
  br label %78

78:                                               ; preds = %62, %55
  %79 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %80 = call i32 @SDHCI_LOCK_DESTROY(%struct.sdhci_slot* %79)
  ret i32 0
}

declare dso_local i32 @callout_drain(i32*) #1

declare dso_local i32 @taskqueue_drain(i32, i32*) #1

declare dso_local i32 @taskqueue_drain_timeout(i32, i32*) #1

declare dso_local i32 @SDHCI_LOCK(%struct.sdhci_slot*) #1

declare dso_local i32 @SDHCI_UNLOCK(%struct.sdhci_slot*) #1

declare dso_local i32 @device_delete_child(i32, i32*) #1

declare dso_local i32 @sdhci_reset(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @sdhci_dma_free(%struct.sdhci_slot*) #1

declare dso_local i32 @free(i32, i32) #1

declare dso_local i32 @SDHCI_LOCK_DESTROY(%struct.sdhci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
