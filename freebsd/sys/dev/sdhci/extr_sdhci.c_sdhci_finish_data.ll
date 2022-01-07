; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_finish_data.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sdhci/extr_sdhci.c_sdhci_finish_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sdhci_slot = type { i32, i32, i64, i64, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i64, %struct.mmc_data* }
%struct.mmc_data = type { i32, i64, i64 }

@SDHCI_SIGNAL_ENABLE = common dso_local global i32 0, align 4
@SDHCI_INT_RESPONSE = common dso_local global i32 0, align 4
@SDHCI_USE_DMA = common dso_local global i32 0, align 4
@MMC_DATA_READ = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@MMC_ERR_BADCRC = common dso_local global i64 0, align 8
@SDHCI_RETUNE_REQ_RESET = common dso_local global i32 0, align 4
@SDHCI_RESET_CMD = common dso_local global i32 0, align 4
@SDHCI_RESET_DATA = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sdhci_finish_data(%struct.sdhci_slot* %0) #0 {
  %2 = alloca %struct.sdhci_slot*, align 8
  %3 = alloca %struct.mmc_data*, align 8
  %4 = alloca i64, align 8
  store %struct.sdhci_slot* %0, %struct.sdhci_slot** %2, align 8
  %5 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %6 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %5, i32 0, i32 5
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.mmc_data*, %struct.mmc_data** %8, align 8
  store %struct.mmc_data* %9, %struct.mmc_data** %3, align 8
  %10 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %11 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %10, i32 0, i32 3
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %1
  %15 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %16 = load i32, i32* @SDHCI_SIGNAL_ENABLE, align 4
  %17 = load i32, i32* @SDHCI_INT_RESPONSE, align 4
  %18 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %19 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %18, i32 0, i32 10
  %20 = load i32, i32* %19, align 8
  %21 = or i32 %20, %17
  store i32 %21, i32* %19, align 8
  %22 = call i32 @WR4(%struct.sdhci_slot* %15, i32 %16, i32 %21)
  br label %23

23:                                               ; preds = %14, %1
  %24 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %25 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %92, label %28

28:                                               ; preds = %23
  %29 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %30 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* @SDHCI_USE_DMA, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %92

35:                                               ; preds = %28
  %36 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %37 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %36, i32 0, i32 5
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 1
  %40 = load %struct.mmc_data*, %struct.mmc_data** %39, align 8
  %41 = icmp ne %struct.mmc_data* %40, null
  br i1 %41, label %42, label %92

42:                                               ; preds = %35
  %43 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %44 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @MMC_DATA_READ, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %82

49:                                               ; preds = %42
  %50 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %51 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %54 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = sub i64 %52, %55
  store i64 %56, i64* %4, align 8
  %57 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %58 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %57, i32 0, i32 7
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %61 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %60, i32 0, i32 6
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %64 = call i32 @bus_dmamap_sync(i32 %59, i32 %62, i32 %63)
  %65 = load %struct.mmc_data*, %struct.mmc_data** %3, align 8
  %66 = getelementptr inbounds %struct.mmc_data, %struct.mmc_data* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = inttoptr i64 %67 to i32*
  %69 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %70 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %69, i32 0, i32 2
  %71 = load i64, i64* %70, align 8
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %74 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %73, i32 0, i32 9
  %75 = load i32, i32* %74, align 4
  %76 = load i64, i64* %4, align 8
  %77 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %78 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %77, i32 0, i32 8
  %79 = load i32, i32* %78, align 8
  %80 = call i32 @ulmin(i64 %76, i32 %79)
  %81 = call i32 @memcpy(i32* %72, i32 %75, i32 %80)
  br label %91

82:                                               ; preds = %42
  %83 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %84 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %83, i32 0, i32 7
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %87 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %86, i32 0, i32 6
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %90 = call i32 @bus_dmamap_sync(i32 %85, i32 %88, i32 %89)
  br label %91

91:                                               ; preds = %82, %49
  br label %92

92:                                               ; preds = %91, %35, %28, %23
  %93 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %94 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %93, i32 0, i32 0
  store i32 1, i32* %94, align 8
  %95 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %96 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %95, i32 0, i32 5
  %97 = load %struct.TYPE_2__*, %struct.TYPE_2__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %101, label %124

101:                                              ; preds = %92
  %102 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %103 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %102, i32 0, i32 5
  %104 = load %struct.TYPE_2__*, %struct.TYPE_2__** %103, align 8
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load i64, i64* @MMC_ERR_BADCRC, align 8
  %108 = icmp eq i64 %106, %107
  br i1 %108, label %109, label %115

109:                                              ; preds = %101
  %110 = load i32, i32* @SDHCI_RETUNE_REQ_RESET, align 4
  %111 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %112 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %111, i32 0, i32 4
  %113 = load i32, i32* %112, align 8
  %114 = or i32 %113, %110
  store i32 %114, i32* %112, align 8
  br label %115

115:                                              ; preds = %109, %101
  %116 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %117 = load i32, i32* @SDHCI_RESET_CMD, align 4
  %118 = call i32 @sdhci_reset(%struct.sdhci_slot* %116, i32 %117)
  %119 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %120 = load i32, i32* @SDHCI_RESET_DATA, align 4
  %121 = call i32 @sdhci_reset(%struct.sdhci_slot* %119, i32 %120)
  %122 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %123 = call i32 @sdhci_start(%struct.sdhci_slot* %122)
  br label %132

124:                                              ; preds = %92
  %125 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %126 = getelementptr inbounds %struct.sdhci_slot, %struct.sdhci_slot* %125, i32 0, i32 3
  %127 = load i64, i64* %126, align 8
  %128 = icmp ne i64 %127, 0
  br i1 %128, label %129, label %132

129:                                              ; preds = %124
  %130 = load %struct.sdhci_slot*, %struct.sdhci_slot** %2, align 8
  %131 = call i32 @sdhci_start(%struct.sdhci_slot* %130)
  br label %132

132:                                              ; preds = %115, %129, %124
  ret void
}

declare dso_local i32 @WR4(%struct.sdhci_slot*, i32, i32) #1

declare dso_local i32 @bus_dmamap_sync(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32, i32) #1

declare dso_local i32 @ulmin(i64, i32) #1

declare dso_local i32 @sdhci_reset(%struct.sdhci_slot*, i32) #1

declare dso_local i32 @sdhci_start(%struct.sdhci_slot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
