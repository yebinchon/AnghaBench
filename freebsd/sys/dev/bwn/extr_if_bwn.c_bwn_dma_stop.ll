; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_dma_stop.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_dma_stop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_mac = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.bwn_dma }
%struct.bwn_dma = type { i32, i32*, i32 }

@BWN_MAC_FLAG_DMA = common dso_local global i32 0, align 4
@WME_AC_BK = common dso_local global i64 0, align 8
@WME_AC_BE = common dso_local global i64 0, align 8
@WME_AC_VI = common dso_local global i64 0, align 8
@WME_AC_VO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_mac*)* @bwn_dma_stop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_dma_stop(%struct.bwn_mac* %0) #0 {
  %2 = alloca %struct.bwn_mac*, align 8
  %3 = alloca %struct.bwn_dma*, align 8
  store %struct.bwn_mac* %0, %struct.bwn_mac** %2, align 8
  %4 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %5 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 8
  %7 = load i32, i32* @BWN_MAC_FLAG_DMA, align 4
  %8 = and i32 %6, %7
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %45

11:                                               ; preds = %1
  %12 = load %struct.bwn_mac*, %struct.bwn_mac** %2, align 8
  %13 = getelementptr inbounds %struct.bwn_mac, %struct.bwn_mac* %12, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  store %struct.bwn_dma* %14, %struct.bwn_dma** %3, align 8
  %15 = load %struct.bwn_dma*, %struct.bwn_dma** %3, align 8
  %16 = getelementptr inbounds %struct.bwn_dma, %struct.bwn_dma* %15, i32 0, i32 2
  %17 = call i32 @bwn_dma_ringstop(i32* %16)
  %18 = load %struct.bwn_dma*, %struct.bwn_dma** %3, align 8
  %19 = getelementptr inbounds %struct.bwn_dma, %struct.bwn_dma* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @WME_AC_BK, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = call i32 @bwn_dma_ringstop(i32* %22)
  %24 = load %struct.bwn_dma*, %struct.bwn_dma** %3, align 8
  %25 = getelementptr inbounds %struct.bwn_dma, %struct.bwn_dma* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @WME_AC_BE, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = call i32 @bwn_dma_ringstop(i32* %28)
  %30 = load %struct.bwn_dma*, %struct.bwn_dma** %3, align 8
  %31 = getelementptr inbounds %struct.bwn_dma, %struct.bwn_dma* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = load i64, i64* @WME_AC_VI, align 8
  %34 = getelementptr inbounds i32, i32* %32, i64 %33
  %35 = call i32 @bwn_dma_ringstop(i32* %34)
  %36 = load %struct.bwn_dma*, %struct.bwn_dma** %3, align 8
  %37 = getelementptr inbounds %struct.bwn_dma, %struct.bwn_dma* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i64, i64* @WME_AC_VO, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  %41 = call i32 @bwn_dma_ringstop(i32* %40)
  %42 = load %struct.bwn_dma*, %struct.bwn_dma** %3, align 8
  %43 = getelementptr inbounds %struct.bwn_dma, %struct.bwn_dma* %42, i32 0, i32 0
  %44 = call i32 @bwn_dma_ringstop(i32* %43)
  br label %45

45:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @bwn_dma_ringstop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
