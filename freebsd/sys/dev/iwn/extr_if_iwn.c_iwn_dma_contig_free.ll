; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_dma_contig_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/iwn/extr_if_iwn.c_iwn_dma_contig_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iwn_dma_info = type { i32*, i32*, i32 }

@BUS_DMASYNC_POSTREAD = common dso_local global i32 0, align 4
@BUS_DMASYNC_POSTWRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.iwn_dma_info*)* @iwn_dma_contig_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @iwn_dma_contig_free(%struct.iwn_dma_info* %0) #0 {
  %2 = alloca %struct.iwn_dma_info*, align 8
  store %struct.iwn_dma_info* %0, %struct.iwn_dma_info** %2, align 8
  %3 = load %struct.iwn_dma_info*, %struct.iwn_dma_info** %2, align 8
  %4 = getelementptr inbounds %struct.iwn_dma_info, %struct.iwn_dma_info* %3, i32 0, i32 1
  %5 = load i32*, i32** %4, align 8
  %6 = icmp ne i32* %5, null
  br i1 %6, label %7, label %37

7:                                                ; preds = %1
  %8 = load %struct.iwn_dma_info*, %struct.iwn_dma_info** %2, align 8
  %9 = getelementptr inbounds %struct.iwn_dma_info, %struct.iwn_dma_info* %8, i32 0, i32 0
  %10 = load i32*, i32** %9, align 8
  %11 = load %struct.iwn_dma_info*, %struct.iwn_dma_info** %2, align 8
  %12 = getelementptr inbounds %struct.iwn_dma_info, %struct.iwn_dma_info* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @BUS_DMASYNC_POSTREAD, align 4
  %15 = load i32, i32* @BUS_DMASYNC_POSTWRITE, align 4
  %16 = or i32 %14, %15
  %17 = call i32 @bus_dmamap_sync(i32* %10, i32 %13, i32 %16)
  %18 = load %struct.iwn_dma_info*, %struct.iwn_dma_info** %2, align 8
  %19 = getelementptr inbounds %struct.iwn_dma_info, %struct.iwn_dma_info* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = load %struct.iwn_dma_info*, %struct.iwn_dma_info** %2, align 8
  %22 = getelementptr inbounds %struct.iwn_dma_info, %struct.iwn_dma_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i32 @bus_dmamap_unload(i32* %20, i32 %23)
  %25 = load %struct.iwn_dma_info*, %struct.iwn_dma_info** %2, align 8
  %26 = getelementptr inbounds %struct.iwn_dma_info, %struct.iwn_dma_info* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.iwn_dma_info*, %struct.iwn_dma_info** %2, align 8
  %29 = getelementptr inbounds %struct.iwn_dma_info, %struct.iwn_dma_info* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.iwn_dma_info*, %struct.iwn_dma_info** %2, align 8
  %32 = getelementptr inbounds %struct.iwn_dma_info, %struct.iwn_dma_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bus_dmamem_free(i32* %27, i32* %30, i32 %33)
  %35 = load %struct.iwn_dma_info*, %struct.iwn_dma_info** %2, align 8
  %36 = getelementptr inbounds %struct.iwn_dma_info, %struct.iwn_dma_info* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %7, %1
  %38 = load %struct.iwn_dma_info*, %struct.iwn_dma_info** %2, align 8
  %39 = getelementptr inbounds %struct.iwn_dma_info, %struct.iwn_dma_info* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.iwn_dma_info*, %struct.iwn_dma_info** %2, align 8
  %44 = getelementptr inbounds %struct.iwn_dma_info, %struct.iwn_dma_info* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @bus_dma_tag_destroy(i32* %45)
  %47 = load %struct.iwn_dma_info*, %struct.iwn_dma_info** %2, align 8
  %48 = getelementptr inbounds %struct.iwn_dma_info, %struct.iwn_dma_info* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %42, %37
  ret void
}

declare dso_local i32 @bus_dmamap_sync(i32*, i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
