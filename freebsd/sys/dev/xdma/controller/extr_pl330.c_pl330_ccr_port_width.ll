; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xdma/controller/extr_pl330.c_pl330_ccr_port_width.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xdma/controller/extr_pl330.c_pl330_ccr_port_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdma_sglist = type { i32, i32 }

@CCR_SRC_BURST_SIZE_1 = common dso_local global i32 0, align 4
@CCR_SRC_BURST_SIZE_2 = common dso_local global i32 0, align 4
@CCR_SRC_BURST_SIZE_4 = common dso_local global i32 0, align 4
@CCR_DST_BURST_SIZE_1 = common dso_local global i32 0, align 4
@CCR_DST_BURST_SIZE_2 = common dso_local global i32 0, align 4
@CCR_DST_BURST_SIZE_4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdma_sglist*, i32*)* @pl330_ccr_port_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pl330_ccr_port_width(%struct.xdma_sglist* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdma_sglist*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.xdma_sglist* %0, %struct.xdma_sglist** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.xdma_sglist*, %struct.xdma_sglist** %4, align 8
  %8 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %22 [
    i32 1, label %10
    i32 2, label %14
    i32 4, label %18
  ]

10:                                               ; preds = %2
  %11 = load i32, i32* @CCR_SRC_BURST_SIZE_1, align 4
  %12 = load i32, i32* %6, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %6, align 4
  br label %23

14:                                               ; preds = %2
  %15 = load i32, i32* @CCR_SRC_BURST_SIZE_2, align 4
  %16 = load i32, i32* %6, align 4
  %17 = or i32 %16, %15
  store i32 %17, i32* %6, align 4
  br label %23

18:                                               ; preds = %2
  %19 = load i32, i32* @CCR_SRC_BURST_SIZE_4, align 4
  %20 = load i32, i32* %6, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %6, align 4
  br label %23

22:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %45

23:                                               ; preds = %18, %14, %10
  %24 = load %struct.xdma_sglist*, %struct.xdma_sglist** %4, align 8
  %25 = getelementptr inbounds %struct.xdma_sglist, %struct.xdma_sglist* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  switch i32 %26, label %39 [
    i32 1, label %27
    i32 2, label %31
    i32 4, label %35
  ]

27:                                               ; preds = %23
  %28 = load i32, i32* @CCR_DST_BURST_SIZE_1, align 4
  %29 = load i32, i32* %6, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %6, align 4
  br label %40

31:                                               ; preds = %23
  %32 = load i32, i32* @CCR_DST_BURST_SIZE_2, align 4
  %33 = load i32, i32* %6, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %6, align 4
  br label %40

35:                                               ; preds = %23
  %36 = load i32, i32* @CCR_DST_BURST_SIZE_4, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %40

39:                                               ; preds = %23
  store i32 -1, i32* %3, align 4
  br label %45

40:                                               ; preds = %35, %31, %27
  %41 = load i32, i32* %6, align 4
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* %42, align 4
  %44 = or i32 %43, %41
  store i32 %44, i32* %42, align 4
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %40, %39, %22
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
