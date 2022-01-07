; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_scatter.c_drm_sg_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_scatter.c_drm_sg_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { %struct.drm_sg_mem* }
%struct.drm_sg_mem = type { i32, i64, %struct.drm_sg_mem* }
%struct.drm_scatter_gather = type { i64, i32 }

@.str = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@DRIVER_SG = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@DRM_MEM_DRIVER = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"request size=%ld\0A\00", align 1
@DRM_MEM_SGLISTS = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"allocated %ju pages @ 0x%08zx, contents=%08lx\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_sg_alloc(%struct.drm_device* %0, %struct.drm_scatter_gather* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_device*, align 8
  %5 = alloca %struct.drm_scatter_gather*, align 8
  %6 = alloca %struct.drm_sg_mem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca %struct.drm_sg_mem, align 8
  store %struct.drm_device* %0, %struct.drm_device** %4, align 8
  store %struct.drm_scatter_gather* %1, %struct.drm_scatter_gather** %5, align 8
  %10 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  %11 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %12 = load i32, i32* @DRIVER_SG, align 4
  %13 = call i32 @drm_core_check_feature(%struct.drm_device* %11, i32 %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %141

18:                                               ; preds = %2
  %19 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %20 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %19, i32 0, i32 0
  %21 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %20, align 8
  %22 = icmp ne %struct.drm_sg_mem* %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %141

26:                                               ; preds = %18
  %27 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %28 = load i32, i32* @M_NOWAIT, align 4
  %29 = load i32, i32* @M_ZERO, align 4
  %30 = or i32 %28, %29
  %31 = call i8* @malloc(i32 24, i32 %27, i32 %30)
  %32 = bitcast i8* %31 to %struct.drm_sg_mem*
  store %struct.drm_sg_mem* %32, %struct.drm_sg_mem** %6, align 8
  %33 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %34 = icmp ne %struct.drm_sg_mem* %33, null
  br i1 %34, label %38, label %35

35:                                               ; preds = %26
  %36 = load i32, i32* @ENOMEM, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %141

38:                                               ; preds = %26
  %39 = load %struct.drm_scatter_gather*, %struct.drm_scatter_gather** %5, align 8
  %40 = getelementptr inbounds %struct.drm_scatter_gather, %struct.drm_scatter_gather* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %41)
  %43 = load %struct.drm_scatter_gather*, %struct.drm_scatter_gather** %5, align 8
  %44 = getelementptr inbounds %struct.drm_scatter_gather, %struct.drm_scatter_gather* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @round_page(i32 %45)
  store i32 %46, i32* %7, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @atop(i32 %47)
  %49 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %50 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 8
  %51 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %52 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = mul i64 %54, 24
  %56 = trunc i64 %55 to i32
  %57 = load i32, i32* @DRM_MEM_SGLISTS, align 4
  %58 = load i32, i32* @M_NOWAIT, align 4
  %59 = load i32, i32* @M_ZERO, align 4
  %60 = or i32 %58, %59
  %61 = call i8* @malloc(i32 %56, i32 %57, i32 %60)
  %62 = bitcast i8* %61 to %struct.drm_sg_mem*
  %63 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %64 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %63, i32 0, i32 2
  store %struct.drm_sg_mem* %62, %struct.drm_sg_mem** %64, align 8
  %65 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %66 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %65, i32 0, i32 2
  %67 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %66, align 8
  %68 = icmp ne %struct.drm_sg_mem* %67, null
  br i1 %68, label %75, label %69

69:                                               ; preds = %38
  %70 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %71 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %72 = call i32 @free(%struct.drm_sg_mem* %70, i32 %71)
  %73 = load i32, i32* @ENOMEM, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %141

75:                                               ; preds = %38
  %76 = load i32, i32* %7, align 4
  %77 = call i64 @drm_vmalloc_dma(i32 %76)
  %78 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %79 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %78, i32 0, i32 1
  store i64 %77, i64* %79, align 8
  %80 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %81 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %80, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %82, 0
  br i1 %83, label %84, label %95

84:                                               ; preds = %75
  %85 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %86 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %85, i32 0, i32 2
  %87 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %86, align 8
  %88 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %89 = call i32 @free(%struct.drm_sg_mem* %87, i32 %88)
  %90 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %91 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %92 = call i32 @free(%struct.drm_sg_mem* %90, i32 %91)
  %93 = load i32, i32* @ENOMEM, align 4
  %94 = sub nsw i32 0, %93
  store i32 %94, i32* %3, align 4
  br label %141

95:                                               ; preds = %75
  store i64 0, i64* %8, align 8
  br label %96

96:                                               ; preds = %117, %95
  %97 = load i64, i64* %8, align 8
  %98 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %99 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = icmp ult i64 %97, %101
  br i1 %102, label %103, label %120

103:                                              ; preds = %96
  %104 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %105 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %104, i32 0, i32 2
  %106 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %105, align 8
  %107 = load i64, i64* %8, align 8
  %108 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %106, i64 %107
  %109 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %110 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* %8, align 8
  %113 = call i64 @IDX_TO_OFF(i64 %112)
  %114 = add nsw i64 %111, %113
  call void @vtophys(%struct.drm_sg_mem* sret %9, i64 %114)
  %115 = bitcast %struct.drm_sg_mem* %108 to i8*
  %116 = bitcast %struct.drm_sg_mem* %9 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %115, i8* align 8 %116, i64 24, i1 false)
  br label %117

117:                                              ; preds = %103
  %118 = load i64, i64* %8, align 8
  %119 = add i64 %118, 1
  store i64 %119, i64* %8, align 8
  br label %96

120:                                              ; preds = %96
  %121 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %122 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %121, i32 0, i32 1
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.drm_scatter_gather*, %struct.drm_scatter_gather** %5, align 8
  %125 = getelementptr inbounds %struct.drm_scatter_gather, %struct.drm_scatter_gather* %124, i32 0, i32 0
  store i64 %123, i64* %125, align 8
  %126 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %127 = load %struct.drm_device*, %struct.drm_device** %4, align 8
  %128 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %127, i32 0, i32 0
  store %struct.drm_sg_mem* %126, %struct.drm_sg_mem** %128, align 8
  %129 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %130 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 8
  %132 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %133 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.drm_sg_mem*, %struct.drm_sg_mem** %6, align 8
  %136 = getelementptr inbounds %struct.drm_sg_mem, %struct.drm_sg_mem* %135, i32 0, i32 1
  %137 = load i64, i64* %136, align 8
  %138 = inttoptr i64 %137 to i64*
  %139 = load i64, i64* %138, align 8
  %140 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %131, i64 %134, i64 %139)
  store i32 0, i32* %3, align 4
  br label %141

141:                                              ; preds = %120, %84, %69, %35, %23, %15
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local i32 @drm_core_check_feature(%struct.drm_device*, i32) #1

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @round_page(i32) #1

declare dso_local i32 @atop(i32) #1

declare dso_local i32 @free(%struct.drm_sg_mem*, i32) #1

declare dso_local i64 @drm_vmalloc_dma(i32) #1

declare dso_local void @vtophys(%struct.drm_sg_mem* sret, i64) #1

declare dso_local i64 @IDX_TO_OFF(i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
