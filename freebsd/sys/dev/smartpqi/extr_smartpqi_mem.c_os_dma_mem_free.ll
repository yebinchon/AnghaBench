; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_mem.c_os_dma_mem_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/smartpqi/extr_smartpqi_mem.c_os_dma_mem_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dma_mem = type { i32*, i32*, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @os_dma_mem_free(i32* %0, %struct.dma_mem* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.dma_mem*, align 8
  store i32* %0, i32** %3, align 8
  store %struct.dma_mem* %1, %struct.dma_mem** %4, align 8
  %5 = load %struct.dma_mem*, %struct.dma_mem** %4, align 8
  %6 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %5, i32 0, i32 3
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %2
  %10 = load %struct.dma_mem*, %struct.dma_mem** %4, align 8
  %11 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = load %struct.dma_mem*, %struct.dma_mem** %4, align 8
  %14 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 8
  %16 = call i32 @bus_dmamap_unload(i32* %12, i32 %15)
  %17 = load %struct.dma_mem*, %struct.dma_mem** %4, align 8
  %18 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %17, i32 0, i32 3
  store i64 0, i64* %18, align 8
  br label %19

19:                                               ; preds = %9, %2
  %20 = load %struct.dma_mem*, %struct.dma_mem** %4, align 8
  %21 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = icmp ne i32* %22, null
  br i1 %23, label %24, label %37

24:                                               ; preds = %19
  %25 = load %struct.dma_mem*, %struct.dma_mem** %4, align 8
  %26 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load %struct.dma_mem*, %struct.dma_mem** %4, align 8
  %29 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load %struct.dma_mem*, %struct.dma_mem** %4, align 8
  %32 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @bus_dmamem_free(i32* %27, i32* %30, i32 %33)
  %35 = load %struct.dma_mem*, %struct.dma_mem** %4, align 8
  %36 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %35, i32 0, i32 1
  store i32* null, i32** %36, align 8
  br label %37

37:                                               ; preds = %24, %19
  %38 = load %struct.dma_mem*, %struct.dma_mem** %4, align 8
  %39 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %38, i32 0, i32 0
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %49

42:                                               ; preds = %37
  %43 = load %struct.dma_mem*, %struct.dma_mem** %4, align 8
  %44 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = call i32 @bus_dma_tag_destroy(i32* %45)
  %47 = load %struct.dma_mem*, %struct.dma_mem** %4, align 8
  %48 = getelementptr inbounds %struct.dma_mem, %struct.dma_mem* %47, i32 0, i32 0
  store i32* null, i32** %48, align 8
  br label %49

49:                                               ; preds = %42, %37
  ret void
}

declare dso_local i32 @bus_dmamap_unload(i32*, i32) #1

declare dso_local i32 @bus_dmamem_free(i32*, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
