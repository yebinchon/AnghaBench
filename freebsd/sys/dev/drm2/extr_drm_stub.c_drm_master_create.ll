; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_stub.c_drm_master_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_stub.c_drm_master_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_master = type { i32, %struct.drm_minor*, i32, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i32, i32 }
%struct.drm_minor = type { i32 }

@DRM_MEM_KMS = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"drm_master__lock__spinlock\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4
@DRM_MAGIC_HASH_ORDER = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.drm_master* @drm_master_create(%struct.drm_minor* %0) #0 {
  %2 = alloca %struct.drm_master*, align 8
  %3 = alloca %struct.drm_minor*, align 8
  %4 = alloca %struct.drm_master*, align 8
  store %struct.drm_minor* %0, %struct.drm_minor** %3, align 8
  %5 = load i32, i32* @DRM_MEM_KMS, align 4
  %6 = load i32, i32* @M_NOWAIT, align 4
  %7 = load i32, i32* @M_ZERO, align 4
  %8 = or i32 %6, %7
  %9 = call %struct.drm_master* @malloc(i32 40, i32 %5, i32 %8)
  store %struct.drm_master* %9, %struct.drm_master** %4, align 8
  %10 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %11 = icmp ne %struct.drm_master* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store %struct.drm_master* null, %struct.drm_master** %2, align 8
  br label %42

13:                                               ; preds = %1
  %14 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %15 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %14, i32 0, i32 5
  %16 = call i32 @refcount_init(i32* %15, i32 1)
  %17 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %18 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %17, i32 0, i32 4
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 1
  %20 = load i32, i32* @MTX_DEF, align 4
  %21 = call i32 @mtx_init(i32* %19, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32* null, i32 %20)
  %22 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %23 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %22, i32 0, i32 4
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = call i32 @DRM_INIT_WAITQUEUE(i32* %24)
  %26 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %27 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %26, i32 0, i32 3
  %28 = load i32, i32* @DRM_MAGIC_HASH_ORDER, align 4
  %29 = call i32 @drm_ht_create(i32* %27, i32 %28)
  %30 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %31 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %30, i32 0, i32 2
  %32 = call i32 @INIT_LIST_HEAD(i32* %31)
  %33 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %34 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %35 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %34, i32 0, i32 1
  store %struct.drm_minor* %33, %struct.drm_minor** %35, align 8
  %36 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  %37 = getelementptr inbounds %struct.drm_master, %struct.drm_master* %36, i32 0, i32 0
  %38 = load %struct.drm_minor*, %struct.drm_minor** %3, align 8
  %39 = getelementptr inbounds %struct.drm_minor, %struct.drm_minor* %38, i32 0, i32 0
  %40 = call i32 @list_add_tail(i32* %37, i32* %39)
  %41 = load %struct.drm_master*, %struct.drm_master** %4, align 8
  store %struct.drm_master* %41, %struct.drm_master** %2, align 8
  br label %42

42:                                               ; preds = %13, %12
  %43 = load %struct.drm_master*, %struct.drm_master** %2, align 8
  ret %struct.drm_master* %43
}

declare dso_local %struct.drm_master* @malloc(i32, i32, i32) #1

declare dso_local i32 @refcount_init(i32*, i32) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

declare dso_local i32 @DRM_INIT_WAITQUEUE(i32*) #1

declare dso_local i32 @drm_ht_create(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
