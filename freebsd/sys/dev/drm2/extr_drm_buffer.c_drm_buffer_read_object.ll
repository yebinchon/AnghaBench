; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_buffer.c_drm_buffer_read_object.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/drm2/extr_drm_buffer.c_drm_buffer_read_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.drm_buffer = type { i32** }

@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @drm_buffer_read_object(%struct.drm_buffer* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.drm_buffer*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.drm_buffer* %0, %struct.drm_buffer** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %11 = load %struct.drm_buffer*, %struct.drm_buffer** %4, align 8
  %12 = call i32 @drm_buffer_index(%struct.drm_buffer* %11)
  store i32 %12, i32* %7, align 4
  %13 = load %struct.drm_buffer*, %struct.drm_buffer** %4, align 8
  %14 = call i32 @drm_buffer_page(%struct.drm_buffer* %13)
  store i32 %14, i32* %8, align 4
  store i8* null, i8** %9, align 8
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* %5, align 4
  %17 = add nsw i32 %15, %16
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = icmp sle i32 %17, %18
  br i1 %19, label %20, label %32

20:                                               ; preds = %3
  %21 = load %struct.drm_buffer*, %struct.drm_buffer** %4, align 8
  %22 = getelementptr inbounds %struct.drm_buffer, %struct.drm_buffer* %21, i32 0, i32 0
  %23 = load i32**, i32*** %22, align 8
  %24 = load i32, i32* %8, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32*, i32** %23, i64 %25
  %27 = load i32*, i32** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = bitcast i32* %30 to i8*
  store i8* %31, i8** %9, align 8
  br label %67

32:                                               ; preds = %3
  %33 = load i32, i32* @PAGE_SIZE, align 4
  %34 = load i32, i32* %7, align 4
  %35 = sub nsw i32 %33, %34
  store i32 %35, i32* %10, align 4
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.drm_buffer*, %struct.drm_buffer** %4, align 8
  %38 = getelementptr inbounds %struct.drm_buffer, %struct.drm_buffer* %37, i32 0, i32 0
  %39 = load i32**, i32*** %38, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32*, i32** %39, i64 %41
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %10, align 4
  %48 = call i32 @memcpy(i8* %36, i32* %46, i32 %47)
  %49 = load i8*, i8** %6, align 8
  %50 = load i32, i32* %10, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8, i8* %49, i64 %51
  %53 = load %struct.drm_buffer*, %struct.drm_buffer** %4, align 8
  %54 = getelementptr inbounds %struct.drm_buffer, %struct.drm_buffer* %53, i32 0, i32 0
  %55 = load i32**, i32*** %54, align 8
  %56 = load i32, i32* %8, align 4
  %57 = add nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32*, i32** %55, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 0
  %62 = load i32, i32* %5, align 4
  %63 = load i32, i32* %10, align 4
  %64 = sub nsw i32 %62, %63
  %65 = call i32 @memcpy(i8* %52, i32* %61, i32 %64)
  %66 = load i8*, i8** %6, align 8
  store i8* %66, i8** %9, align 8
  br label %67

67:                                               ; preds = %32, %20
  %68 = load %struct.drm_buffer*, %struct.drm_buffer** %4, align 8
  %69 = load i32, i32* %5, align 4
  %70 = call i32 @drm_buffer_advance(%struct.drm_buffer* %68, i32 %69)
  %71 = load i8*, i8** %9, align 8
  ret i8* %71
}

declare dso_local i32 @drm_buffer_index(%struct.drm_buffer*) #1

declare dso_local i32 @drm_buffer_page(%struct.drm_buffer*) #1

declare dso_local i32 @memcpy(i8*, i32*, i32) #1

declare dso_local i32 @drm_buffer_advance(%struct.drm_buffer*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
