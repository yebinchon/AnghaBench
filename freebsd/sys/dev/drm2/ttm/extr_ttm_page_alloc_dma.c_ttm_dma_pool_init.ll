; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_page_alloc_dma.c_ttm_dma_pool_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_page_alloc_dma.c_ttm_dma_pool_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32, i32 }
%struct.dma_pool = type { i32, i8*, i32, i32, i64, i32, i32, i64, i64, i64, %struct.device*, i32, i32, i32, %struct.dma_pool* }
%struct.device = type { i32 }
%struct.device_pools = type { i32, i8*, i32, i32, i64, i32, i32, i64, i64, i64, %struct.device*, i32, i32, i32, %struct.device_pools* }

@.str = private unnamed_addr constant [3 x i8] c"wc\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"uc\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"cached\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c" dma32\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1
@IS_WC = common dso_local global i32 0, align 4
@IS_UC = common dso_local global i32 0, align 4
@IS_CACHED = common dso_local global i32 0, align 4
@IS_DMA32 = common dso_local global i32 0, align 4
@IS_UNDEFINED = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@ttm_dma_pool_release = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@_manager = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dma_pool* (%struct.device*, i32, i32)* @ttm_dma_pool_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dma_pool* @ttm_dma_pool_init(%struct.device* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.dma_pool*, align 8
  %5 = alloca %struct.device*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [5 x i8*], align 16
  %9 = alloca [5 x i32], align 16
  %10 = alloca %struct.device_pools*, align 8
  %11 = alloca %struct.dma_pool*, align 8
  %12 = alloca %struct.dma_pool**, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  store %struct.device* %0, %struct.device** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %16 = bitcast [5 x i8*]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %16, i8 0, i64 40, i1 false)
  %17 = bitcast i8* %16 to [5 x i8*]*
  %18 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i32 0, i32 0), i8** %18, align 16
  %19 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 1
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i32 0, i32 0), i8** %19, align 8
  %20 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 2
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8** %20, align 16
  %21 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 3
  store i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i32 0, i32 0), i8** %21, align 8
  %22 = getelementptr inbounds [5 x i8*], [5 x i8*]* %17, i32 0, i32 4
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8** %22, align 16
  %23 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 0
  %24 = load i32, i32* @IS_WC, align 4
  store i32 %24, i32* %23, align 4
  %25 = getelementptr inbounds i32, i32* %23, i64 1
  %26 = load i32, i32* @IS_UC, align 4
  store i32 %26, i32* %25, align 4
  %27 = getelementptr inbounds i32, i32* %25, i64 1
  %28 = load i32, i32* @IS_CACHED, align 4
  store i32 %28, i32* %27, align 4
  %29 = getelementptr inbounds i32, i32* %27, i64 1
  %30 = load i32, i32* @IS_DMA32, align 4
  store i32 %30, i32* %29, align 4
  %31 = getelementptr inbounds i32, i32* %29, i64 1
  %32 = load i32, i32* @IS_UNDEFINED, align 4
  store i32 %32, i32* %31, align 4
  store %struct.device_pools* null, %struct.device_pools** %10, align 8
  store %struct.dma_pool* null, %struct.dma_pool** %11, align 8
  %33 = load i32, i32* @ENODEV, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %14, align 4
  %35 = load %struct.device*, %struct.device** %5, align 8
  %36 = icmp ne %struct.device* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %3
  store %struct.dma_pool* null, %struct.dma_pool** %4, align 8
  br label %192

38:                                               ; preds = %3
  %39 = load i32, i32* @ttm_dma_pool_release, align 4
  %40 = load i32, i32* @GFP_KERNEL, align 4
  %41 = call %struct.dma_pool** @devres_alloc(i32 %39, i32 8, i32 %40)
  store %struct.dma_pool** %41, %struct.dma_pool*** %12, align 8
  %42 = load %struct.dma_pool**, %struct.dma_pool*** %12, align 8
  %43 = icmp ne %struct.dma_pool** %42, null
  br i1 %43, label %45, label %44

44:                                               ; preds = %38
  store %struct.dma_pool* null, %struct.dma_pool** %4, align 8
  br label %192

45:                                               ; preds = %38
  %46 = load i32, i32* @ENOMEM, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %14, align 4
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = load %struct.device*, %struct.device** %5, align 8
  %50 = call i32 @dev_to_node(%struct.device* %49)
  %51 = call %struct.dma_pool* @kmalloc_node(i32 96, i32 %48, i32 %50)
  store %struct.dma_pool* %51, %struct.dma_pool** %11, align 8
  %52 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %53 = icmp ne %struct.dma_pool* %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %45
  br label %182

55:                                               ; preds = %45
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = load %struct.device*, %struct.device** %5, align 8
  %58 = call i32 @dev_to_node(%struct.device* %57)
  %59 = call %struct.dma_pool* @kmalloc_node(i32 96, i32 %56, i32 %58)
  %60 = bitcast %struct.dma_pool* %59 to %struct.device_pools*
  store %struct.device_pools* %60, %struct.device_pools** %10, align 8
  %61 = load %struct.device_pools*, %struct.device_pools** %10, align 8
  %62 = icmp ne %struct.device_pools* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %55
  br label %182

64:                                               ; preds = %55
  %65 = load %struct.device_pools*, %struct.device_pools** %10, align 8
  %66 = getelementptr inbounds %struct.device_pools, %struct.device_pools* %65, i32 0, i32 2
  %67 = call i32 @INIT_LIST_HEAD(i32* %66)
  %68 = load %struct.device*, %struct.device** %5, align 8
  %69 = load %struct.device_pools*, %struct.device_pools** %10, align 8
  %70 = getelementptr inbounds %struct.device_pools, %struct.device_pools* %69, i32 0, i32 10
  store %struct.device* %68, %struct.device** %70, align 8
  %71 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %72 = bitcast %struct.dma_pool* %71 to %struct.device_pools*
  %73 = load %struct.device_pools*, %struct.device_pools** %10, align 8
  %74 = getelementptr inbounds %struct.device_pools, %struct.device_pools* %73, i32 0, i32 14
  store %struct.device_pools* %72, %struct.device_pools** %74, align 8
  %75 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %76 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %75, i32 0, i32 13
  %77 = call i32 @INIT_LIST_HEAD(i32* %76)
  %78 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %79 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %78, i32 0, i32 12
  %80 = call i32 @INIT_LIST_HEAD(i32* %79)
  %81 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %82 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %81, i32 0, i32 2
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %85 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %84, i32 0, i32 11
  %86 = call i32 @spin_lock_init(i32* %85)
  %87 = load %struct.device*, %struct.device** %5, align 8
  %88 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %89 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %88, i32 0, i32 10
  store %struct.device* %87, %struct.device** %89, align 8
  %90 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %91 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %90, i32 0, i32 8
  store i64 0, i64* %91, align 8
  %92 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %93 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %92, i32 0, i32 9
  store i64 0, i64* %93, align 8
  %94 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %95 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %94, i32 0, i32 7
  store i64 0, i64* %95, align 8
  %96 = load i32, i32* %6, align 4
  %97 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %98 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %97, i32 0, i32 6
  store i32 %96, i32* %98, align 4
  %99 = load i32, i32* @PAGE_SIZE, align 4
  %100 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %101 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %100, i32 0, i32 5
  store i32 %99, i32* %101, align 8
  %102 = load i32, i32* %7, align 4
  %103 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %104 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %103, i32 0, i32 0
  store i32 %102, i32* %104, align 8
  %105 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %106 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %105, i32 0, i32 4
  store i64 0, i64* %106, align 8
  %107 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %108 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %107, i32 0, i32 1
  %109 = load i8*, i8** %108, align 8
  store i8* %109, i8** %15, align 8
  store i32 0, i32* %13, align 4
  br label %110

110:                                              ; preds = %141, %64
  %111 = load i32, i32* %13, align 4
  %112 = icmp ult i32 %111, 5
  br i1 %112, label %113, label %144

113:                                              ; preds = %110
  %114 = load i32, i32* %7, align 4
  %115 = load i32, i32* %13, align 4
  %116 = zext i32 %115 to i64
  %117 = getelementptr inbounds [5 x i32], [5 x i32]* %9, i64 0, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = and i32 %114, %118
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %121, label %140

121:                                              ; preds = %113
  %122 = load i8*, i8** %15, align 8
  %123 = load i8*, i8** %15, align 8
  %124 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %125 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %124, i32 0, i32 1
  %126 = load i8*, i8** %125, align 8
  %127 = ptrtoint i8* %123 to i64
  %128 = ptrtoint i8* %126 to i64
  %129 = sub i64 %127, %128
  %130 = sub i64 8, %129
  %131 = trunc i64 %130 to i32
  %132 = load i32, i32* %13, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds [5 x i8*], [5 x i8*]* %8, i64 0, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %122, i32 %131, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %135)
  %137 = load i8*, i8** %15, align 8
  %138 = sext i32 %136 to i64
  %139 = getelementptr inbounds i8, i8* %137, i64 %138
  store i8* %139, i8** %15, align 8
  br label %140

140:                                              ; preds = %121, %113
  br label %141

141:                                              ; preds = %140
  %142 = load i32, i32* %13, align 4
  %143 = add i32 %142, 1
  store i32 %143, i32* %13, align 4
  br label %110

144:                                              ; preds = %110
  %145 = load i8*, i8** %15, align 8
  store i8 0, i8* %145, align 1
  %146 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %147 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %146, i32 0, i32 3
  %148 = load i32, i32* %147, align 4
  %149 = sext i32 %148 to i64
  %150 = inttoptr i64 %149 to i8*
  %151 = load %struct.device*, %struct.device** %5, align 8
  %152 = call i8* @dev_driver_string(%struct.device* %151)
  %153 = load %struct.device*, %struct.device** %5, align 8
  %154 = call i8* @dev_name(%struct.device* %153)
  %155 = call i32 (i8*, i32, i8*, i8*, ...) @snprintf(i8* %150, i32 4, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0), i8* %152, i8* %154)
  %156 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_manager, align 8
  %157 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %156, i32 0, i32 0
  %158 = call i32 @mutex_lock(i32* %157)
  %159 = load %struct.device_pools*, %struct.device_pools** %10, align 8
  %160 = getelementptr inbounds %struct.device_pools, %struct.device_pools* %159, i32 0, i32 2
  %161 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_manager, align 8
  %162 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %161, i32 0, i32 2
  %163 = call i32 @list_add(i32* %160, i32* %162)
  %164 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_manager, align 8
  %165 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = add nsw i32 %166, 1
  store i32 %167, i32* %165, align 4
  %168 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %169 = getelementptr inbounds %struct.dma_pool, %struct.dma_pool* %168, i32 0, i32 2
  %170 = load %struct.device*, %struct.device** %5, align 8
  %171 = getelementptr inbounds %struct.device, %struct.device* %170, i32 0, i32 0
  %172 = call i32 @list_add(i32* %169, i32* %171)
  %173 = load %struct.TYPE_2__*, %struct.TYPE_2__** @_manager, align 8
  %174 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %173, i32 0, i32 0
  %175 = call i32 @mutex_unlock(i32* %174)
  %176 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %177 = load %struct.dma_pool**, %struct.dma_pool*** %12, align 8
  store %struct.dma_pool* %176, %struct.dma_pool** %177, align 8
  %178 = load %struct.device*, %struct.device** %5, align 8
  %179 = load %struct.dma_pool**, %struct.dma_pool*** %12, align 8
  %180 = call i32 @devres_add(%struct.device* %178, %struct.dma_pool** %179)
  %181 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  store %struct.dma_pool* %181, %struct.dma_pool** %4, align 8
  br label %192

182:                                              ; preds = %63, %54
  %183 = load %struct.dma_pool**, %struct.dma_pool*** %12, align 8
  %184 = call i32 @devres_free(%struct.dma_pool** %183)
  %185 = load %struct.device_pools*, %struct.device_pools** %10, align 8
  %186 = bitcast %struct.device_pools* %185 to %struct.dma_pool*
  %187 = call i32 @kfree(%struct.dma_pool* %186)
  %188 = load %struct.dma_pool*, %struct.dma_pool** %11, align 8
  %189 = call i32 @kfree(%struct.dma_pool* %188)
  %190 = load i32, i32* %14, align 4
  %191 = call %struct.dma_pool* @ERR_PTR(i32 %190)
  store %struct.dma_pool* %191, %struct.dma_pool** %4, align 8
  br label %192

192:                                              ; preds = %182, %144, %44, %37
  %193 = load %struct.dma_pool*, %struct.dma_pool** %4, align 8
  ret %struct.dma_pool* %193
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.dma_pool** @devres_alloc(i32, i32, i32) #2

declare dso_local %struct.dma_pool* @kmalloc_node(i32, i32, i32) #2

declare dso_local i32 @dev_to_node(%struct.device*) #2

declare dso_local i32 @INIT_LIST_HEAD(i32*) #2

declare dso_local i32 @spin_lock_init(i32*) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*, ...) #2

declare dso_local i8* @dev_driver_string(%struct.device*) #2

declare dso_local i8* @dev_name(%struct.device*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @list_add(i32*, i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @devres_add(%struct.device*, %struct.dma_pool**) #2

declare dso_local i32 @devres_free(%struct.dma_pool**) #2

declare dso_local i32 @kfree(%struct.dma_pool*) #2

declare dso_local %struct.dma_pool* @ERR_PTR(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
