; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_global.c_drm_global_item_ref.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_global.c_drm_global_item_ref.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_global_item = type { i64, i32*, i32 }
%struct.drm_global_reference = type { i64, {}*, i32*, i32 }

@glob = common dso_local global %struct.drm_global_item* null, align 8
@M_DRM_GLOBAL = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_global_item_ref(%struct.drm_global_reference* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.drm_global_reference*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_global_item*, align 8
  %6 = alloca i8*, align 8
  store %struct.drm_global_reference* %0, %struct.drm_global_reference** %3, align 8
  %7 = load %struct.drm_global_item*, %struct.drm_global_item** @glob, align 8
  %8 = load %struct.drm_global_reference*, %struct.drm_global_reference** %3, align 8
  %9 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %7, i64 %10
  store %struct.drm_global_item* %11, %struct.drm_global_item** %5, align 8
  %12 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %13 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %12, i32 0, i32 2
  %14 = call i32 @sx_xlock(i32* %13)
  %15 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %16 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %1
  %20 = load %struct.drm_global_reference*, %struct.drm_global_reference** %3, align 8
  %21 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i32, i32* @M_DRM_GLOBAL, align 4
  %24 = load i32, i32* @M_NOWAIT, align 4
  %25 = load i32, i32* @M_ZERO, align 4
  %26 = or i32 %24, %25
  %27 = call i32* @malloc(i32 %22, i32 %23, i32 %26)
  %28 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %29 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %28, i32 0, i32 1
  store i32* %27, i32** %29, align 8
  %30 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %31 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %30, i32 0, i32 1
  %32 = load i32*, i32** %31, align 8
  %33 = icmp eq i32* %32, null
  %34 = zext i1 %33 to i32
  %35 = call i64 @unlikely(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %19
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %76

40:                                               ; preds = %19
  %41 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %42 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load %struct.drm_global_reference*, %struct.drm_global_reference** %3, align 8
  %45 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %44, i32 0, i32 2
  store i32* %43, i32** %45, align 8
  %46 = load %struct.drm_global_reference*, %struct.drm_global_reference** %3, align 8
  %47 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %46, i32 0, i32 1
  %48 = bitcast {}** %47 to i32 (%struct.drm_global_reference*)**
  %49 = load i32 (%struct.drm_global_reference*)*, i32 (%struct.drm_global_reference*)** %48, align 8
  %50 = load %struct.drm_global_reference*, %struct.drm_global_reference** %3, align 8
  %51 = call i32 %49(%struct.drm_global_reference* %50)
  store i32 %51, i32* %4, align 4
  %52 = load i32, i32* %4, align 4
  %53 = icmp ne i32 %52, 0
  %54 = zext i1 %53 to i32
  %55 = call i64 @unlikely(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %40
  br label %76

58:                                               ; preds = %40
  br label %59

59:                                               ; preds = %58, %1
  %60 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %61 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, 1
  store i64 %63, i64* %61, align 8
  %64 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %65 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %64, i32 0, i32 1
  %66 = load i32*, i32** %65, align 8
  %67 = load %struct.drm_global_reference*, %struct.drm_global_reference** %3, align 8
  %68 = getelementptr inbounds %struct.drm_global_reference, %struct.drm_global_reference* %67, i32 0, i32 2
  store i32* %66, i32** %68, align 8
  %69 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %70 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %69, i32 0, i32 1
  %71 = load i32*, i32** %70, align 8
  %72 = bitcast i32* %71 to i8*
  store i8* %72, i8** %6, align 8
  %73 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %74 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %73, i32 0, i32 2
  %75 = call i32 @sx_xunlock(i32* %74)
  store i32 0, i32* %2, align 4
  br label %83

76:                                               ; preds = %57, %37
  %77 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %78 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %77, i32 0, i32 2
  %79 = call i32 @sx_xunlock(i32* %78)
  %80 = load %struct.drm_global_item*, %struct.drm_global_item** %5, align 8
  %81 = getelementptr inbounds %struct.drm_global_item, %struct.drm_global_item* %80, i32 0, i32 1
  store i32* null, i32** %81, align 8
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %76, %59
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local i32 @sx_xlock(i32*) #1

declare dso_local i32* @malloc(i32, i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @sx_xunlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
