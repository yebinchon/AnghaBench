; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_flush_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mmc/extr_mmcsd.c_mmcsd_flush_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mmcsd_softc = type { i32, i32, i32, i32 }

@MMCSD_FLUSH_CACHE = common dso_local global i32 0, align 4
@MMC_ERR_NONE = common dso_local global i32 0, align 4
@MMCSD_DIRTY = common dso_local global i32 0, align 4
@EXT_CSD_CMD_SET_NORMAL = common dso_local global i32 0, align 4
@EXT_CSD_FLUSH_CACHE = common dso_local global i32 0, align 4
@EXT_CSD_FLUSH_CACHE_FLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mmcsd_softc*)* @mmcsd_flush_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmcsd_flush_cache(%struct.mmcsd_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mmcsd_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.mmcsd_softc* %0, %struct.mmcsd_softc** %3, align 8
  %7 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %3, align 8
  %8 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @MMCSD_FLUSH_CACHE, align 4
  %11 = and i32 %9, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @MMC_ERR_NONE, align 4
  store i32 %14, i32* %2, align 4
  br label %61

15:                                               ; preds = %1
  %16 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %3, align 8
  %17 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %4, align 4
  %19 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %3, align 8
  %20 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %5, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @MMCBUS_ACQUIRE_BUS(i32 %22, i32 %23)
  %25 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %3, align 8
  %26 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @MMCSD_DIRTY, align 4
  %29 = and i32 %27, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %15
  %32 = load i32, i32* %5, align 4
  %33 = load i32, i32* %4, align 4
  %34 = call i32 @MMCBUS_RELEASE_BUS(i32 %32, i32 %33)
  %35 = load i32, i32* @MMC_ERR_NONE, align 4
  store i32 %35, i32* %2, align 4
  br label %61

36:                                               ; preds = %15
  %37 = load i32, i32* %5, align 4
  %38 = load i32, i32* %4, align 4
  %39 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %3, align 8
  %40 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = load i32, i32* @EXT_CSD_CMD_SET_NORMAL, align 4
  %43 = load i32, i32* @EXT_CSD_FLUSH_CACHE, align 4
  %44 = load i32, i32* @EXT_CSD_FLUSH_CACHE_FLUSH, align 4
  %45 = call i32 @mmc_switch(i32 %37, i32 %38, i32 %41, i32 %42, i32 %43, i32 %44, i32 60000, i32 1)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @MMC_ERR_NONE, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %56

49:                                               ; preds = %36
  %50 = load i32, i32* @MMCSD_DIRTY, align 4
  %51 = xor i32 %50, -1
  %52 = load %struct.mmcsd_softc*, %struct.mmcsd_softc** %3, align 8
  %53 = getelementptr inbounds %struct.mmcsd_softc, %struct.mmcsd_softc* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %56

56:                                               ; preds = %49, %36
  %57 = load i32, i32* %5, align 4
  %58 = load i32, i32* %4, align 4
  %59 = call i32 @MMCBUS_RELEASE_BUS(i32 %57, i32 %58)
  %60 = load i32, i32* %6, align 4
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %56, %31, %13
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @MMCBUS_ACQUIRE_BUS(i32, i32) #1

declare dso_local i32 @MMCBUS_RELEASE_BUS(i32, i32) #1

declare dso_local i32 @mmc_switch(i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
