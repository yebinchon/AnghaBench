; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_fastlz_api.c_compress_buff.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_fastlz_api.c_compress_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_buffer = type { i32, i8*, i32 }
%struct.cudbg_hdr = type { i32* }

@CUDBG_BLOCK_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @compress_buff(%struct.cudbg_buffer* %0, %struct.cudbg_buffer* %1) #0 {
  %3 = alloca %struct.cudbg_buffer*, align 8
  %4 = alloca %struct.cudbg_buffer*, align 8
  %5 = alloca %struct.cudbg_buffer, align 8
  %6 = alloca %struct.cudbg_hdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cudbg_buffer* %0, %struct.cudbg_buffer** %3, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %4, align 8
  store i32 2, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 1, i32* %13, align 4
  %14 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %15 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %9, align 4
  %17 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %18 = load i32, i32* @CUDBG_BLOCK_SIZE, align 4
  %19 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %17, i32 %18, %struct.cudbg_buffer* %5)
  store i32 %19, i32* %12, align 4
  %20 = load i32, i32* %12, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %2
  br label %124

23:                                               ; preds = %2
  %24 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %5, i32 0, i32 1
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %8, align 8
  %26 = load i32, i32* %9, align 4
  %27 = icmp ult i32 %26, 32
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  store i32 0, i32* %13, align 4
  br label %29

29:                                               ; preds = %28, %23
  %30 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %31 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %30, i32 0, i32 1
  %32 = load i8*, i8** %31, align 8
  %33 = bitcast i8* %32 to %struct.cudbg_hdr*
  store %struct.cudbg_hdr* %33, %struct.cudbg_hdr** %6, align 8
  %34 = load i32, i32* %13, align 4
  switch i32 %34, label %88 [
    i32 1, label %35
    i32 0, label %87
  ]

35:                                               ; preds = %29
  %36 = load i32, i32* %11, align 4
  %37 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %38 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %37, i32 0, i32 1
  %39 = load i8*, i8** %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = load i8*, i8** %8, align 8
  %42 = call i32 @fastlz_compress_level(i32 %36, i8* %39, i32 %40, i8* %41)
  store i32 %42, i32* %10, align 4
  %43 = load i8*, i8** %8, align 8
  %44 = load i32, i32* %10, align 4
  %45 = call i64 @update_adler32(i64 1, i8* %43, i32 %44)
  store i64 %45, i64* %7, align 8
  %46 = load i32, i32* %10, align 4
  %47 = icmp sgt i32 %46, 62000
  br i1 %47, label %48, label %62

48:                                               ; preds = %35
  %49 = load %struct.cudbg_hdr*, %struct.cudbg_hdr** %6, align 8
  %50 = getelementptr inbounds %struct.cudbg_hdr, %struct.cudbg_hdr* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 7
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %10, align 4
  %55 = icmp slt i32 %53, %54
  br i1 %55, label %56, label %62

56:                                               ; preds = %48
  %57 = load i32, i32* %10, align 4
  %58 = load %struct.cudbg_hdr*, %struct.cudbg_hdr** %6, align 8
  %59 = getelementptr inbounds %struct.cudbg_hdr, %struct.cudbg_hdr* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 7
  store i32 %57, i32* %61, align 4
  br label %62

62:                                               ; preds = %56, %48, %35
  %63 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %64 = load i32, i32* %10, align 4
  %65 = load i64, i64* %7, align 8
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @write_chunk_header(%struct.cudbg_buffer* %63, i32 17, i32 1, i32 %64, i64 %65, i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load i32, i32* %12, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %62
  br label %121

71:                                               ; preds = %62
  %72 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %73 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %72, i32 0, i32 1
  %74 = load i8*, i8** %73, align 8
  %75 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %76 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %79 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %78, i32 0, i32 2
  %80 = load i8*, i8** %8, align 8
  %81 = load i32, i32* %10, align 4
  %82 = call i32 @write_to_buf(i8* %74, i32 %77, i32* %79, i8* %80, i32 %81)
  store i32 %82, i32* %12, align 4
  %83 = load i32, i32* %12, align 4
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %86

85:                                               ; preds = %71
  br label %121

86:                                               ; preds = %71
  br label %120

87:                                               ; preds = %29
  br label %88

88:                                               ; preds = %29, %87
  %89 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %90 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %89, i32 0, i32 1
  %91 = load i8*, i8** %90, align 8
  %92 = load i32, i32* %9, align 4
  %93 = call i64 @update_adler32(i64 1, i8* %91, i32 %92)
  store i64 %93, i64* %7, align 8
  %94 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i64, i64* %7, align 8
  %97 = load i32, i32* %9, align 4
  %98 = call i32 @write_chunk_header(%struct.cudbg_buffer* %94, i32 17, i32 0, i32 %95, i64 %96, i32 %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %88
  br label %121

102:                                              ; preds = %88
  %103 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %104 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %103, i32 0, i32 1
  %105 = load i8*, i8** %104, align 8
  %106 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %107 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %110 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %109, i32 0, i32 2
  %111 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %112 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %111, i32 0, i32 1
  %113 = load i8*, i8** %112, align 8
  %114 = load i32, i32* %9, align 4
  %115 = call i32 @write_to_buf(i8* %105, i32 %108, i32* %110, i8* %113, i32 %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %102
  br label %121

119:                                              ; preds = %102
  br label %120

120:                                              ; preds = %119, %86
  br label %121

121:                                              ; preds = %120, %118, %101, %85, %70
  %122 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %123 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %5, %struct.cudbg_buffer* %122)
  br label %124

124:                                              ; preds = %121, %22
  %125 = load i32, i32* %12, align 4
  ret i32 %125
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #1

declare dso_local i32 @fastlz_compress_level(i32, i8*, i32, i8*) #1

declare dso_local i64 @update_adler32(i64, i8*, i32) #1

declare dso_local i32 @write_chunk_header(%struct.cudbg_buffer*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @write_to_buf(i8*, i32, i32*, i8*, i32) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
