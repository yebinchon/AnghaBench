; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_ulptx_la.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_ulptx_la.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_buffer = type { i64 }
%struct.cudbg_error = type { i32 }
%struct.struct_ulptx_la = type { i8***, i8**, i8**, i8** }

@CUDBG_NUM_ULPTX = common dso_local global i64 0, align 8
@A_ULP_TX_LA_RDPTR_0 = common dso_local global i64 0, align 8
@A_ULP_TX_LA_WRPTR_0 = common dso_local global i64 0, align 8
@A_ULP_TX_LA_RDDATA_0 = common dso_local global i64 0, align 8
@CUDBG_NUM_ULPTX_READ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_ulptx_la to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_ulptx_la(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.cudbg_buffer, align 8
  %9 = alloca %struct.struct_ulptx_la*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %6, align 8
  %14 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %15 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %14, i32 0, i32 0
  %16 = load %struct.adapter*, %struct.adapter** %15, align 8
  store %struct.adapter* %16, %struct.adapter** %7, align 8
  store i32 0, i32* %13, align 4
  store i64 32, i64* %10, align 8
  %17 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %18 = load i64, i64* %10, align 8
  %19 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %17, i64 %18, %struct.cudbg_buffer* %8)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %103

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %8, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.struct_ulptx_la*
  store %struct.struct_ulptx_la* %26, %struct.struct_ulptx_la** %9, align 8
  store i64 0, i64* %11, align 8
  br label %27

27:                                               ; preds = %88, %23
  %28 = load i64, i64* %11, align 8
  %29 = load i64, i64* @CUDBG_NUM_ULPTX, align 8
  %30 = icmp ult i64 %28, %29
  br i1 %30, label %31, label %91

31:                                               ; preds = %27
  %32 = load %struct.adapter*, %struct.adapter** %7, align 8
  %33 = load i64, i64* @A_ULP_TX_LA_RDPTR_0, align 8
  %34 = load i64, i64* %11, align 8
  %35 = mul i64 16, %34
  %36 = add i64 %33, %35
  %37 = call i8* @t4_read_reg(%struct.adapter* %32, i64 %36)
  %38 = load %struct.struct_ulptx_la*, %struct.struct_ulptx_la** %9, align 8
  %39 = getelementptr inbounds %struct.struct_ulptx_la, %struct.struct_ulptx_la* %38, i32 0, i32 3
  %40 = load i8**, i8*** %39, align 8
  %41 = load i64, i64* %11, align 8
  %42 = getelementptr inbounds i8*, i8** %40, i64 %41
  store i8* %37, i8** %42, align 8
  %43 = load %struct.adapter*, %struct.adapter** %7, align 8
  %44 = load i64, i64* @A_ULP_TX_LA_WRPTR_0, align 8
  %45 = load i64, i64* %11, align 8
  %46 = mul i64 16, %45
  %47 = add i64 %44, %46
  %48 = call i8* @t4_read_reg(%struct.adapter* %43, i64 %47)
  %49 = load %struct.struct_ulptx_la*, %struct.struct_ulptx_la** %9, align 8
  %50 = getelementptr inbounds %struct.struct_ulptx_la, %struct.struct_ulptx_la* %49, i32 0, i32 2
  %51 = load i8**, i8*** %50, align 8
  %52 = load i64, i64* %11, align 8
  %53 = getelementptr inbounds i8*, i8** %51, i64 %52
  store i8* %48, i8** %53, align 8
  %54 = load %struct.adapter*, %struct.adapter** %7, align 8
  %55 = load i64, i64* @A_ULP_TX_LA_RDDATA_0, align 8
  %56 = load i64, i64* %11, align 8
  %57 = mul i64 16, %56
  %58 = add i64 %55, %57
  %59 = call i8* @t4_read_reg(%struct.adapter* %54, i64 %58)
  %60 = load %struct.struct_ulptx_la*, %struct.struct_ulptx_la** %9, align 8
  %61 = getelementptr inbounds %struct.struct_ulptx_la, %struct.struct_ulptx_la* %60, i32 0, i32 1
  %62 = load i8**, i8*** %61, align 8
  %63 = load i64, i64* %11, align 8
  %64 = getelementptr inbounds i8*, i8** %62, i64 %63
  store i8* %59, i8** %64, align 8
  store i64 0, i64* %12, align 8
  br label %65

65:                                               ; preds = %84, %31
  %66 = load i64, i64* %12, align 8
  %67 = load i64, i64* @CUDBG_NUM_ULPTX_READ, align 8
  %68 = icmp ult i64 %66, %67
  br i1 %68, label %69, label %87

69:                                               ; preds = %65
  %70 = load %struct.adapter*, %struct.adapter** %7, align 8
  %71 = load i64, i64* @A_ULP_TX_LA_RDDATA_0, align 8
  %72 = load i64, i64* %11, align 8
  %73 = mul i64 16, %72
  %74 = add i64 %71, %73
  %75 = call i8* @t4_read_reg(%struct.adapter* %70, i64 %74)
  %76 = load %struct.struct_ulptx_la*, %struct.struct_ulptx_la** %9, align 8
  %77 = getelementptr inbounds %struct.struct_ulptx_la, %struct.struct_ulptx_la* %76, i32 0, i32 0
  %78 = load i8***, i8**** %77, align 8
  %79 = load i64, i64* %11, align 8
  %80 = getelementptr inbounds i8**, i8*** %78, i64 %79
  %81 = load i8**, i8*** %80, align 8
  %82 = load i64, i64* %12, align 8
  %83 = getelementptr inbounds i8*, i8** %81, i64 %82
  store i8* %75, i8** %83, align 8
  br label %84

84:                                               ; preds = %69
  %85 = load i64, i64* %12, align 8
  %86 = add i64 %85, 1
  store i64 %86, i64* %12, align 8
  br label %65

87:                                               ; preds = %65
  br label %88

88:                                               ; preds = %87
  %89 = load i64, i64* %11, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %11, align 8
  br label %27

91:                                               ; preds = %27
  %92 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %93 = call i32 @write_compression_hdr(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %92)
  store i32 %93, i32* %13, align 4
  %94 = load i32, i32* %13, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91
  br label %100

97:                                               ; preds = %91
  %98 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %99 = call i32 @compress_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %98)
  store i32 %99, i32* %13, align 4
  br label %100

100:                                              ; preds = %97, %96
  %101 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %102 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %101)
  br label %103

103:                                              ; preds = %100, %22
  %104 = load i32, i32* %13, align 4
  ret i32 %104
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i64, %struct.cudbg_buffer*) #1

declare dso_local i8* @t4_read_reg(%struct.adapter*, i64) #1

declare dso_local i32 @write_compression_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @compress_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
