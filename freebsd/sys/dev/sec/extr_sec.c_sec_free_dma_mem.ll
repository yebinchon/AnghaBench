; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_free_dma_mem.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/sec/extr_sec.c_sec_free_dma_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sec_dma_mem = type { i32*, i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sec_dma_mem*)* @sec_free_dma_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sec_free_dma_mem(%struct.sec_dma_mem* %0) #0 {
  %2 = alloca %struct.sec_dma_mem*, align 8
  store %struct.sec_dma_mem* %0, %struct.sec_dma_mem** %2, align 8
  %3 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %2, align 8
  %4 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %46

8:                                                ; preds = %1
  %9 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %2, align 8
  %10 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %2, align 8
  %13 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bus_dmamap_unload(i32 %11, i32 %14)
  %16 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %2, align 8
  %17 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %16, i32 0, i32 3
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %8
  %21 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %2, align 8
  %22 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %2, align 8
  %25 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @bus_dmamap_destroy(i32 %23, i32 %26)
  br label %39

28:                                               ; preds = %8
  %29 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %2, align 8
  %30 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %2, align 8
  %33 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %2, align 8
  %36 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @bus_dmamem_free(i32 %31, i32* %34, i32 %37)
  br label %39

39:                                               ; preds = %28, %20
  %40 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %2, align 8
  %41 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @bus_dma_tag_destroy(i32 %42)
  %44 = load %struct.sec_dma_mem*, %struct.sec_dma_mem** %2, align 8
  %45 = getelementptr inbounds %struct.sec_dma_mem, %struct.sec_dma_mem* %44, i32 0, i32 0
  store i32* null, i32** %45, align 8
  br label %46

46:                                               ; preds = %39, %7
  ret void
}

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamap_destroy(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
