; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_fastlz_api.c_write_compression_hdr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_fastlz_api.c_write_compression_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_buffer = type { i64, i32, i64 }

@.str = private unnamed_addr constant [4 x i8] c"abc\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @write_compression_hdr(%struct.cudbg_buffer* %0, %struct.cudbg_buffer* %1) #0 {
  %3 = alloca %struct.cudbg_buffer*, align 8
  %4 = alloca %struct.cudbg_buffer*, align 8
  %5 = alloca %struct.cudbg_buffer, align 8
  %6 = alloca i64, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.cudbg_buffer* %0, %struct.cudbg_buffer** %3, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %4, align 8
  %11 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %3, align 8
  %12 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %6, align 8
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %10, align 8
  %14 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %15 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %14, i32 10, %struct.cudbg_buffer* %5)
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %2
  br label %130

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %5, i32 0, i32 2
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to i8*
  store i8* %22, i8** %7, align 8
  %23 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %24 = call i32 @write_magic(%struct.cudbg_buffer* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %19
  br label %127

28:                                               ; preds = %19
  %29 = load i64, i64* %6, align 8
  %30 = and i64 %29, 255
  %31 = trunc i64 %30 to i8
  %32 = load i8*, i8** %7, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 0
  store i8 %31, i8* %33, align 1
  %34 = load i64, i64* %6, align 8
  %35 = lshr i64 %34, 8
  %36 = and i64 %35, 255
  %37 = trunc i64 %36 to i8
  %38 = load i8*, i8** %7, align 8
  %39 = getelementptr inbounds i8, i8* %38, i64 1
  store i8 %37, i8* %39, align 1
  %40 = load i64, i64* %6, align 8
  %41 = lshr i64 %40, 16
  %42 = and i64 %41, 255
  %43 = trunc i64 %42 to i8
  %44 = load i8*, i8** %7, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 2
  store i8 %43, i8* %45, align 1
  %46 = load i64, i64* %6, align 8
  %47 = lshr i64 %46, 24
  %48 = and i64 %47, 255
  %49 = trunc i64 %48 to i8
  %50 = load i8*, i8** %7, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 3
  store i8 %49, i8* %51, align 1
  %52 = load i8*, i8** %7, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 4
  store i8 0, i8* %53, align 1
  %54 = load i8*, i8** %7, align 8
  %55 = getelementptr inbounds i8, i8* %54, i64 5
  store i8 0, i8* %55, align 1
  %56 = load i8*, i8** %7, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 6
  store i8 0, i8* %57, align 1
  %58 = load i8*, i8** %7, align 8
  %59 = getelementptr inbounds i8, i8* %58, i64 7
  store i8 0, i8* %59, align 1
  %60 = load i8*, i8** %10, align 8
  %61 = call i32 @strlen(i8* %60)
  %62 = add nsw i32 %61, 1
  %63 = and i32 %62, 255
  %64 = trunc i32 %63 to i8
  %65 = load i8*, i8** %7, align 8
  %66 = getelementptr inbounds i8, i8* %65, i64 8
  store i8 %64, i8* %66, align 1
  %67 = load i8*, i8** %10, align 8
  %68 = call i32 @strlen(i8* %67)
  %69 = add nsw i32 %68, 1
  %70 = ashr i32 %69, 8
  %71 = trunc i32 %70 to i8
  %72 = load i8*, i8** %7, align 8
  %73 = getelementptr inbounds i8, i8* %72, i64 9
  store i8 %71, i8* %73, align 1
  store i64 1, i64* %8, align 8
  %74 = load i64, i64* %8, align 8
  %75 = load i8*, i8** %7, align 8
  %76 = call i64 (i64, ...) @update_adler32(i64 %74, i8* %75, i32 10)
  store i64 %76, i64* %8, align 8
  %77 = load i64, i64* %8, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i8*, i8** %10, align 8
  %80 = call i32 @strlen(i8* %79)
  %81 = add nsw i32 %80, 1
  %82 = call i64 (i64, ...) @update_adler32(i64 %77, i8* %78, i32 %81)
  store i64 %82, i64* %8, align 8
  %83 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %84 = load i8*, i8** %10, align 8
  %85 = call i32 @strlen(i8* %84)
  %86 = sext i32 %85 to i64
  %87 = add i64 10, %86
  %88 = add i64 %87, 1
  %89 = trunc i64 %88 to i32
  %90 = load i64, i64* %8, align 8
  %91 = call i32 @write_chunk_header(%struct.cudbg_buffer* %83, i32 1, i32 0, i32 %89, i64 %90, i32 0)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %95

94:                                               ; preds = %28
  br label %127

95:                                               ; preds = %28
  %96 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %97 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %96, i32 0, i32 2
  %98 = load i64, i64* %97, align 8
  %99 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %100 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %103 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %102, i32 0, i32 1
  %104 = load i8*, i8** %7, align 8
  %105 = call i32 (i64, i64, i32*, ...) @write_to_buf(i64 %98, i64 %101, i32* %103, i8* %104, i32 10)
  store i32 %105, i32* %9, align 4
  %106 = load i32, i32* %9, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %95
  br label %127

109:                                              ; preds = %95
  %110 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %111 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %110, i32 0, i32 2
  %112 = load i64, i64* %111, align 8
  %113 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %114 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %117 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %116, i32 0, i32 1
  %118 = load i8*, i8** %10, align 8
  %119 = load i8*, i8** %10, align 8
  %120 = call i32 @strlen(i8* %119)
  %121 = add nsw i32 %120, 1
  %122 = call i32 (i64, i64, i32*, ...) @write_to_buf(i64 %112, i64 %115, i32* %117, i8* %118, i32 %121)
  store i32 %122, i32* %9, align 4
  %123 = load i32, i32* %9, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %109
  br label %127

126:                                              ; preds = %109
  br label %127

127:                                              ; preds = %126, %125, %108, %94, %27
  %128 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %4, align 8
  %129 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %5, %struct.cudbg_buffer* %128)
  br label %130

130:                                              ; preds = %127, %18
  %131 = load i32, i32* %9, align 4
  ret i32 %131
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #1

declare dso_local i32 @write_magic(%struct.cudbg_buffer*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i64 @update_adler32(i64, ...) #1

declare dso_local i32 @write_chunk_header(%struct.cudbg_buffer*, i32, i32, i32, i64, i32) #1

declare dso_local i32 @write_to_buf(i64, i64, i32*, ...) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
