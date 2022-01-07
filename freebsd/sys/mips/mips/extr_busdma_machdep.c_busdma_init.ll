; ModuleID = '/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_busdma_machdep.c_busdma_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/mips/mips/extr_busdma_machdep.c_busdma_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"dma maps\00", align 1
@dmamap_ctor = common dso_local global i32 0, align 4
@dmamap_dtor = common dso_local global i32 0, align 4
@UMA_ALIGN_PTR = common dso_local global i32 0, align 4
@dmamap_zone = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [7 x i8] c"buffer\00", align 1
@mips_dcache_max_linesize = common dso_local global i32 0, align 4
@standard_allocator = common dso_local global i8* null, align 8
@.str.2 = private unnamed_addr constant [9 x i8] c"coherent\00", align 1
@busdma_bufalloc_alloc_uncacheable = common dso_local global i32* null, align 8
@busdma_bufalloc_free_uncacheable = common dso_local global i32* null, align 8
@coherent_allocator = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @busdma_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @busdma_init(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @dmamap_ctor, align 4
  %4 = load i32, i32* @dmamap_dtor, align 4
  %5 = load i32, i32* @UMA_ALIGN_PTR, align 4
  %6 = call i32 @uma_zcreate(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 4, i32 %3, i32 %4, i32* null, i32* null, i32 %5, i32 0)
  store i32 %6, i32* @dmamap_zone, align 4
  %7 = load i32, i32* @mips_dcache_max_linesize, align 4
  %8 = call i8* @busdma_bufalloc_create(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i32 %7, i32* null, i32* null, i32 0)
  store i8* %8, i8** @standard_allocator, align 8
  %9 = load i32, i32* @mips_dcache_max_linesize, align 4
  %10 = load i32*, i32** @busdma_bufalloc_alloc_uncacheable, align 8
  %11 = load i32*, i32** @busdma_bufalloc_free_uncacheable, align 8
  %12 = call i8* @busdma_bufalloc_create(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.2, i64 0, i64 0), i32 %9, i32* %10, i32* %11, i32 0)
  store i8* %12, i8** @coherent_allocator, align 8
  ret void
}

declare dso_local i32 @uma_zcreate(i8*, i32, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i8* @busdma_bufalloc_create(i8*, i32, i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
