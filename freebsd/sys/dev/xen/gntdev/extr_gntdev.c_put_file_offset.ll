; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_put_file_offset.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/xen/gntdev/extr_gntdev.c_put_file_offset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_user_data = type { i32, i32 }
%struct.file_offset_struct = type { i64, i32 }

@M_GNTDEV = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@file_offset_head = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.per_user_data*, i32, i64)* @put_file_offset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_file_offset(%struct.per_user_data* %0, i32 %1, i64 %2) #0 {
  %4 = alloca %struct.per_user_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca %struct.file_offset_struct*, align 8
  %8 = alloca %struct.file_offset_struct*, align 8
  %9 = alloca %struct.file_offset_struct*, align 8
  store %struct.per_user_data* %0, %struct.per_user_data** %4, align 8
  store i32 %1, i32* %5, align 4
  store i64 %2, i64* %6, align 8
  %10 = load i32, i32* @M_GNTDEV, align 4
  %11 = load i32, i32* @M_WAITOK, align 4
  %12 = load i32, i32* @M_ZERO, align 4
  %13 = or i32 %11, %12
  %14 = call %struct.file_offset_struct* @malloc(i32 16, i32 %10, i32 %13)
  store %struct.file_offset_struct* %14, %struct.file_offset_struct** %7, align 8
  %15 = load i64, i64* %6, align 8
  %16 = load %struct.file_offset_struct*, %struct.file_offset_struct** %7, align 8
  %17 = getelementptr inbounds %struct.file_offset_struct, %struct.file_offset_struct* %16, i32 0, i32 0
  store i64 %15, i64* %17, align 8
  %18 = load i32, i32* %5, align 4
  %19 = load %struct.file_offset_struct*, %struct.file_offset_struct** %7, align 8
  %20 = getelementptr inbounds %struct.file_offset_struct, %struct.file_offset_struct* %19, i32 0, i32 1
  store i32 %18, i32* %20, align 8
  %21 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %22 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %21, i32 0, i32 0
  %23 = call i32 @mtx_lock(i32* %22)
  %24 = load i32, i32* @file_offset_head, align 4
  %25 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %26 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %25, i32 0, i32 1
  %27 = load %struct.file_offset_struct*, %struct.file_offset_struct** %7, align 8
  %28 = call i32 @RB_INSERT(i32 %24, i32* %26, %struct.file_offset_struct* %27)
  %29 = load i32, i32* @file_offset_head, align 4
  %30 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %31 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %30, i32 0, i32 1
  %32 = load %struct.file_offset_struct*, %struct.file_offset_struct** %7, align 8
  %33 = call %struct.file_offset_struct* @RB_NEXT(i32 %29, i32* %31, %struct.file_offset_struct* %32)
  store %struct.file_offset_struct* %33, %struct.file_offset_struct** %8, align 8
  %34 = load i32, i32* @file_offset_head, align 4
  %35 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %36 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %35, i32 0, i32 1
  %37 = load %struct.file_offset_struct*, %struct.file_offset_struct** %7, align 8
  %38 = call %struct.file_offset_struct* @RB_PREV(i32 %34, i32* %36, %struct.file_offset_struct* %37)
  store %struct.file_offset_struct* %38, %struct.file_offset_struct** %9, align 8
  %39 = load %struct.file_offset_struct*, %struct.file_offset_struct** %8, align 8
  %40 = icmp ne %struct.file_offset_struct* %39, null
  br i1 %40, label %41, label %72

41:                                               ; preds = %3
  %42 = load %struct.file_offset_struct*, %struct.file_offset_struct** %8, align 8
  %43 = getelementptr inbounds %struct.file_offset_struct, %struct.file_offset_struct* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load %struct.file_offset_struct*, %struct.file_offset_struct** %7, align 8
  %46 = getelementptr inbounds %struct.file_offset_struct, %struct.file_offset_struct* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.file_offset_struct*, %struct.file_offset_struct** %7, align 8
  %49 = getelementptr inbounds %struct.file_offset_struct, %struct.file_offset_struct* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 8
  %51 = load i32, i32* @PAGE_SIZE, align 4
  %52 = mul nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = add nsw i64 %47, %53
  %55 = icmp eq i64 %44, %54
  br i1 %55, label %56, label %72

56:                                               ; preds = %41
  %57 = load %struct.file_offset_struct*, %struct.file_offset_struct** %8, align 8
  %58 = getelementptr inbounds %struct.file_offset_struct, %struct.file_offset_struct* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load %struct.file_offset_struct*, %struct.file_offset_struct** %7, align 8
  %61 = getelementptr inbounds %struct.file_offset_struct, %struct.file_offset_struct* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = add nsw i32 %62, %59
  store i32 %63, i32* %61, align 8
  %64 = load i32, i32* @file_offset_head, align 4
  %65 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %66 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %65, i32 0, i32 1
  %67 = load %struct.file_offset_struct*, %struct.file_offset_struct** %8, align 8
  %68 = call i32 @RB_REMOVE(i32 %64, i32* %66, %struct.file_offset_struct* %67)
  %69 = load %struct.file_offset_struct*, %struct.file_offset_struct** %8, align 8
  %70 = load i32, i32* @M_GNTDEV, align 4
  %71 = call i32 @free(%struct.file_offset_struct* %69, i32 %70)
  br label %72

72:                                               ; preds = %56, %41, %3
  %73 = load %struct.file_offset_struct*, %struct.file_offset_struct** %9, align 8
  %74 = icmp ne %struct.file_offset_struct* %73, null
  br i1 %74, label %75, label %106

75:                                               ; preds = %72
  %76 = load %struct.file_offset_struct*, %struct.file_offset_struct** %7, align 8
  %77 = getelementptr inbounds %struct.file_offset_struct, %struct.file_offset_struct* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.file_offset_struct*, %struct.file_offset_struct** %9, align 8
  %80 = getelementptr inbounds %struct.file_offset_struct, %struct.file_offset_struct* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load %struct.file_offset_struct*, %struct.file_offset_struct** %9, align 8
  %83 = getelementptr inbounds %struct.file_offset_struct, %struct.file_offset_struct* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @PAGE_SIZE, align 4
  %86 = mul nsw i32 %84, %85
  %87 = sext i32 %86 to i64
  %88 = add nsw i64 %81, %87
  %89 = icmp eq i64 %78, %88
  br i1 %89, label %90, label %106

90:                                               ; preds = %75
  %91 = load %struct.file_offset_struct*, %struct.file_offset_struct** %7, align 8
  %92 = getelementptr inbounds %struct.file_offset_struct, %struct.file_offset_struct* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.file_offset_struct*, %struct.file_offset_struct** %9, align 8
  %95 = getelementptr inbounds %struct.file_offset_struct, %struct.file_offset_struct* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = add nsw i32 %96, %93
  store i32 %97, i32* %95, align 8
  %98 = load i32, i32* @file_offset_head, align 4
  %99 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %100 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %99, i32 0, i32 1
  %101 = load %struct.file_offset_struct*, %struct.file_offset_struct** %7, align 8
  %102 = call i32 @RB_REMOVE(i32 %98, i32* %100, %struct.file_offset_struct* %101)
  %103 = load %struct.file_offset_struct*, %struct.file_offset_struct** %7, align 8
  %104 = load i32, i32* @M_GNTDEV, align 4
  %105 = call i32 @free(%struct.file_offset_struct* %103, i32 %104)
  br label %106

106:                                              ; preds = %90, %75, %72
  %107 = load %struct.per_user_data*, %struct.per_user_data** %4, align 8
  %108 = getelementptr inbounds %struct.per_user_data, %struct.per_user_data* %107, i32 0, i32 0
  %109 = call i32 @mtx_unlock(i32* %108)
  ret void
}

declare dso_local %struct.file_offset_struct* @malloc(i32, i32, i32) #1

declare dso_local i32 @mtx_lock(i32*) #1

declare dso_local i32 @RB_INSERT(i32, i32*, %struct.file_offset_struct*) #1

declare dso_local %struct.file_offset_struct* @RB_NEXT(i32, i32*, %struct.file_offset_struct*) #1

declare dso_local %struct.file_offset_struct* @RB_PREV(i32, i32*, %struct.file_offset_struct*) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.file_offset_struct*) #1

declare dso_local i32 @free(%struct.file_offset_struct*, i32) #1

declare dso_local i32 @mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
