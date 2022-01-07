; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_context.c_drm_addctx.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_context.c_drm_addctx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_device = type { i32, i32 }
%struct.drm_file = type { i32 }
%struct.drm_ctx_list = type { i32, i32, %struct.drm_file* }
%struct.drm_ctx = type { i32 }

@DRM_KERNEL_CONTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"Not enough free contexts.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@DRM_MEM_CTXBITMAP = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [15 x i8] c"out of memory\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_addctx(%struct.drm_device* %0, i8* %1, %struct.drm_file* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_device*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.drm_file*, align 8
  %8 = alloca %struct.drm_ctx_list*, align 8
  %9 = alloca %struct.drm_ctx*, align 8
  store %struct.drm_device* %0, %struct.drm_device** %5, align 8
  store i8* %1, i8** %6, align 8
  store %struct.drm_file* %2, %struct.drm_file** %7, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.drm_ctx*
  store %struct.drm_ctx* %11, %struct.drm_ctx** %9, align 8
  %12 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %13 = call i8* @drm_ctxbitmap_next(%struct.drm_device* %12)
  %14 = ptrtoint i8* %13 to i32
  %15 = load %struct.drm_ctx*, %struct.drm_ctx** %9, align 8
  %16 = getelementptr inbounds %struct.drm_ctx, %struct.drm_ctx* %15, i32 0, i32 0
  store i32 %14, i32* %16, align 4
  %17 = load %struct.drm_ctx*, %struct.drm_ctx** %9, align 8
  %18 = getelementptr inbounds %struct.drm_ctx, %struct.drm_ctx* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @DRM_KERNEL_CONTEXT, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %28

22:                                               ; preds = %3
  %23 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %24 = call i8* @drm_ctxbitmap_next(%struct.drm_device* %23)
  %25 = ptrtoint i8* %24 to i32
  %26 = load %struct.drm_ctx*, %struct.drm_ctx** %9, align 8
  %27 = getelementptr inbounds %struct.drm_ctx, %struct.drm_ctx* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  br label %28

28:                                               ; preds = %22, %3
  %29 = load %struct.drm_ctx*, %struct.drm_ctx** %9, align 8
  %30 = getelementptr inbounds %struct.drm_ctx, %struct.drm_ctx* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %31)
  %33 = load %struct.drm_ctx*, %struct.drm_ctx** %9, align 8
  %34 = getelementptr inbounds %struct.drm_ctx, %struct.drm_ctx* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %37, label %41

37:                                               ; preds = %28
  %38 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0))
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %76

41:                                               ; preds = %28
  %42 = load i32, i32* @DRM_MEM_CTXBITMAP, align 4
  %43 = load i32, i32* @M_NOWAIT, align 4
  %44 = call %struct.drm_ctx_list* @malloc(i32 16, i32 %42, i32 %43)
  store %struct.drm_ctx_list* %44, %struct.drm_ctx_list** %8, align 8
  %45 = load %struct.drm_ctx_list*, %struct.drm_ctx_list** %8, align 8
  %46 = icmp ne %struct.drm_ctx_list* %45, null
  br i1 %46, label %51, label %47

47:                                               ; preds = %41
  %48 = call i32 (i8*, ...) @DRM_DEBUG(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %4, align 4
  br label %76

51:                                               ; preds = %41
  %52 = load %struct.drm_ctx_list*, %struct.drm_ctx_list** %8, align 8
  %53 = getelementptr inbounds %struct.drm_ctx_list, %struct.drm_ctx_list* %52, i32 0, i32 1
  %54 = call i32 @INIT_LIST_HEAD(i32* %53)
  %55 = load %struct.drm_ctx*, %struct.drm_ctx** %9, align 8
  %56 = getelementptr inbounds %struct.drm_ctx, %struct.drm_ctx* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.drm_ctx_list*, %struct.drm_ctx_list** %8, align 8
  %59 = getelementptr inbounds %struct.drm_ctx_list, %struct.drm_ctx_list* %58, i32 0, i32 0
  store i32 %57, i32* %59, align 8
  %60 = load %struct.drm_file*, %struct.drm_file** %7, align 8
  %61 = load %struct.drm_ctx_list*, %struct.drm_ctx_list** %8, align 8
  %62 = getelementptr inbounds %struct.drm_ctx_list, %struct.drm_ctx_list* %61, i32 0, i32 2
  store %struct.drm_file* %60, %struct.drm_file** %62, align 8
  %63 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %64 = call i32 @DRM_LOCK(%struct.drm_device* %63)
  %65 = load %struct.drm_ctx_list*, %struct.drm_ctx_list** %8, align 8
  %66 = getelementptr inbounds %struct.drm_ctx_list, %struct.drm_ctx_list* %65, i32 0, i32 1
  %67 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %68 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %67, i32 0, i32 1
  %69 = call i32 @list_add(i32* %66, i32* %68)
  %70 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %71 = getelementptr inbounds %struct.drm_device, %struct.drm_device* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %71, align 4
  %74 = load %struct.drm_device*, %struct.drm_device** %5, align 8
  %75 = call i32 @DRM_UNLOCK(%struct.drm_device* %74)
  store i32 0, i32* %4, align 4
  br label %76

76:                                               ; preds = %51, %47, %37
  %77 = load i32, i32* %4, align 4
  ret i32 %77
}

declare dso_local i8* @drm_ctxbitmap_next(%struct.drm_device*) #1

declare dso_local i32 @DRM_DEBUG(i8*, ...) #1

declare dso_local %struct.drm_ctx_list* @malloc(i32, i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @DRM_LOCK(%struct.drm_device*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @DRM_UNLOCK(%struct.drm_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
