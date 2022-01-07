; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem_names.c_drm_gem_name_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem_names.c_drm_gem_name_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_names = type { i32, i32 }
%struct.drm_gem_name = type { i32, i8* }

@EALREADY = common dso_local global i32 0, align 4
@M_GEM_NAMES = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@link = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_gem_name_create(%struct.drm_gem_names* %0, i8* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.drm_gem_names*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.drm_gem_name*, align 8
  store %struct.drm_gem_names* %0, %struct.drm_gem_names** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32* %2, i32** %7, align 8
  %9 = load i32*, i32** %7, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i32, i32* @EALREADY, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %4, align 4
  br label %60

15:                                               ; preds = %3
  %16 = load i32, i32* @M_GEM_NAMES, align 4
  %17 = load i32, i32* @M_WAITOK, align 4
  %18 = call %struct.drm_gem_name* @malloc(i32 16, i32 %16, i32 %17)
  store %struct.drm_gem_name* %18, %struct.drm_gem_name** %8, align 8
  %19 = load %struct.drm_gem_names*, %struct.drm_gem_names** %5, align 8
  %20 = getelementptr inbounds %struct.drm_gem_names, %struct.drm_gem_names* %19, i32 0, i32 0
  %21 = call i32 @mtx_lock(i32* %20)
  %22 = load %struct.drm_gem_names*, %struct.drm_gem_names** %5, align 8
  %23 = getelementptr inbounds %struct.drm_gem_names, %struct.drm_gem_names* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @alloc_unr(i32 %24)
  %26 = load %struct.drm_gem_name*, %struct.drm_gem_name** %8, align 8
  %27 = getelementptr inbounds %struct.drm_gem_name, %struct.drm_gem_name* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.drm_gem_name*, %struct.drm_gem_name** %8, align 8
  %29 = getelementptr inbounds %struct.drm_gem_name, %struct.drm_gem_name* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, -1
  br i1 %31, label %32, label %41

32:                                               ; preds = %15
  %33 = load %struct.drm_gem_names*, %struct.drm_gem_names** %5, align 8
  %34 = getelementptr inbounds %struct.drm_gem_names, %struct.drm_gem_names* %33, i32 0, i32 0
  %35 = call i32 @mtx_unlock(i32* %34)
  %36 = load %struct.drm_gem_name*, %struct.drm_gem_name** %8, align 8
  %37 = load i32, i32* @M_GEM_NAMES, align 4
  %38 = call i32 @free(%struct.drm_gem_name* %36, i32 %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %4, align 4
  br label %60

41:                                               ; preds = %15
  %42 = load %struct.drm_gem_name*, %struct.drm_gem_name** %8, align 8
  %43 = getelementptr inbounds %struct.drm_gem_name, %struct.drm_gem_name* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32*, i32** %7, align 8
  store i32 %44, i32* %45, align 4
  %46 = load i8*, i8** %6, align 8
  %47 = load %struct.drm_gem_name*, %struct.drm_gem_name** %8, align 8
  %48 = getelementptr inbounds %struct.drm_gem_name, %struct.drm_gem_name* %47, i32 0, i32 1
  store i8* %46, i8** %48, align 8
  %49 = load %struct.drm_gem_names*, %struct.drm_gem_names** %5, align 8
  %50 = load %struct.drm_gem_name*, %struct.drm_gem_name** %8, align 8
  %51 = getelementptr inbounds %struct.drm_gem_name, %struct.drm_gem_name* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @gem_name_hash_index(%struct.drm_gem_names* %49, i32 %52)
  %54 = load %struct.drm_gem_name*, %struct.drm_gem_name** %8, align 8
  %55 = load i32, i32* @link, align 4
  %56 = call i32 @LIST_INSERT_HEAD(i32 %53, %struct.drm_gem_name* %54, i32 %55)
  %57 = load %struct.drm_gem_names*, %struct.drm_gem_names** %5, align 8
  %58 = getelementptr inbounds %struct.drm_gem_names, %struct.drm_gem_names* %57, i32 0, i32 0
  %59 = call i32 @mtx_unlock(i32* %58)
  store i32 0, i32* %4, align 4
  br label %60

60:                                               ; preds = %41, %32, %12
  %61 = load i32, i32* %4, align 4
  ret i32 %61
}

declare dso_local %struct.drm_gem_name* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @alloc_unr(i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @free(%struct.drm_gem_name*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32, %struct.drm_gem_name*, i32) #1

declare dso_local i32 @gem_name_hash_index(%struct.drm_gem_names*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
