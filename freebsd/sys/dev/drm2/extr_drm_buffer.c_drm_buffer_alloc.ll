; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_buffer.c_drm_buffer_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_buffer.c_drm_buffer_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_buffer = type { i32, %struct.drm_buffer** }

@PAGE_SIZE = common dso_local global i32 0, align 4
@DRM_MEM_DRIVER = common dso_local global i32 0, align 4
@M_ZERO = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [68 x i8] c"Failed to allocate drm buffer object to hold %d bytes in %d pages.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [73 x i8] c"Failed to allocate %dth page for drm buffer with %d bytes and %d pages.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @drm_buffer_alloc(%struct.drm_buffer** %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.drm_buffer**, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.drm_buffer** %0, %struct.drm_buffer*** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @PAGE_SIZE, align 4
  %10 = sdiv i32 %8, %9
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = sext i32 %12 to i64
  %14 = mul i64 %13, 8
  %15 = add i64 16, %14
  %16 = trunc i64 %15 to i32
  %17 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %18 = load i32, i32* @M_ZERO, align 4
  %19 = load i32, i32* @M_WAITOK, align 4
  %20 = or i32 %18, %19
  %21 = call i8* @malloc(i32 %16, i32 %17, i32 %20)
  %22 = bitcast i8* %21 to %struct.drm_buffer*
  %23 = load %struct.drm_buffer**, %struct.drm_buffer*** %4, align 8
  store %struct.drm_buffer* %22, %struct.drm_buffer** %23, align 8
  %24 = load %struct.drm_buffer**, %struct.drm_buffer*** %4, align 8
  %25 = load %struct.drm_buffer*, %struct.drm_buffer** %24, align 8
  %26 = icmp eq %struct.drm_buffer* %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %2
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 (i8*, i32, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str, i64 0, i64 0), i32 %28, i32 %29)
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %129

33:                                               ; preds = %2
  %34 = load i32, i32* %5, align 4
  %35 = load %struct.drm_buffer**, %struct.drm_buffer*** %4, align 8
  %36 = load %struct.drm_buffer*, %struct.drm_buffer** %35, align 8
  %37 = getelementptr inbounds %struct.drm_buffer, %struct.drm_buffer* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 8
  store i32 0, i32* %7, align 4
  br label %38

38:                                               ; preds = %77, %33
  %39 = load i32, i32* %7, align 4
  %40 = load i32, i32* %6, align 4
  %41 = icmp slt i32 %39, %40
  br i1 %41, label %42, label %80

42:                                               ; preds = %38
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* %7, align 4
  %46 = load i32, i32* @PAGE_SIZE, align 4
  %47 = mul nsw i32 %45, %46
  %48 = sub nsw i32 %44, %47
  %49 = call i32 @min(i32 %43, i32 %48)
  %50 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %51 = load i32, i32* @M_WAITOK, align 4
  %52 = call i8* @malloc(i32 %49, i32 %50, i32 %51)
  %53 = bitcast i8* %52 to %struct.drm_buffer*
  %54 = load %struct.drm_buffer**, %struct.drm_buffer*** %4, align 8
  %55 = load %struct.drm_buffer*, %struct.drm_buffer** %54, align 8
  %56 = getelementptr inbounds %struct.drm_buffer, %struct.drm_buffer* %55, i32 0, i32 1
  %57 = load %struct.drm_buffer**, %struct.drm_buffer*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.drm_buffer*, %struct.drm_buffer** %57, i64 %59
  store %struct.drm_buffer* %53, %struct.drm_buffer** %60, align 8
  %61 = load %struct.drm_buffer**, %struct.drm_buffer*** %4, align 8
  %62 = load %struct.drm_buffer*, %struct.drm_buffer** %61, align 8
  %63 = getelementptr inbounds %struct.drm_buffer, %struct.drm_buffer* %62, i32 0, i32 1
  %64 = load %struct.drm_buffer**, %struct.drm_buffer*** %63, align 8
  %65 = load i32, i32* %7, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.drm_buffer*, %struct.drm_buffer** %64, i64 %66
  %68 = load %struct.drm_buffer*, %struct.drm_buffer** %67, align 8
  %69 = icmp eq %struct.drm_buffer* %68, null
  br i1 %69, label %70, label %76

70:                                               ; preds = %42
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  %73 = load i32, i32* %5, align 4
  %74 = load i32, i32* %6, align 4
  %75 = call i32 (i8*, i32, i32, ...) @DRM_ERROR(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0), i32 %72, i32 %73, i32 %74)
  br label %81

76:                                               ; preds = %42
  br label %77

77:                                               ; preds = %76
  %78 = load i32, i32* %7, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %7, align 4
  br label %38

80:                                               ; preds = %38
  store i32 0, i32* %3, align 4
  br label %129

81:                                               ; preds = %70
  %82 = load %struct.drm_buffer**, %struct.drm_buffer*** %4, align 8
  %83 = load %struct.drm_buffer*, %struct.drm_buffer** %82, align 8
  %84 = getelementptr inbounds %struct.drm_buffer, %struct.drm_buffer* %83, i32 0, i32 1
  %85 = load %struct.drm_buffer**, %struct.drm_buffer*** %84, align 8
  %86 = load i32, i32* %7, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.drm_buffer*, %struct.drm_buffer** %85, i64 %87
  %89 = load %struct.drm_buffer*, %struct.drm_buffer** %88, align 8
  %90 = icmp ne %struct.drm_buffer* %89, null
  br i1 %90, label %91, label %102

91:                                               ; preds = %81
  %92 = load %struct.drm_buffer**, %struct.drm_buffer*** %4, align 8
  %93 = load %struct.drm_buffer*, %struct.drm_buffer** %92, align 8
  %94 = getelementptr inbounds %struct.drm_buffer, %struct.drm_buffer* %93, i32 0, i32 1
  %95 = load %struct.drm_buffer**, %struct.drm_buffer*** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds %struct.drm_buffer*, %struct.drm_buffer** %95, i64 %97
  %99 = load %struct.drm_buffer*, %struct.drm_buffer** %98, align 8
  %100 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %101 = call i32 @free(%struct.drm_buffer* %99, i32 %100)
  br label %102

102:                                              ; preds = %91, %81
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, -1
  store i32 %104, i32* %7, align 4
  br label %105

105:                                              ; preds = %119, %102
  %106 = load i32, i32* %7, align 4
  %107 = icmp sge i32 %106, 0
  br i1 %107, label %108, label %122

108:                                              ; preds = %105
  %109 = load %struct.drm_buffer**, %struct.drm_buffer*** %4, align 8
  %110 = load %struct.drm_buffer*, %struct.drm_buffer** %109, align 8
  %111 = getelementptr inbounds %struct.drm_buffer, %struct.drm_buffer* %110, i32 0, i32 1
  %112 = load %struct.drm_buffer**, %struct.drm_buffer*** %111, align 8
  %113 = load i32, i32* %7, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.drm_buffer*, %struct.drm_buffer** %112, i64 %114
  %116 = load %struct.drm_buffer*, %struct.drm_buffer** %115, align 8
  %117 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %118 = call i32 @free(%struct.drm_buffer* %116, i32 %117)
  br label %119

119:                                              ; preds = %108
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, -1
  store i32 %121, i32* %7, align 4
  br label %105

122:                                              ; preds = %105
  %123 = load %struct.drm_buffer**, %struct.drm_buffer*** %4, align 8
  %124 = load %struct.drm_buffer*, %struct.drm_buffer** %123, align 8
  %125 = load i32, i32* @DRM_MEM_DRIVER, align 4
  %126 = call i32 @free(%struct.drm_buffer* %124, i32 %125)
  %127 = load i32, i32* @ENOMEM, align 4
  %128 = sub nsw i32 0, %127
  store i32 %128, i32* %3, align 4
  br label %129

129:                                              ; preds = %122, %80, %27
  %130 = load i32, i32* %3, align 4
  ret i32 %130
}

declare dso_local i8* @malloc(i32, i32, i32) #1

declare dso_local i32 @DRM_ERROR(i8*, i32, i32, ...) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @free(%struct.drm_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
