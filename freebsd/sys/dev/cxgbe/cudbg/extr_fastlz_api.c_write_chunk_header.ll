; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_fastlz_api.c_write_chunk_header.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_fastlz_api.c_write_chunk_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_buffer = type { i32, i32, i32 }

@CUDBG_CHUNK_BUF_LEN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_chunk_header(%struct.cudbg_buffer* %0, i32 %1, i32 %2, i64 %3, i64 %4, i64 %5) #0 {
  %7 = alloca %struct.cudbg_buffer*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store %struct.cudbg_buffer* %0, %struct.cudbg_buffer** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 %5, i64* %12, align 8
  %16 = load i32, i32* @CUDBG_CHUNK_BUF_LEN, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %13, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %14, align 8
  store i32 0, i32* %15, align 4
  %20 = load i32, i32* %8, align 4
  %21 = and i32 %20, 255
  %22 = trunc i32 %21 to i8
  %23 = getelementptr inbounds i8, i8* %19, i64 0
  store i8 %22, i8* %23, align 16
  %24 = load i32, i32* %8, align 4
  %25 = ashr i32 %24, 8
  %26 = trunc i32 %25 to i8
  %27 = getelementptr inbounds i8, i8* %19, i64 1
  store i8 %26, i8* %27, align 1
  %28 = load i32, i32* %9, align 4
  %29 = and i32 %28, 255
  %30 = trunc i32 %29 to i8
  %31 = getelementptr inbounds i8, i8* %19, i64 2
  store i8 %30, i8* %31, align 2
  %32 = load i32, i32* %9, align 4
  %33 = ashr i32 %32, 8
  %34 = trunc i32 %33 to i8
  %35 = getelementptr inbounds i8, i8* %19, i64 3
  store i8 %34, i8* %35, align 1
  %36 = load i64, i64* %10, align 8
  %37 = and i64 %36, 255
  %38 = trunc i64 %37 to i8
  %39 = getelementptr inbounds i8, i8* %19, i64 4
  store i8 %38, i8* %39, align 4
  %40 = load i64, i64* %10, align 8
  %41 = lshr i64 %40, 8
  %42 = and i64 %41, 255
  %43 = trunc i64 %42 to i8
  %44 = getelementptr inbounds i8, i8* %19, i64 5
  store i8 %43, i8* %44, align 1
  %45 = load i64, i64* %10, align 8
  %46 = lshr i64 %45, 16
  %47 = and i64 %46, 255
  %48 = trunc i64 %47 to i8
  %49 = getelementptr inbounds i8, i8* %19, i64 6
  store i8 %48, i8* %49, align 2
  %50 = load i64, i64* %10, align 8
  %51 = lshr i64 %50, 24
  %52 = and i64 %51, 255
  %53 = trunc i64 %52 to i8
  %54 = getelementptr inbounds i8, i8* %19, i64 7
  store i8 %53, i8* %54, align 1
  %55 = load i64, i64* %11, align 8
  %56 = and i64 %55, 255
  %57 = trunc i64 %56 to i8
  %58 = getelementptr inbounds i8, i8* %19, i64 8
  store i8 %57, i8* %58, align 8
  %59 = load i64, i64* %11, align 8
  %60 = lshr i64 %59, 8
  %61 = and i64 %60, 255
  %62 = trunc i64 %61 to i8
  %63 = getelementptr inbounds i8, i8* %19, i64 9
  store i8 %62, i8* %63, align 1
  %64 = load i64, i64* %11, align 8
  %65 = lshr i64 %64, 16
  %66 = and i64 %65, 255
  %67 = trunc i64 %66 to i8
  %68 = getelementptr inbounds i8, i8* %19, i64 10
  store i8 %67, i8* %68, align 2
  %69 = load i64, i64* %11, align 8
  %70 = lshr i64 %69, 24
  %71 = and i64 %70, 255
  %72 = trunc i64 %71 to i8
  %73 = getelementptr inbounds i8, i8* %19, i64 11
  store i8 %72, i8* %73, align 1
  %74 = load i64, i64* %12, align 8
  %75 = and i64 %74, 255
  %76 = trunc i64 %75 to i8
  %77 = getelementptr inbounds i8, i8* %19, i64 12
  store i8 %76, i8* %77, align 4
  %78 = load i64, i64* %12, align 8
  %79 = lshr i64 %78, 8
  %80 = and i64 %79, 255
  %81 = trunc i64 %80 to i8
  %82 = getelementptr inbounds i8, i8* %19, i64 13
  store i8 %81, i8* %82, align 1
  %83 = load i64, i64* %12, align 8
  %84 = lshr i64 %83, 16
  %85 = and i64 %84, 255
  %86 = trunc i64 %85 to i8
  %87 = getelementptr inbounds i8, i8* %19, i64 14
  store i8 %86, i8* %87, align 2
  %88 = load i64, i64* %12, align 8
  %89 = lshr i64 %88, 24
  %90 = and i64 %89, 255
  %91 = trunc i64 %90 to i8
  %92 = getelementptr inbounds i8, i8* %19, i64 15
  store i8 %91, i8* %92, align 1
  %93 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %94 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %97 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %7, align 8
  %100 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %99, i32 0, i32 0
  %101 = call i32 @write_to_buf(i32 %95, i32 %98, i32* %100, i8* %19, i32 16)
  store i32 %101, i32* %15, align 4
  %102 = load i32, i32* %15, align 4
  %103 = load i8*, i8** %13, align 8
  call void @llvm.stackrestore(i8* %103)
  ret i32 %102
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @write_to_buf(i32, i32, i32*, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
