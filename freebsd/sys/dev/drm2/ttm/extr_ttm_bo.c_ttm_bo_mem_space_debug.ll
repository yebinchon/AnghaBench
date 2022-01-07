; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_mem_space_debug.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/ttm/extr_ttm_bo.c_ttm_bo_mem_space_debug.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ttm_buffer_object = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.ttm_placement = type { i32, i32* }

@.str = private unnamed_addr constant [41 x i8] c"No space for %p (%lu pages, %luK, %luM)\0A\00", align 1
@.str.1 = private unnamed_addr constant [29 x i8] c"  placement[%d]=0x%08X (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ttm_buffer_object*, %struct.ttm_placement*)* @ttm_bo_mem_space_debug to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ttm_bo_mem_space_debug(%struct.ttm_buffer_object* %0, %struct.ttm_placement* %1) #0 {
  %3 = alloca %struct.ttm_buffer_object*, align 8
  %4 = alloca %struct.ttm_placement*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.ttm_buffer_object* %0, %struct.ttm_buffer_object** %3, align 8
  store %struct.ttm_placement* %1, %struct.ttm_placement** %4, align 8
  %8 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %9 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %10 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %14 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = ashr i32 %16, 10
  %18 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %19 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = ashr i32 %21, 20
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), %struct.ttm_buffer_object* %8, i32 %12, i32 %17, i32 %22)
  store i32 0, i32* %5, align 4
  br label %24

24:                                               ; preds = %58, %2
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %27 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %61

30:                                               ; preds = %24
  %31 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %32 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %5, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ttm_mem_type_from_flags(i32 %37, i32* %7)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %61

42:                                               ; preds = %30
  %43 = load i32, i32* %5, align 4
  %44 = load %struct.ttm_placement*, %struct.ttm_placement** %4, align 8
  %45 = getelementptr inbounds %struct.ttm_placement, %struct.ttm_placement* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %5, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %7, align 4
  %52 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %50, i32 %51)
  %53 = load %struct.ttm_buffer_object*, %struct.ttm_buffer_object** %3, align 8
  %54 = getelementptr inbounds %struct.ttm_buffer_object, %struct.ttm_buffer_object* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %7, align 4
  %57 = call i32 @ttm_mem_type_debug(i32 %55, i32 %56)
  br label %58

58:                                               ; preds = %42
  %59 = load i32, i32* %5, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %5, align 4
  br label %24

61:                                               ; preds = %41, %24
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @ttm_mem_type_from_flags(i32, i32*) #1

declare dso_local i32 @ttm_mem_type_debug(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
