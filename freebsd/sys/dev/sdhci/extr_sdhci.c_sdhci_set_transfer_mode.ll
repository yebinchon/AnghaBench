; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_set_transfer_mode.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_set_transfer_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64 }
%struct.mmc_data = type { i32, i32, i32 }

@SDHCI_TRNS_BLK_CNT_EN = common dso_local global i32 0, align 4
@SDHCI_TRNS_MULTI = common dso_local global i32 0, align 4
@SDHCI_QUIRK_BROKEN_AUTO_STOP = common dso_local global i32 0, align 4
@SDHCI_TRNS_ACMD12 = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@SDHCI_TRNS_READ = common dso_local global i32 0, align 4
@SDHCI_USE_DMA = common dso_local global i32 0, align 4
@SDHCI_TRNS_DMA = common dso_local global i32 0, align 4
@SDHCI_TRANSFER_MODE = common dso_local global i32 0, align 4
@MMC_STOP_TRANSMISSION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sdhci_slot*, %struct.mmc_data*)* @sdhci_set_transfer_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sdhci_set_transfer_mode(%struct.sdhci_slot* %0, %struct.mmc_data* %1) #0 {
  %3 = alloca %struct.sdhci_slot*, align 8
  %4 = alloca %struct.mmc_data*, align 8
  %5 = alloca i32, align 4
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %3, align 8
  store %struct.mmc_data* %1, %struct.mmc_data** %4, align 8
  %6 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %7 = icmp eq %struct.mmc_data* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %80

9:                                                ; preds = %2
  %10 = load i32, i32* @SDHCI_TRNS_BLK_CNT_EN, align 4
  store i32 %10, i32* %5, align 4
  %11 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %12 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = icmp sgt i32 %13, 512
  br i1 %14, label %20, label %15

15:                                               ; preds = %9
  %16 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %17 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 1
  br i1 %19, label %20, label %53

20:                                               ; preds = %15, %9
  %21 = load i32, i32* @SDHCI_TRNS_MULTI, align 4
  %22 = load i32, i32* %5, align 4
  %23 = or i32 %22, %21
  store i32 %23, i32* %5, align 4
  %24 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %25 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %52

28:                                               ; preds = %20
  %29 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %30 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %29, i32 0, i32 2
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %43

35:                                               ; preds = %28
  %36 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %37 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @SDHCI_QUIRK_BROKEN_AUTO_STOP, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  %42 = xor i1 %41, true
  br label %43

43:                                               ; preds = %35, %28
  %44 = phi i1 [ false, %28 ], [ %42, %35 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @__predict_true(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %43
  %49 = load i32, i32* @SDHCI_TRNS_ACMD12, align 4
  %50 = load i32, i32* %5, align 4
  %51 = or i32 %50, %49
  store i32 %51, i32* %5, align 4
  br label %52

52:                                               ; preds = %48, %43, %20
  br label %53

53:                                               ; preds = %52, %15
  %54 = load %struct.mmc_data*, %struct.mmc_data** %4, align 8
  %55 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32, i32* @MMC_DATA_READ, align 4
  %58 = and i32 %56, %57
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %64

60:                                               ; preds = %53
  %61 = load i32, i32* @SDHCI_TRNS_READ, align 4
  %62 = load i32, i32* %5, align 4
  %63 = or i32 %62, %61
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %60, %53
  %65 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %66 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SDHCI_USE_DMA, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %75

71:                                               ; preds = %64
  %72 = load i32, i32* @SDHCI_TRNS_DMA, align 4
  %73 = load i32, i32* %5, align 4
  %74 = or i32 %73, %72
  store i32 %74, i32* %5, align 4
  br label %75

75:                                               ; preds = %71, %64
  %76 = load %struct.sdhci_slot*, %struct.sdhci_slot** %3, align 8
  %77 = load i32, i32* @SDHCI_TRANSFER_MODE, align 4
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @WR2(%struct.sdhci_slot* %76, i32 %77, i32 %78)
  br label %80

80:                                               ; preds = %75, %8
  ret void
}

declare dso_local i64 @__predict_true(i32) #1

declare dso_local i32 @WR2(%struct.sdhci_slot*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
