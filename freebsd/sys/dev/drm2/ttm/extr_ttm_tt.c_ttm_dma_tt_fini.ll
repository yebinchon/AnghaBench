; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_tt.c_ttm_dma_tt_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_tt.c_ttm_dma_tt_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_dma_tt = type { i32*, %struct.ttm_tt }
%struct.ttm_tt = type { i32* }

@M_TTM_PD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_dma_tt_fini(%struct.ttm_dma_tt* %0) #0 {
  %2 = alloca %struct.ttm_dma_tt*, align 8
  %3 = alloca %struct.ttm_tt*, align 8
  store %struct.ttm_dma_tt* %0, %struct.ttm_dma_tt** %2, align 8
  %4 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %2, align 8
  %5 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %4, i32 0, i32 1
  store %struct.ttm_tt* %5, %struct.ttm_tt** %3, align 8
  %6 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %7 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %6, i32 0, i32 0
  %8 = load i32*, i32** %7, align 8
  %9 = load i32, i32* @M_TTM_PD, align 4
  %10 = call i32 @free(i32* %8, i32 %9)
  %11 = load %struct.ttm_tt*, %struct.ttm_tt** %3, align 8
  %12 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  %13 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %2, align 8
  %14 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* @M_TTM_PD, align 4
  %17 = call i32 @free(i32* %15, i32 %16)
  %18 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %2, align 8
  %19 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  ret void
}

declare dso_local i32 @free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
