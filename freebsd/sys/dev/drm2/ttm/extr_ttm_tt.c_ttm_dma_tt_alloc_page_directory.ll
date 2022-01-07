; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_tt.c_ttm_dma_tt_alloc_page_directory.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_tt.c_ttm_dma_tt_alloc_page_directory.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_dma_tt = type { %struct.TYPE_2__, i8* }
%struct.TYPE_2__ = type { i32, i8* }

@M_TTM_PD = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_dma_tt*)* @ttm_dma_tt_alloc_page_directory to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_dma_tt_alloc_page_directory(%struct.ttm_dma_tt* %0) #0 {
  %2 = alloca %struct.ttm_dma_tt*, align 8
  store %struct.ttm_dma_tt* %0, %struct.ttm_dma_tt** %2, align 8
  %3 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %2, align 8
  %4 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = sext i32 %6 to i64
  %8 = mul i64 %7, 8
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* @M_TTM_PD, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call i8* @malloc(i32 %9, i32 %10, i32 %13)
  %15 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %2, align 8
  %16 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 1
  store i8* %14, i8** %17, align 8
  %18 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %2, align 8
  %19 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = sext i32 %21 to i64
  %23 = mul i64 %22, 1
  %24 = trunc i64 %23 to i32
  %25 = load i32, i32* @M_TTM_PD, align 4
  %26 = load i32, i32* @M_WAITOK, align 4
  %27 = call i8* @malloc(i32 %24, i32 %25, i32 %26)
  %28 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %2, align 8
  %29 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  ret void
}

declare dso_local i8* @malloc(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
