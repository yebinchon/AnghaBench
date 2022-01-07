; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_free_buffer.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mpt/extr_mpt_user.c_mpt_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mpt_page_memory = type { i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.mpt_page_memory*)* @mpt_free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mpt_free_buffer(%struct.mpt_page_memory* %0) #0 {
  %2 = alloca %struct.mpt_page_memory*, align 8
  store %struct.mpt_page_memory* %0, %struct.mpt_page_memory** %2, align 8
  %3 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %2, align 8
  %4 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %32

8:                                                ; preds = %1
  %9 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %2, align 8
  %10 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %2, align 8
  %13 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %12, i32 0, i32 2
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @bus_dmamap_unload(i32 %11, i32 %14)
  %16 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %2, align 8
  %17 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %2, align 8
  %20 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %2, align 8
  %23 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %22, i32 0, i32 2
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @bus_dmamem_free(i32 %18, i32* %21, i32 %24)
  %26 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %2, align 8
  %27 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @bus_dma_tag_destroy(i32 %28)
  %30 = load %struct.mpt_page_memory*, %struct.mpt_page_memory** %2, align 8
  %31 = getelementptr inbounds %struct.mpt_page_memory, %struct.mpt_page_memory* %30, i32 0, i32 0
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @bus_dmamap_unload(i32, i32) #1

declare dso_local i32 @bus_dmamem_free(i32, i32*, i32) #1

declare dso_local i32 @bus_dma_tag_destroy(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
