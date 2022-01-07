; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_hashtab.c_drm_ht_create.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_hashtab.c_drm_ht_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_open_hash = type { i32, i32, i32*, i32 }

@DRM_MEM_HASHTAB = common dso_local global i32 0, align 4
@HASH_NOWAIT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Out of memory for hash table\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_ht_create(%struct.drm_open_hash* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_open_hash*, align 8
  %5 = alloca i32, align 4
  store %struct.drm_open_hash* %0, %struct.drm_open_hash** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load i32, i32* %5, align 4
  %7 = shl i32 1, %6
  %8 = load %struct.drm_open_hash*, %struct.drm_open_hash** %4, align 8
  %9 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %8, i32 0, i32 0
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* %5, align 4
  %11 = load %struct.drm_open_hash*, %struct.drm_open_hash** %4, align 8
  %12 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %11, i32 0, i32 1
  store i32 %10, i32* %12, align 4
  %13 = load %struct.drm_open_hash*, %struct.drm_open_hash** %4, align 8
  %14 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %13, i32 0, i32 2
  store i32* null, i32** %14, align 8
  %15 = load %struct.drm_open_hash*, %struct.drm_open_hash** %4, align 8
  %16 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @DRM_MEM_HASHTAB, align 4
  %19 = load %struct.drm_open_hash*, %struct.drm_open_hash** %4, align 8
  %20 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %19, i32 0, i32 3
  %21 = load i32, i32* @HASH_NOWAIT, align 4
  %22 = call i32* @hashinit_flags(i32 %17, i32 %18, i32* %20, i32 %21)
  %23 = load %struct.drm_open_hash*, %struct.drm_open_hash** %4, align 8
  %24 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %23, i32 0, i32 2
  store i32* %22, i32** %24, align 8
  %25 = load %struct.drm_open_hash*, %struct.drm_open_hash** %4, align 8
  %26 = getelementptr inbounds %struct.drm_open_hash, %struct.drm_open_hash* %25, i32 0, i32 2
  %27 = load i32*, i32** %26, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %33, label %29

29:                                               ; preds = %2
  %30 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %34

33:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i32, i32* %3, align 4
  ret i32 %35
}

declare dso_local i32* @hashinit_flags(i32, i32, i32*, i32) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
