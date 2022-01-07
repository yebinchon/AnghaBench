; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_sge_indirect.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_sge_indirect.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_buffer = type { i32, i64 }
%struct.cudbg_error = type { i32 }
%struct.ireg_buf = type { i32*, %struct.ireg_field }
%struct.ireg_field = type { i8*, i8*, i8*, i8* }

@t5_sge_dbg_index_array = common dso_local global i8*** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_sge_indirect to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_sge_indirect(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.cudbg_buffer, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.ireg_buf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ireg_field*, align 8
  %14 = alloca i32*, align 8
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %6, align 8
  %15 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %16 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %15, i32 0, i32 0
  %17 = load %struct.adapter*, %struct.adapter** %16, align 8
  store %struct.adapter* %17, %struct.adapter** %8, align 8
  store i32 80, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %20, i32 %22, %struct.cudbg_buffer* %7)
  store i32 %23, i32* %12, align 4
  %24 = load i32, i32* %12, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %108

27:                                               ; preds = %3
  %28 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = inttoptr i64 %29 to %struct.ireg_buf*
  store %struct.ireg_buf* %30, %struct.ireg_buf** %9, align 8
  store i32 0, i32* %11, align 4
  br label %31

31:                                               ; preds = %93, %27
  %32 = load i32, i32* %11, align 4
  %33 = icmp slt i32 %32, 2
  br i1 %33, label %34, label %96

34:                                               ; preds = %31
  %35 = load %struct.ireg_buf*, %struct.ireg_buf** %9, align 8
  %36 = getelementptr inbounds %struct.ireg_buf, %struct.ireg_buf* %35, i32 0, i32 1
  store %struct.ireg_field* %36, %struct.ireg_field** %13, align 8
  %37 = load %struct.ireg_buf*, %struct.ireg_buf** %9, align 8
  %38 = getelementptr inbounds %struct.ireg_buf, %struct.ireg_buf* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %14, align 8
  %40 = load i8***, i8**** @t5_sge_dbg_index_array, align 8
  %41 = load i32, i32* %11, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8**, i8*** %40, i64 %42
  %44 = load i8**, i8*** %43, align 8
  %45 = getelementptr inbounds i8*, i8** %44, i64 0
  %46 = load i8*, i8** %45, align 8
  %47 = load %struct.ireg_field*, %struct.ireg_field** %13, align 8
  %48 = getelementptr inbounds %struct.ireg_field, %struct.ireg_field* %47, i32 0, i32 3
  store i8* %46, i8** %48, align 8
  %49 = load i8***, i8**** @t5_sge_dbg_index_array, align 8
  %50 = load i32, i32* %11, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i8**, i8*** %49, i64 %51
  %53 = load i8**, i8*** %52, align 8
  %54 = getelementptr inbounds i8*, i8** %53, i64 1
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.ireg_field*, %struct.ireg_field** %13, align 8
  %57 = getelementptr inbounds %struct.ireg_field, %struct.ireg_field* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i8***, i8**** @t5_sge_dbg_index_array, align 8
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8**, i8*** %58, i64 %60
  %62 = load i8**, i8*** %61, align 8
  %63 = getelementptr inbounds i8*, i8** %62, i64 2
  %64 = load i8*, i8** %63, align 8
  %65 = load %struct.ireg_field*, %struct.ireg_field** %13, align 8
  %66 = getelementptr inbounds %struct.ireg_field, %struct.ireg_field* %65, i32 0, i32 0
  store i8* %64, i8** %66, align 8
  %67 = load i8***, i8**** @t5_sge_dbg_index_array, align 8
  %68 = load i32, i32* %11, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i8**, i8*** %67, i64 %69
  %71 = load i8**, i8*** %70, align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 3
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.ireg_field*, %struct.ireg_field** %13, align 8
  %75 = getelementptr inbounds %struct.ireg_field, %struct.ireg_field* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load %struct.adapter*, %struct.adapter** %8, align 8
  %77 = load %struct.ireg_field*, %struct.ireg_field** %13, align 8
  %78 = getelementptr inbounds %struct.ireg_field, %struct.ireg_field* %77, i32 0, i32 3
  %79 = load i8*, i8** %78, align 8
  %80 = load %struct.ireg_field*, %struct.ireg_field** %13, align 8
  %81 = getelementptr inbounds %struct.ireg_field, %struct.ireg_field* %80, i32 0, i32 2
  %82 = load i8*, i8** %81, align 8
  %83 = load i32*, i32** %14, align 8
  %84 = load %struct.ireg_field*, %struct.ireg_field** %13, align 8
  %85 = getelementptr inbounds %struct.ireg_field, %struct.ireg_field* %84, i32 0, i32 1
  %86 = load i8*, i8** %85, align 8
  %87 = load %struct.ireg_field*, %struct.ireg_field** %13, align 8
  %88 = getelementptr inbounds %struct.ireg_field, %struct.ireg_field* %87, i32 0, i32 0
  %89 = load i8*, i8** %88, align 8
  %90 = call i32 @t4_read_indirect(%struct.adapter* %76, i8* %79, i8* %82, i32* %83, i8* %86, i8* %89)
  %91 = load %struct.ireg_buf*, %struct.ireg_buf** %9, align 8
  %92 = getelementptr inbounds %struct.ireg_buf, %struct.ireg_buf* %91, i32 1
  store %struct.ireg_buf* %92, %struct.ireg_buf** %9, align 8
  br label %93

93:                                               ; preds = %34
  %94 = load i32, i32* %11, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %11, align 4
  br label %31

96:                                               ; preds = %31
  %97 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %98 = call i32 @write_compression_hdr(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %97)
  store i32 %98, i32* %12, align 4
  %99 = load i32, i32* %12, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  br label %105

102:                                              ; preds = %96
  %103 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %104 = call i32 @compress_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %103)
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %102, %101
  %106 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %107 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %106)
  br label %108

108:                                              ; preds = %105, %26
  %109 = load i32, i32* %12, align 4
  ret i32 %109
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #1

declare dso_local i32 @t4_read_indirect(%struct.adapter*, i8*, i8*, i32*, i8*, i8*) #1

declare dso_local i32 @write_compression_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @compress_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
