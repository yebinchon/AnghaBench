; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_dma_free_descbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bwn/extr_if_bwn.c_bwn_dma_free_descbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bwn_dma_ring = type { i32 }
%struct.bwn_dmadesc_meta = type { i32*, i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bwn_dma_ring*, %struct.bwn_dmadesc_meta*)* @bwn_dma_free_descbuf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bwn_dma_free_descbuf(%struct.bwn_dma_ring* %0, %struct.bwn_dmadesc_meta* %1) #0 {
  %3 = alloca %struct.bwn_dma_ring*, align 8
  %4 = alloca %struct.bwn_dmadesc_meta*, align 8
  store %struct.bwn_dma_ring* %0, %struct.bwn_dma_ring** %3, align 8
  store %struct.bwn_dmadesc_meta* %1, %struct.bwn_dmadesc_meta** %4, align 8
  %5 = load %struct.bwn_dmadesc_meta*, %struct.bwn_dmadesc_meta** %4, align 8
  %6 = getelementptr inbounds %struct.bwn_dmadesc_meta, %struct.bwn_dmadesc_meta* %5, i32 0, i32 1
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %16

9:                                                ; preds = %2
  %10 = load %struct.bwn_dmadesc_meta*, %struct.bwn_dmadesc_meta** %4, align 8
  %11 = getelementptr inbounds %struct.bwn_dmadesc_meta, %struct.bwn_dmadesc_meta* %10, i32 0, i32 1
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @m_freem(i32* %12)
  %14 = load %struct.bwn_dmadesc_meta*, %struct.bwn_dmadesc_meta** %4, align 8
  %15 = getelementptr inbounds %struct.bwn_dmadesc_meta, %struct.bwn_dmadesc_meta* %14, i32 0, i32 1
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %9, %2
  %17 = load %struct.bwn_dmadesc_meta*, %struct.bwn_dmadesc_meta** %4, align 8
  %18 = getelementptr inbounds %struct.bwn_dmadesc_meta, %struct.bwn_dmadesc_meta* %17, i32 0, i32 0
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load %struct.bwn_dmadesc_meta*, %struct.bwn_dmadesc_meta** %4, align 8
  %23 = getelementptr inbounds %struct.bwn_dmadesc_meta, %struct.bwn_dmadesc_meta* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = call i32 @ieee80211_free_node(i32* %24)
  %26 = load %struct.bwn_dmadesc_meta*, %struct.bwn_dmadesc_meta** %4, align 8
  %27 = getelementptr inbounds %struct.bwn_dmadesc_meta, %struct.bwn_dmadesc_meta* %26, i32 0, i32 0
  store i32* null, i32** %27, align 8
  br label %28

28:                                               ; preds = %21, %16
  ret void
}

declare dso_local i32 @m_freem(i32*) #1

declare dso_local i32 @ieee80211_free_node(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
