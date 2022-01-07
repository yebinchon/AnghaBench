; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem_names.c_drm_gem_names_fini.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem_names.c_drm_gem_names_fini.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_names = type { i32, i32, i32*, i32 }
%struct.drm_gem_name = type { i32 }

@M_GEM_NAMES = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_names_fini(%struct.drm_gem_names* %0) #0 {
  %2 = alloca %struct.drm_gem_names*, align 8
  %3 = alloca %struct.drm_gem_name*, align 8
  %4 = alloca i32, align 4
  store %struct.drm_gem_names* %0, %struct.drm_gem_names** %2, align 8
  %5 = load %struct.drm_gem_names*, %struct.drm_gem_names** %2, align 8
  %6 = getelementptr inbounds %struct.drm_gem_names, %struct.drm_gem_names* %5, i32 0, i32 3
  %7 = call i32 @mtx_lock(i32* %6)
  store i32 0, i32* %4, align 4
  br label %8

8:                                                ; preds = %32, %1
  %9 = load i32, i32* %4, align 4
  %10 = load %struct.drm_gem_names*, %struct.drm_gem_names** %2, align 8
  %11 = getelementptr inbounds %struct.drm_gem_names, %struct.drm_gem_names* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = icmp sle i32 %9, %12
  br i1 %13, label %14, label %35

14:                                               ; preds = %8
  br label %15

15:                                               ; preds = %24, %14
  %16 = load %struct.drm_gem_names*, %struct.drm_gem_names** %2, align 8
  %17 = getelementptr inbounds %struct.drm_gem_names, %struct.drm_gem_names* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = call %struct.drm_gem_name* @LIST_FIRST(i32* %21)
  store %struct.drm_gem_name* %22, %struct.drm_gem_name** %3, align 8
  %23 = icmp ne %struct.drm_gem_name* %22, null
  br i1 %23, label %24, label %31

24:                                               ; preds = %15
  %25 = load %struct.drm_gem_names*, %struct.drm_gem_names** %2, align 8
  %26 = load %struct.drm_gem_name*, %struct.drm_gem_name** %3, align 8
  %27 = call i32 @drm_gem_names_delete_name(%struct.drm_gem_names* %25, %struct.drm_gem_name* %26)
  %28 = load %struct.drm_gem_names*, %struct.drm_gem_names** %2, align 8
  %29 = getelementptr inbounds %struct.drm_gem_names, %struct.drm_gem_names* %28, i32 0, i32 3
  %30 = call i32 @mtx_lock(i32* %29)
  br label %15

31:                                               ; preds = %15
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %8

35:                                               ; preds = %8
  %36 = load %struct.drm_gem_names*, %struct.drm_gem_names** %2, align 8
  %37 = getelementptr inbounds %struct.drm_gem_names, %struct.drm_gem_names* %36, i32 0, i32 3
  %38 = call i32 @mtx_unlock(i32* %37)
  %39 = load %struct.drm_gem_names*, %struct.drm_gem_names** %2, align 8
  %40 = getelementptr inbounds %struct.drm_gem_names, %struct.drm_gem_names* %39, i32 0, i32 3
  %41 = call i32 @mtx_destroy(i32* %40)
  %42 = load %struct.drm_gem_names*, %struct.drm_gem_names** %2, align 8
  %43 = getelementptr inbounds %struct.drm_gem_names, %struct.drm_gem_names* %42, i32 0, i32 2
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* @M_GEM_NAMES, align 4
  %46 = load %struct.drm_gem_names*, %struct.drm_gem_names** %2, align 8
  %47 = getelementptr inbounds %struct.drm_gem_names, %struct.drm_gem_names* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @hashdestroy(i32* %44, i32 %45, i32 %48)
  %50 = load %struct.drm_gem_names*, %struct.drm_gem_names** %2, align 8
  %51 = getelementptr inbounds %struct.drm_gem_names, %struct.drm_gem_names* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @delete_unrhdr(i32 %52)
  ret void
}

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local %struct.drm_gem_name* @LIST_FIRST(i32*) #1

declare dso_local i32 @drm_gem_names_delete_name(%struct.drm_gem_names*, %struct.drm_gem_name*) #1

declare dso_local i32 @mtx_unlock(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

declare dso_local i32 @hashdestroy(i32*, i32, i32) #1

declare dso_local i32 @delete_unrhdr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
