; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_timing_to_dtr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmc.c_mmc_timing_to_dtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmc_ivars = type { i32, i32 }

@SD_SDR12_MAX = common dso_local global i32 0, align 4
@SD_SDR25_MAX = common dso_local global i32 0, align 4
@SD_DDR50_MAX = common dso_local global i32 0, align 4
@SD_SDR50_MAX = common dso_local global i32 0, align 4
@SD_SDR104_MAX = common dso_local global i32 0, align 4
@MMC_TYPE_DDR52_MAX = common dso_local global i32 0, align 4
@MMC_TYPE_HS200_HS400ES_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmc_ivars*, i32)* @mmc_timing_to_dtr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmc_timing_to_dtr(%struct.mmc_ivars* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mmc_ivars*, align 8
  %5 = alloca i32, align 4
  store %struct.mmc_ivars* %0, %struct.mmc_ivars** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %29 [
    i32 133, label %7
    i32 138, label %11
    i32 130, label %15
    i32 129, label %17
    i32 132, label %19
    i32 128, label %21
    i32 131, label %23
    i32 137, label %25
    i32 136, label %27
    i32 135, label %27
    i32 134, label %27
  ]

7:                                                ; preds = %2
  %8 = load %struct.mmc_ivars*, %struct.mmc_ivars** %4, align 8
  %9 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  store i32 %10, i32* %3, align 4
  br label %30

11:                                               ; preds = %2
  %12 = load %struct.mmc_ivars*, %struct.mmc_ivars** %4, align 8
  %13 = getelementptr inbounds %struct.mmc_ivars, %struct.mmc_ivars* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  store i32 %14, i32* %3, align 4
  br label %30

15:                                               ; preds = %2
  %16 = load i32, i32* @SD_SDR12_MAX, align 4
  store i32 %16, i32* %3, align 4
  br label %30

17:                                               ; preds = %2
  %18 = load i32, i32* @SD_SDR25_MAX, align 4
  store i32 %18, i32* %3, align 4
  br label %30

19:                                               ; preds = %2
  %20 = load i32, i32* @SD_DDR50_MAX, align 4
  store i32 %20, i32* %3, align 4
  br label %30

21:                                               ; preds = %2
  %22 = load i32, i32* @SD_SDR50_MAX, align 4
  store i32 %22, i32* %3, align 4
  br label %30

23:                                               ; preds = %2
  %24 = load i32, i32* @SD_SDR104_MAX, align 4
  store i32 %24, i32* %3, align 4
  br label %30

25:                                               ; preds = %2
  %26 = load i32, i32* @MMC_TYPE_DDR52_MAX, align 4
  store i32 %26, i32* %3, align 4
  br label %30

27:                                               ; preds = %2, %2, %2
  %28 = load i32, i32* @MMC_TYPE_HS200_HS400ES_MAX, align 4
  store i32 %28, i32* %3, align 4
  br label %30

29:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %30

30:                                               ; preds = %29, %27, %25, %23, %21, %19, %17, %15, %11, %7
  %31 = load i32, i32* %3, align 4
  ret i32 %31
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
