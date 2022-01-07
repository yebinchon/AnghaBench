; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_hashtab.c_drm_ht_just_insert_please.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_hashtab.c_drm_ht_just_insert_please.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_open_hash = type { i32 }
%struct.drm_hash_item = type { i64 }

@.str = private unnamed_addr constant [35 x i8] c"Available key bit space exhausted\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_ht_just_insert_please(%struct.drm_open_hash* %0, %struct.drm_hash_item* %1, i64 %2, i32 %3, i32 %4, i64 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.drm_open_hash*, align 8
  %9 = alloca %struct.drm_hash_item*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.drm_open_hash* %0, %struct.drm_open_hash** %8, align 8
  store %struct.drm_hash_item* %1, %struct.drm_hash_item** %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i64 %5, i64* %13, align 8
  %18 = load i32, i32* %11, align 4
  %19 = shl i32 1, %18
  %20 = sub nsw i32 %19, 1
  %21 = sext i32 %20 to i64
  store i64 %21, i64* %15, align 8
  store i64 0, i64* %17, align 8
  %22 = load i64, i64* %17, align 8
  %23 = call i64 @hash32_buf(i64* %10, i32 8, i64 %22)
  store i64 %23, i64* %17, align 8
  %24 = load i64, i64* %17, align 8
  store i64 %24, i64* %16, align 8
  br label %25

25:                                               ; preds = %52, %6
  %26 = load i64, i64* %17, align 8
  %27 = load i32, i32* %12, align 4
  %28 = zext i32 %27 to i64
  %29 = shl i64 %26, %28
  %30 = load i64, i64* %13, align 8
  %31 = add i64 %29, %30
  %32 = load %struct.drm_hash_item*, %struct.drm_hash_item** %9, align 8
  %33 = getelementptr inbounds %struct.drm_hash_item, %struct.drm_hash_item* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  %34 = load %struct.drm_open_hash*, %struct.drm_open_hash** %8, align 8
  %35 = load %struct.drm_hash_item*, %struct.drm_hash_item** %9, align 8
  %36 = call i32 @drm_ht_insert_item(%struct.drm_open_hash* %34, %struct.drm_hash_item* %35)
  store i32 %36, i32* %14, align 4
  %37 = load i32, i32* %14, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %44

39:                                               ; preds = %25
  %40 = load i64, i64* %17, align 8
  %41 = add i64 %40, 1
  %42 = load i64, i64* %15, align 8
  %43 = and i64 %41, %42
  store i64 %43, i64* %17, align 8
  br label %44

44:                                               ; preds = %39, %25
  br label %45

45:                                               ; preds = %44
  %46 = load i32, i32* %14, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i64, i64* %17, align 8
  %50 = load i64, i64* %16, align 8
  %51 = icmp ne i64 %49, %50
  br label %52

52:                                               ; preds = %48, %45
  %53 = phi i1 [ false, %45 ], [ %51, %48 ]
  br i1 %53, label %25, label %54

54:                                               ; preds = %52
  %55 = load i32, i32* %14, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %54
  %58 = call i32 @DRM_ERROR(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %59 = load i32, i32* @EINVAL, align 4
  %60 = sub nsw i32 0, %59
  store i32 %60, i32* %7, align 4
  br label %62

61:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %61, %57
  %63 = load i32, i32* %7, align 4
  ret i32 %63
}

declare dso_local i64 @hash32_buf(i64*, i32, i64) #1

declare dso_local i32 @drm_ht_insert_item(%struct.drm_open_hash*, %struct.drm_hash_item*) #1

declare dso_local i32 @DRM_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
