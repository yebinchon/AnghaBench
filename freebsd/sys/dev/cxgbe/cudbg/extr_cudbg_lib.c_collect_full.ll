; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_full.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_full.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_buffer = type { i32, i64 }
%struct.cudbg_error = type { i32 }

@t5_tp_pio_array = common dso_local global i32** null, align 8
@t5_pcie_cdbg_array = common dso_local global i32** null, align 8
@A_SGE_DEBUG_DATA_HIGH_INDEX_10 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_full to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_full(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.cudbg_buffer, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %6, align 8
  %16 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %17 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %16, i32 0, i32 0
  %18 = load %struct.adapter*, %struct.adapter** %17, align 8
  store %struct.adapter* %18, %struct.adapter** %8, align 8
  store i32 0, i32* %15, align 4
  %19 = load %struct.adapter*, %struct.adapter** %8, align 8
  %20 = call i64 @is_t5(%struct.adapter* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 6, i32* %15, align 4
  br label %29

23:                                               ; preds = %3
  %24 = load %struct.adapter*, %struct.adapter** %8, align 8
  %25 = call i64 @is_t6(%struct.adapter* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  store i32 7, i32* %15, align 4
  br label %28

28:                                               ; preds = %27, %23
  br label %29

29:                                               ; preds = %28, %22
  %30 = load i32, i32* %15, align 4
  %31 = sext i32 %30 to i64
  %32 = mul i64 %31, 4
  %33 = trunc i64 %32 to i32
  %34 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  store i32 %33, i32* %34, align 8
  %35 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %36 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %35, i32 %37, %struct.cudbg_buffer* %7)
  store i32 %38, i32* %14, align 4
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %29
  br label %168

42:                                               ; preds = %29
  %43 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %13, align 8
  %46 = load i32**, i32*** @t5_tp_pio_array, align 8
  %47 = getelementptr inbounds i32*, i32** %46, i64 3
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %50, 10
  store i32 %51, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %52 = load %struct.adapter*, %struct.adapter** %8, align 8
  %53 = load i32*, i32** %13, align 8
  %54 = load i32, i32* %12, align 4
  %55 = load i32, i32* %11, align 4
  %56 = call i32 @t4_tp_pio_read(%struct.adapter* %52, i32* %53, i32 %54, i32 %55, i32 1)
  %57 = load i32*, i32** %13, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 1
  store i32* %58, i32** %13, align 8
  %59 = load i32**, i32*** @t5_tp_pio_array, align 8
  %60 = getelementptr inbounds i32*, i32** %59, i64 3
  %61 = load i32*, i32** %60, align 8
  %62 = getelementptr inbounds i32, i32* %61, i64 2
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, 11
  store i32 %64, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %65 = load %struct.adapter*, %struct.adapter** %8, align 8
  %66 = load i32*, i32** %13, align 8
  %67 = load i32, i32* %12, align 4
  %68 = load i32, i32* %11, align 4
  %69 = call i32 @t4_tp_pio_read(%struct.adapter* %65, i32* %66, i32 %67, i32 %68, i32 1)
  %70 = load i32*, i32** %13, align 8
  %71 = getelementptr inbounds i32, i32* %70, i32 1
  store i32* %71, i32** %13, align 8
  %72 = load i32**, i32*** @t5_tp_pio_array, align 8
  %73 = getelementptr inbounds i32*, i32** %72, i64 9
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 2
  %76 = load i32, i32* %75, align 4
  %77 = add nsw i32 %76, 15
  store i32 %77, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %78 = load %struct.adapter*, %struct.adapter** %8, align 8
  %79 = load i32*, i32** %13, align 8
  %80 = load i32, i32* %12, align 4
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @t4_tp_pio_read(%struct.adapter* %78, i32* %79, i32 %80, i32 %81, i32 1)
  %83 = load i32*, i32** %13, align 8
  %84 = getelementptr inbounds i32, i32* %83, i32 1
  store i32* %84, i32** %13, align 8
  %85 = load i32**, i32*** @t5_tp_pio_array, align 8
  %86 = getelementptr inbounds i32*, i32** %85, i64 8
  %87 = load i32*, i32** %86, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 2
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, 3
  store i32 %90, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %91 = load %struct.adapter*, %struct.adapter** %8, align 8
  %92 = load i32*, i32** %13, align 8
  %93 = load i32, i32* %12, align 4
  %94 = load i32, i32* %11, align 4
  %95 = call i32 @t4_tp_pio_read(%struct.adapter* %91, i32* %92, i32 %93, i32 %94, i32 1)
  %96 = load i32*, i32** %13, align 8
  %97 = getelementptr inbounds i32, i32* %96, i32 1
  store i32* %97, i32** %13, align 8
  %98 = load i32**, i32*** @t5_pcie_cdbg_array, align 8
  %99 = getelementptr inbounds i32*, i32** %98, i64 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 0
  %102 = load i32, i32* %101, align 4
  store i32 %102, i32* %9, align 4
  %103 = load i32**, i32*** @t5_pcie_cdbg_array, align 8
  %104 = getelementptr inbounds i32*, i32** %103, i64 0
  %105 = load i32*, i32** %104, align 8
  %106 = getelementptr inbounds i32, i32* %105, i64 1
  %107 = load i32, i32* %106, align 4
  store i32 %107, i32* %10, align 4
  %108 = load i32**, i32*** @t5_pcie_cdbg_array, align 8
  %109 = getelementptr inbounds i32*, i32** %108, i64 0
  %110 = load i32*, i32** %109, align 8
  %111 = getelementptr inbounds i32, i32* %110, i64 2
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, 2
  store i32 %113, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %114 = load %struct.adapter*, %struct.adapter** %8, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %10, align 4
  %117 = load i32*, i32** %13, align 8
  %118 = load i32, i32* %12, align 4
  %119 = load i32, i32* %11, align 4
  %120 = call i32 @t4_read_indirect(%struct.adapter* %114, i32 %115, i32 %116, i32* %117, i32 %118, i32 %119)
  %121 = load i32*, i32** %13, align 8
  %122 = getelementptr inbounds i32, i32* %121, i32 1
  store i32* %122, i32** %13, align 8
  %123 = load %struct.adapter*, %struct.adapter** %8, align 8
  %124 = call i64 @is_t6(%struct.adapter* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %152

126:                                              ; preds = %42
  %127 = load i32**, i32*** @t5_pcie_cdbg_array, align 8
  %128 = getelementptr inbounds i32*, i32** %127, i64 0
  %129 = load i32*, i32** %128, align 8
  %130 = getelementptr inbounds i32, i32* %129, i64 0
  %131 = load i32, i32* %130, align 4
  store i32 %131, i32* %9, align 4
  %132 = load i32**, i32*** @t5_pcie_cdbg_array, align 8
  %133 = getelementptr inbounds i32*, i32** %132, i64 0
  %134 = load i32*, i32** %133, align 8
  %135 = getelementptr inbounds i32, i32* %134, i64 1
  %136 = load i32, i32* %135, align 4
  store i32 %136, i32* %10, align 4
  %137 = load i32**, i32*** @t5_pcie_cdbg_array, align 8
  %138 = getelementptr inbounds i32*, i32** %137, i64 0
  %139 = load i32*, i32** %138, align 8
  %140 = getelementptr inbounds i32, i32* %139, i64 2
  %141 = load i32, i32* %140, align 4
  %142 = add nsw i32 %141, 3
  store i32 %142, i32* %11, align 4
  store i32 1, i32* %12, align 4
  %143 = load %struct.adapter*, %struct.adapter** %8, align 8
  %144 = load i32, i32* %9, align 4
  %145 = load i32, i32* %10, align 4
  %146 = load i32*, i32** %13, align 8
  %147 = load i32, i32* %12, align 4
  %148 = load i32, i32* %11, align 4
  %149 = call i32 @t4_read_indirect(%struct.adapter* %143, i32 %144, i32 %145, i32* %146, i32 %147, i32 %148)
  %150 = load i32*, i32** %13, align 8
  %151 = getelementptr inbounds i32, i32* %150, i32 1
  store i32* %151, i32** %13, align 8
  br label %152

152:                                              ; preds = %126, %42
  %153 = load %struct.adapter*, %struct.adapter** %8, align 8
  %154 = load i32, i32* @A_SGE_DEBUG_DATA_HIGH_INDEX_10, align 4
  %155 = call i32 @t4_read_reg(%struct.adapter* %153, i32 %154)
  %156 = load i32*, i32** %13, align 8
  store i32 %155, i32* %156, align 4
  %157 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %158 = call i32 @write_compression_hdr(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %157)
  store i32 %158, i32* %14, align 4
  %159 = load i32, i32* %14, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %162

161:                                              ; preds = %152
  br label %165

162:                                              ; preds = %152
  %163 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %164 = call i32 @compress_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %163)
  store i32 %164, i32* %14, align 4
  br label %165

165:                                              ; preds = %162, %161
  %166 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %167 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %166)
  br label %168

168:                                              ; preds = %165, %41
  %169 = load i32, i32* %14, align 4
  ret i32 %169
}

declare dso_local i64 @is_t5(%struct.adapter*) #1

declare dso_local i64 @is_t6(%struct.adapter*) #1

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #1

declare dso_local i32 @t4_tp_pio_read(%struct.adapter*, i32*, i32, i32, i32) #1

declare dso_local i32 @t4_read_indirect(%struct.adapter*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @write_compression_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @compress_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
