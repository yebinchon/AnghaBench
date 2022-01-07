; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_page_alloc_dma.c_ttm_dma_populate.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_page_alloc_dma.c_ttm_dma_populate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_dma_tt = type { i32, %struct.ttm_tt }
%struct.ttm_tt = type { i64, i32, i32, i32*, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ttm_mem_global* }
%struct.ttm_mem_global = type { i32 }
%struct.device = type { i32 }
%struct.dma_pool = type { i32 }

@tt_unpopulated = common dso_local global i64 0, align 8
@TTM_PAGE_FLAG_DMA32 = common dso_local global i32 0, align 4
@GFP_USER = common dso_local global i32 0, align 4
@GFP_DMA32 = common dso_local global i32 0, align 4
@GFP_HIGHUSER = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_ZERO_ALLOC = common dso_local global i32 0, align 4
@__GFP_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TTM_PAGE_FLAG_SWAPPED = common dso_local global i32 0, align 4
@tt_unbound = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ttm_dma_populate(%struct.ttm_dma_tt* %0, %struct.device* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ttm_dma_tt*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.ttm_tt*, align 8
  %7 = alloca %struct.ttm_mem_global*, align 8
  %8 = alloca %struct.dma_pool*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.ttm_dma_tt* %0, %struct.ttm_dma_tt** %4, align 8
  store %struct.device* %1, %struct.device** %5, align 8
  %13 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %14 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %13, i32 0, i32 1
  store %struct.ttm_tt* %14, %struct.ttm_tt** %6, align 8
  %15 = load %struct.ttm_tt*, %struct.ttm_tt** %6, align 8
  %16 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %15, i32 0, i32 5
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %18, align 8
  store %struct.ttm_mem_global* %19, %struct.ttm_mem_global** %7, align 8
  %20 = load %struct.ttm_tt*, %struct.ttm_tt** %6, align 8
  %21 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @tt_unpopulated, align 8
  %24 = icmp ne i64 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %149

26:                                               ; preds = %2
  %27 = load %struct.ttm_tt*, %struct.ttm_tt** %6, align 8
  %28 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = load %struct.ttm_tt*, %struct.ttm_tt** %6, align 8
  %31 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %30, i32 0, i32 4
  %32 = load i32, i32* %31, align 8
  %33 = call i32 @ttm_to_type(i32 %29, i32 %32)
  store i32 %33, i32* %9, align 4
  %34 = load %struct.ttm_tt*, %struct.ttm_tt** %6, align 8
  %35 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @TTM_PAGE_FLAG_DMA32, align 4
  %38 = and i32 %36, %37
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %26
  %41 = load i32, i32* @GFP_USER, align 4
  %42 = load i32, i32* @GFP_DMA32, align 4
  %43 = or i32 %41, %42
  store i32 %43, i32* %11, align 4
  br label %46

44:                                               ; preds = %26
  %45 = load i32, i32* @GFP_HIGHUSER, align 4
  store i32 %45, i32* %11, align 4
  br label %46

46:                                               ; preds = %44, %40
  %47 = load %struct.ttm_tt*, %struct.ttm_tt** %6, align 8
  %48 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* @TTM_PAGE_FLAG_ZERO_ALLOC, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %46
  %54 = load i32, i32* @__GFP_ZERO, align 4
  %55 = load i32, i32* %11, align 4
  %56 = or i32 %55, %54
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %53, %46
  %58 = load %struct.device*, %struct.device** %5, align 8
  %59 = load i32, i32* %9, align 4
  %60 = call %struct.dma_pool* @ttm_dma_find_pool(%struct.device* %58, i32 %59)
  store %struct.dma_pool* %60, %struct.dma_pool** %8, align 8
  %61 = load %struct.dma_pool*, %struct.dma_pool** %8, align 8
  %62 = icmp ne %struct.dma_pool* %61, null
  br i1 %62, label %75, label %63

63:                                               ; preds = %57
  %64 = load %struct.device*, %struct.device** %5, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %9, align 4
  %67 = call %struct.dma_pool* @ttm_dma_pool_init(%struct.device* %64, i32 %65, i32 %66)
  store %struct.dma_pool* %67, %struct.dma_pool** %8, align 8
  %68 = load %struct.dma_pool*, %struct.dma_pool** %8, align 8
  %69 = call i64 @IS_ERR_OR_NULL(%struct.dma_pool* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %63
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %3, align 4
  br label %149

74:                                               ; preds = %63
  br label %75

75:                                               ; preds = %74, %57
  %76 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %77 = getelementptr inbounds %struct.ttm_dma_tt, %struct.ttm_dma_tt* %76, i32 0, i32 0
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  store i32 0, i32* %10, align 4
  br label %79

79:                                               ; preds = %120, %75
  %80 = load i32, i32* %10, align 4
  %81 = load %struct.ttm_tt*, %struct.ttm_tt** %6, align 8
  %82 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %81, i32 0, i32 2
  %83 = load i32, i32* %82, align 4
  %84 = icmp ult i32 %80, %83
  br i1 %84, label %85, label %123

85:                                               ; preds = %79
  %86 = load %struct.dma_pool*, %struct.dma_pool** %8, align 8
  %87 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %88 = load i32, i32* %10, align 4
  %89 = call i32 @ttm_dma_pool_get_pages(%struct.dma_pool* %86, %struct.ttm_dma_tt* %87, i32 %88)
  store i32 %89, i32* %12, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %85
  %93 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %94 = load %struct.device*, %struct.device** %5, align 8
  %95 = call i32 @ttm_dma_unpopulate(%struct.ttm_dma_tt* %93, %struct.device* %94)
  %96 = load i32, i32* @ENOMEM, align 4
  %97 = sub nsw i32 0, %96
  store i32 %97, i32* %3, align 4
  br label %149

98:                                               ; preds = %85
  %99 = load %struct.ttm_mem_global*, %struct.ttm_mem_global** %7, align 8
  %100 = load %struct.ttm_tt*, %struct.ttm_tt** %6, align 8
  %101 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %100, i32 0, i32 3
  %102 = load i32*, i32** %101, align 8
  %103 = load i32, i32* %10, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @ttm_mem_global_alloc_page(%struct.ttm_mem_global* %99, i32 %106, i32 0, i32 0)
  store i32 %107, i32* %12, align 4
  %108 = load i32, i32* %12, align 4
  %109 = icmp ne i32 %108, 0
  %110 = zext i1 %109 to i32
  %111 = call i64 @unlikely(i32 %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %98
  %114 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %115 = load %struct.device*, %struct.device** %5, align 8
  %116 = call i32 @ttm_dma_unpopulate(%struct.ttm_dma_tt* %114, %struct.device* %115)
  %117 = load i32, i32* @ENOMEM, align 4
  %118 = sub nsw i32 0, %117
  store i32 %118, i32* %3, align 4
  br label %149

119:                                              ; preds = %98
  br label %120

120:                                              ; preds = %119
  %121 = load i32, i32* %10, align 4
  %122 = add i32 %121, 1
  store i32 %122, i32* %10, align 4
  br label %79

123:                                              ; preds = %79
  %124 = load %struct.ttm_tt*, %struct.ttm_tt** %6, align 8
  %125 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 8
  %127 = load i32, i32* @TTM_PAGE_FLAG_SWAPPED, align 4
  %128 = and i32 %126, %127
  %129 = call i64 @unlikely(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %131, label %145

131:                                              ; preds = %123
  %132 = load %struct.ttm_tt*, %struct.ttm_tt** %6, align 8
  %133 = call i32 @ttm_tt_swapin(%struct.ttm_tt* %132)
  store i32 %133, i32* %12, align 4
  %134 = load i32, i32* %12, align 4
  %135 = icmp ne i32 %134, 0
  %136 = zext i1 %135 to i32
  %137 = call i64 @unlikely(i32 %136)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %144

139:                                              ; preds = %131
  %140 = load %struct.ttm_dma_tt*, %struct.ttm_dma_tt** %4, align 8
  %141 = load %struct.device*, %struct.device** %5, align 8
  %142 = call i32 @ttm_dma_unpopulate(%struct.ttm_dma_tt* %140, %struct.device* %141)
  %143 = load i32, i32* %12, align 4
  store i32 %143, i32* %3, align 4
  br label %149

144:                                              ; preds = %131
  br label %145

145:                                              ; preds = %144, %123
  %146 = load i64, i64* @tt_unbound, align 8
  %147 = load %struct.ttm_tt*, %struct.ttm_tt** %6, align 8
  %148 = getelementptr inbounds %struct.ttm_tt, %struct.ttm_tt* %147, i32 0, i32 0
  store i64 %146, i64* %148, align 8
  store i32 0, i32* %3, align 4
  br label %149

149:                                              ; preds = %145, %139, %113, %92, %71, %25
  %150 = load i32, i32* %3, align 4
  ret i32 %150
}

declare dso_local i32 @ttm_to_type(i32, i32) #1

declare dso_local %struct.dma_pool* @ttm_dma_find_pool(%struct.device*, i32) #1

declare dso_local %struct.dma_pool* @ttm_dma_pool_init(%struct.device*, i32, i32) #1

declare dso_local i64 @IS_ERR_OR_NULL(%struct.dma_pool*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @ttm_dma_pool_get_pages(%struct.dma_pool*, %struct.ttm_dma_tt*, i32) #1

declare dso_local i32 @ttm_dma_unpopulate(%struct.ttm_dma_tt*, %struct.device*) #1

declare dso_local i32 @ttm_mem_global_alloc_page(%struct.ttm_mem_global*, i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ttm_tt_swapin(%struct.ttm_tt*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
