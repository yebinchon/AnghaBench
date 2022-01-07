; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_lock.c_drm_lock_take.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_lock.c_drm_lock_take.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_lock_data = type { i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@_DRM_LOCK_HELD = common dso_local global i32 0, align 4
@_DRM_LOCK_CONT = common dso_local global i32 0, align 4
@DRM_KERNEL_CONTEXT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"%d holds heavyweight lock\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.drm_lock_data*, i32)* @drm_lock_take to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @drm_lock_take(%struct.drm_lock_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_lock_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store %struct.drm_lock_data* %0, %struct.drm_lock_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.drm_lock_data*, %struct.drm_lock_data** %4, align 8
  %11 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %10, i32 0, i32 3
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store i32* %13, i32** %9, align 8
  %14 = load %struct.drm_lock_data*, %struct.drm_lock_data** %4, align 8
  %15 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %14, i32 0, i32 2
  %16 = call i32 @mtx_lock(i32* %15)
  br label %17

17:                                               ; preds = %51, %2
  %18 = load i32*, i32** %9, align 8
  %19 = load volatile i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = load i32, i32* @_DRM_LOCK_HELD, align 4
  %22 = and i32 %20, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* @_DRM_LOCK_CONT, align 4
  %27 = or i32 %25, %26
  store i32 %27, i32* %7, align 4
  br label %46

28:                                               ; preds = %17
  %29 = load i32, i32* %5, align 4
  %30 = load i32, i32* @_DRM_LOCK_HELD, align 4
  %31 = or i32 %29, %30
  %32 = load %struct.drm_lock_data*, %struct.drm_lock_data** %4, align 8
  %33 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.drm_lock_data*, %struct.drm_lock_data** %4, align 8
  %36 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %34, %37
  %39 = icmp sgt i32 %38, 1
  br i1 %39, label %40, label %42

40:                                               ; preds = %28
  %41 = load i32, i32* @_DRM_LOCK_CONT, align 4
  br label %43

42:                                               ; preds = %28
  br label %43

43:                                               ; preds = %42, %40
  %44 = phi i32 [ %41, %40 ], [ 0, %42 ]
  %45 = or i32 %31, %44
  store i32 %45, i32* %7, align 4
  br label %46

46:                                               ; preds = %43, %24
  %47 = load i32*, i32** %9, align 8
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @cmpxchg(i32* %47, i32 %48, i32 %49)
  store i32 %50, i32* %8, align 4
  br label %51

51:                                               ; preds = %46
  %52 = load i32, i32* %8, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %52, %53
  br i1 %54, label %17, label %55

55:                                               ; preds = %51
  %56 = load %struct.drm_lock_data*, %struct.drm_lock_data** %4, align 8
  %57 = getelementptr inbounds %struct.drm_lock_data, %struct.drm_lock_data* %56, i32 0, i32 2
  %58 = call i32 @mtx_unlock(i32* %57)
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @_DRM_LOCKING_CONTEXT(i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %77

63:                                               ; preds = %55
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @_DRM_LOCK_HELD, align 4
  %66 = and i32 %64, %65
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %76

68:                                               ; preds = %63
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @DRM_KERNEL_CONTEXT, align 4
  %71 = icmp ne i32 %69, %70
  br i1 %71, label %72, label %75

72:                                               ; preds = %68
  %73 = load i32, i32* %5, align 4
  %74 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %73)
  br label %75

75:                                               ; preds = %72, %68
  store i32 0, i32* %3, align 4
  br label %89

76:                                               ; preds = %63
  br label %77

77:                                               ; preds = %76, %55
  %78 = load i32, i32* %7, align 4
  %79 = call i32 @_DRM_LOCKING_CONTEXT(i32 %78)
  %80 = load i32, i32* %5, align 4
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %77
  %83 = load i32, i32* %7, align 4
  %84 = load i32, i32* @_DRM_LOCK_HELD, align 4
  %85 = and i32 %83, %84
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  store i32 1, i32* %3, align 4
  br label %89

88:                                               ; preds = %82, %77
  store i32 0, i32* %3, align 4
  br label %89

89:                                               ; preds = %88, %87, %75
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @cmpxchg(i32*, i32, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @_DRM_LOCKING_CONTEXT(i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
