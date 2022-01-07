; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_free_mw.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/test/extr_ntb_tool.c_tool_free_mw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tool_ctx = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.tool_mw* }
%struct.tool_mw = type { i64, i64, i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tool_ctx*, i32, i32)* @tool_free_mw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tool_free_mw(%struct.tool_ctx* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.tool_ctx*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tool_mw*, align 8
  store %struct.tool_ctx* %0, %struct.tool_ctx** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %9 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %8, i32 0, i32 1
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i64 %12
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.tool_mw*, %struct.tool_mw** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %15, i64 %17
  store %struct.tool_mw* %18, %struct.tool_mw** %7, align 8
  %19 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %20 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %29

23:                                               ; preds = %3
  %24 = load %struct.tool_ctx*, %struct.tool_ctx** %4, align 8
  %25 = getelementptr inbounds %struct.tool_ctx, %struct.tool_ctx* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @ntb_mw_clear_trans(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %23, %3
  %30 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %31 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %30, i32 0, i32 5
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %61

34:                                               ; preds = %29
  %35 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %36 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %35, i32 0, i32 3
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %34
  %40 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %41 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %40, i32 0, i32 3
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %44 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = call i32 @bus_dmamap_unload(i64 %42, i64 %45)
  %47 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %48 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %47, i32 0, i32 3
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %51 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %50, i32 0, i32 5
  %52 = load i64, i64* %51, align 8
  %53 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %54 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = call i32 @bus_dmamem_free(i64 %49, i64 %52, i64 %55)
  %57 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %58 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %57, i32 0, i32 3
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @bus_dma_tag_destroy(i64 %59)
  br label %61

61:                                               ; preds = %39, %34, %29
  %62 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %63 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %62, i32 0, i32 5
  store i64 0, i64* %63, align 8
  %64 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %65 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %67 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %66, i32 0, i32 3
  store i64 0, i64* %67, align 8
  %68 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %69 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %68, i32 0, i32 2
  store i64 0, i64* %69, align 8
  %70 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %71 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %70, i32 0, i32 1
  store i64 0, i64* %71, align 8
  %72 = load %struct.tool_mw*, %struct.tool_mw** %7, align 8
  %73 = getelementptr inbounds %struct.tool_mw, %struct.tool_mw* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  ret void
}

declare dso_local i32 @ntb_mw_clear_trans(i32, i32) #1

declare dso_local i32 @bus_dmamap_unload(i64, i64) #1

declare dso_local i32 @bus_dmamem_free(i64, i64, i64) #1

declare dso_local i32 @bus_dma_tag_destroy(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
