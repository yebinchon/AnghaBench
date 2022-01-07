; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_memory.c_ttm_mem_global_release.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_memory.c_ttm_mem_global_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_mem_global = type { i32, i32, %struct.ttm_mem_zone**, i32*, i32 }
%struct.ttm_mem_zone = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ttm_mem_global_release(%struct.ttm_mem_global* %0) #0 {
  %2 = alloca %struct.ttm_mem_global*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_mem_zone*, align 8
  store %struct.ttm_mem_global* %0, %struct.ttm_mem_global** %2, align 8
  %5 = call i32 (...) @ttm_page_alloc_fini()
  %6 = call i32 (...) @ttm_dma_page_alloc_fini()
  %7 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %8 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %7, i32 0, i32 3
  %9 = load i32*, i32** %8, align 8
  %10 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %11 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %10, i32 0, i32 4
  %12 = call i32 @taskqueue_drain(i32* %9, i32* %11)
  %13 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %14 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  %16 = call i32 @taskqueue_free(i32* %15)
  %17 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %18 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %17, i32 0, i32 3
  store i32* null, i32** %18, align 8
  store i32 0, i32* %3, align 4
  br label %19

19:                                               ; preds = %41, %1
  %20 = load i32, i32* %3, align 4
  %21 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %22 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ult i32 %20, %23
  br i1 %24, label %25, label %44

25:                                               ; preds = %19
  %26 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %27 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %26, i32 0, i32 2
  %28 = load %struct.ttm_mem_zone**, %struct.ttm_mem_zone*** %27, align 8
  %29 = load i32, i32* %3, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %28, i64 %30
  %32 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %31, align 8
  store %struct.ttm_mem_zone* %32, %struct.ttm_mem_zone** %4, align 8
  %33 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %4, align 8
  %34 = getelementptr inbounds %struct.ttm_mem_zone, %struct.ttm_mem_zone* %33, i32 0, i32 0
  %35 = call i64 @refcount_release(i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %25
  %38 = load %struct.ttm_mem_zone*, %struct.ttm_mem_zone** %4, align 8
  %39 = call i32 @ttm_mem_zone_kobj_release(%struct.ttm_mem_zone* %38)
  br label %40

40:                                               ; preds = %37, %25
  br label %41

41:                                               ; preds = %40
  %42 = load i32, i32* %3, align 4
  %43 = add i32 %42, 1
  store i32 %43, i32* %3, align 4
  br label %19

44:                                               ; preds = %19
  %45 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %46 = getelementptr inbounds %struct.ttm_mem_global, %struct.ttm_mem_global* %45, i32 0, i32 1
  %47 = call i64 @refcount_release(i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %44
  %50 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %2, align 8
  %51 = call i32 @ttm_mem_global_kobj_release(%struct.ttm_mem_global* %50)
  br label %52

52:                                               ; preds = %49, %44
  ret void
}

declare dso_local i32 @ttm_page_alloc_fini(...) #1

declare dso_local i32 @ttm_dma_page_alloc_fini(...) #1

declare dso_local i32 @taskqueue_drain(i32*, i32*) #1

declare dso_local i32 @taskqueue_free(i32*) #1

declare dso_local i64 @refcount_release(i32*) #1

declare dso_local i32 @ttm_mem_zone_kobj_release(%struct.ttm_mem_zone*) #1

declare dso_local i32 @ttm_mem_global_kobj_release(%struct.ttm_mem_global*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
