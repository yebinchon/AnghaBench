; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem_names.c_drm_gem_names_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_gem_names.c_drm_gem_names_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_gem_names = type { i32, i32, i32, i32 }

@INT_MAX = common dso_local global i32 0, align 4
@M_GEM_NAMES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"drmnames\00", align 1
@MTX_DEF = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @drm_gem_names_init(%struct.drm_gem_names* %0) #0 {
  %2 = alloca %struct.drm_gem_names*, align 8
  store %struct.drm_gem_names* %0, %struct.drm_gem_names** %2, align 8
  %3 = load i32, i32* @INT_MAX, align 4
  %4 = call i32 @new_unrhdr(i32 1, i32 %3, i32* null)
  %5 = load %struct.drm_gem_names*, %struct.drm_gem_names** %2, align 8
  %6 = getelementptr inbounds %struct.drm_gem_names, %struct.drm_gem_names* %5, i32 0, i32 3
  store i32 %4, i32* %6, align 4
  %7 = load i32, i32* @M_GEM_NAMES, align 4
  %8 = load %struct.drm_gem_names*, %struct.drm_gem_names** %2, align 8
  %9 = getelementptr inbounds %struct.drm_gem_names, %struct.drm_gem_names* %8, i32 0, i32 1
  %10 = call i32 @hashinit(i32 1000, i32 %7, i32* %9)
  %11 = load %struct.drm_gem_names*, %struct.drm_gem_names** %2, align 8
  %12 = getelementptr inbounds %struct.drm_gem_names, %struct.drm_gem_names* %11, i32 0, i32 2
  store i32 %10, i32* %12, align 4
  %13 = load %struct.drm_gem_names*, %struct.drm_gem_names** %2, align 8
  %14 = getelementptr inbounds %struct.drm_gem_names, %struct.drm_gem_names* %13, i32 0, i32 0
  %15 = load i32, i32* @MTX_DEF, align 4
  %16 = call i32 @mtx_init(i32* %14, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* null, i32 %15)
  ret void
}

declare dso_local i32 @new_unrhdr(i32, i32, i32*) #1

declare dso_local i32 @hashinit(i32, i32, i32*) #1

declare dso_local i32 @mtx_init(i32*, i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
