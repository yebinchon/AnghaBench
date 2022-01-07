; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_config_dma_cache.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/axgbe/extr_xgbe-dev.c_xgbe_config_dma_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xgbe_prv_data = type { i32, i32, i32 }

@DMA_AXIARCR = common dso_local global i32 0, align 4
@DRC = common dso_local global i32 0, align 4
@DRD = common dso_local global i32 0, align 4
@TEC = common dso_local global i32 0, align 4
@TED = common dso_local global i32 0, align 4
@THC = common dso_local global i32 0, align 4
@THD = common dso_local global i32 0, align 4
@DMA_AXIAWCR = common dso_local global i32 0, align 4
@DWC = common dso_local global i32 0, align 4
@DWD = common dso_local global i32 0, align 4
@RPC = common dso_local global i32 0, align 4
@RPD = common dso_local global i32 0, align 4
@RHC = common dso_local global i32 0, align 4
@RHD = common dso_local global i32 0, align 4
@TDC = common dso_local global i32 0, align 4
@TDD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xgbe_prv_data*)* @xgbe_config_dma_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xgbe_config_dma_cache(%struct.xgbe_prv_data* %0) #0 {
  %2 = alloca %struct.xgbe_prv_data*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store %struct.xgbe_prv_data* %0, %struct.xgbe_prv_data** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i32, i32* %3, align 4
  %6 = load i32, i32* @DMA_AXIARCR, align 4
  %7 = load i32, i32* @DRC, align 4
  %8 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %9 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @XGMAC_SET_BITS(i32 %5, i32 %6, i32 %7, i32 %10)
  %12 = load i32, i32* %3, align 4
  %13 = load i32, i32* @DMA_AXIARCR, align 4
  %14 = load i32, i32* @DRD, align 4
  %15 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %16 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @XGMAC_SET_BITS(i32 %12, i32 %13, i32 %14, i32 %17)
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* @DMA_AXIARCR, align 4
  %21 = load i32, i32* @TEC, align 4
  %22 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %23 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @XGMAC_SET_BITS(i32 %19, i32 %20, i32 %21, i32 %24)
  %26 = load i32, i32* %3, align 4
  %27 = load i32, i32* @DMA_AXIARCR, align 4
  %28 = load i32, i32* @TED, align 4
  %29 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %30 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @XGMAC_SET_BITS(i32 %26, i32 %27, i32 %28, i32 %31)
  %33 = load i32, i32* %3, align 4
  %34 = load i32, i32* @DMA_AXIARCR, align 4
  %35 = load i32, i32* @THC, align 4
  %36 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %37 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @XGMAC_SET_BITS(i32 %33, i32 %34, i32 %35, i32 %38)
  %40 = load i32, i32* %3, align 4
  %41 = load i32, i32* @DMA_AXIARCR, align 4
  %42 = load i32, i32* @THD, align 4
  %43 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %44 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @XGMAC_SET_BITS(i32 %40, i32 %41, i32 %42, i32 %45)
  %47 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %48 = load i32, i32* @DMA_AXIARCR, align 4
  %49 = load i32, i32* %3, align 4
  %50 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %47, i32 %48, i32 %49)
  store i32 0, i32* %4, align 4
  %51 = load i32, i32* %4, align 4
  %52 = load i32, i32* @DMA_AXIAWCR, align 4
  %53 = load i32, i32* @DWC, align 4
  %54 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %55 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @XGMAC_SET_BITS(i32 %51, i32 %52, i32 %53, i32 %56)
  %58 = load i32, i32* %4, align 4
  %59 = load i32, i32* @DMA_AXIAWCR, align 4
  %60 = load i32, i32* @DWD, align 4
  %61 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %62 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @XGMAC_SET_BITS(i32 %58, i32 %59, i32 %60, i32 %63)
  %65 = load i32, i32* %4, align 4
  %66 = load i32, i32* @DMA_AXIAWCR, align 4
  %67 = load i32, i32* @RPC, align 4
  %68 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %69 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @XGMAC_SET_BITS(i32 %65, i32 %66, i32 %67, i32 %70)
  %72 = load i32, i32* %4, align 4
  %73 = load i32, i32* @DMA_AXIAWCR, align 4
  %74 = load i32, i32* @RPD, align 4
  %75 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %76 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @XGMAC_SET_BITS(i32 %72, i32 %73, i32 %74, i32 %77)
  %79 = load i32, i32* %4, align 4
  %80 = load i32, i32* @DMA_AXIAWCR, align 4
  %81 = load i32, i32* @RHC, align 4
  %82 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %83 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @XGMAC_SET_BITS(i32 %79, i32 %80, i32 %81, i32 %84)
  %86 = load i32, i32* %4, align 4
  %87 = load i32, i32* @DMA_AXIAWCR, align 4
  %88 = load i32, i32* @RHD, align 4
  %89 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %90 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @XGMAC_SET_BITS(i32 %86, i32 %87, i32 %88, i32 %91)
  %93 = load i32, i32* %4, align 4
  %94 = load i32, i32* @DMA_AXIAWCR, align 4
  %95 = load i32, i32* @TDC, align 4
  %96 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %97 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @XGMAC_SET_BITS(i32 %93, i32 %94, i32 %95, i32 %98)
  %100 = load i32, i32* %4, align 4
  %101 = load i32, i32* @DMA_AXIAWCR, align 4
  %102 = load i32, i32* @TDD, align 4
  %103 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %104 = getelementptr inbounds %struct.xgbe_prv_data, %struct.xgbe_prv_data* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @XGMAC_SET_BITS(i32 %100, i32 %101, i32 %102, i32 %105)
  %107 = load %struct.xgbe_prv_data*, %struct.xgbe_prv_data** %2, align 8
  %108 = load i32, i32* @DMA_AXIAWCR, align 4
  %109 = load i32, i32* %4, align 4
  %110 = call i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data* %107, i32 %108, i32 %109)
  ret void
}

declare dso_local i32 @XGMAC_SET_BITS(i32, i32, i32, i32) #1

declare dso_local i32 @XGMAC_IOWRITE(%struct.xgbe_prv_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
