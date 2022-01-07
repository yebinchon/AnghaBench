; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_cim_ma_la.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_cim_ma_la.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_buffer = type { i32, i32, i64 }
%struct.cudbg_error = type { i32 }

@CIM_MALA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_cim_ma_la to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_cim_ma_la(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.cudbg_buffer, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %6, align 8
  %10 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %11 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %10, i32 0, i32 0
  %12 = load %struct.adapter*, %struct.adapter** %11, align 8
  store %struct.adapter* %12, %struct.adapter** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load i32, i32* @CIM_MALA_SIZE, align 4
  %14 = mul nsw i32 2, %13
  %15 = mul nsw i32 %14, 5
  %16 = sext i32 %15 to i64
  %17 = mul i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  store i32 %18, i32* %19, align 8
  %20 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %21 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %20, i32 %22, %struct.cudbg_buffer* %7)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  br label %61

27:                                               ; preds = %3
  %28 = load %struct.adapter*, %struct.adapter** %8, align 8
  %29 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 2
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to i8*
  %32 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i8, i8* %31, i64 %34
  %36 = bitcast i8* %35 to i32*
  %37 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i8, i8* %39, i64 %42
  %44 = load i32, i32* @CIM_MALA_SIZE, align 4
  %45 = mul nsw i32 5, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i8, i8* %43, i64 %46
  %48 = bitcast i8* %47 to i32*
  %49 = call i32 @t4_cim_read_ma_la(%struct.adapter* %28, i32* %36, i32* %48)
  %50 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %51 = call i32 @write_compression_hdr(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %50)
  store i32 %51, i32* %9, align 4
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %27
  br label %58

55:                                               ; preds = %27
  %56 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %57 = call i32 @compress_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %56)
  store i32 %57, i32* %9, align 4
  br label %58

58:                                               ; preds = %55, %54
  %59 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %60 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %59)
  br label %61

61:                                               ; preds = %58, %26
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #1

declare dso_local i32 @t4_cim_read_ma_la(%struct.adapter*, i32*, i32*) #1

declare dso_local i32 @write_compression_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @compress_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
