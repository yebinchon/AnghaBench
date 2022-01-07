; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_cim_pif_la.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_cim_pif_la.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_buffer = type { i64 }
%struct.cudbg_error = type { i32 }
%struct.cim_pif_la = type { i32, i64 }

@CIM_PIFLA_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_cim_pif_la to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_cim_pif_la(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.cudbg_buffer, align 8
  %9 = alloca %struct.cim_pif_la*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %6, align 8
  %12 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %13 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %12, i32 0, i32 0
  %14 = load %struct.adapter*, %struct.adapter** %13, align 8
  store %struct.adapter* %14, %struct.adapter** %7, align 8
  store i32 0, i32* %11, align 4
  %15 = load i32, i32* @CIM_PIFLA_SIZE, align 4
  %16 = mul nsw i32 2, %15
  %17 = mul nsw i32 %16, 6
  %18 = sext i32 %17 to i64
  %19 = mul i64 %18, 4
  %20 = add i64 16, %19
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %23 = load i32, i32* %10, align 4
  %24 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %22, i32 %23, %struct.cudbg_buffer* %8)
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %3
  br label %60

28:                                               ; preds = %3
  %29 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %8, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = inttoptr i64 %30 to %struct.cim_pif_la*
  store %struct.cim_pif_la* %31, %struct.cim_pif_la** %9, align 8
  %32 = load i32, i32* @CIM_PIFLA_SIZE, align 4
  %33 = load %struct.cim_pif_la*, %struct.cim_pif_la** %9, align 8
  %34 = getelementptr inbounds %struct.cim_pif_la, %struct.cim_pif_la* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.adapter*, %struct.adapter** %7, align 8
  %36 = load %struct.cim_pif_la*, %struct.cim_pif_la** %9, align 8
  %37 = getelementptr inbounds %struct.cim_pif_la, %struct.cim_pif_la* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to i32*
  %40 = load %struct.cim_pif_la*, %struct.cim_pif_la** %9, align 8
  %41 = getelementptr inbounds %struct.cim_pif_la, %struct.cim_pif_la* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to i32*
  %44 = load i32, i32* @CIM_PIFLA_SIZE, align 4
  %45 = mul nsw i32 6, %44
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %43, i64 %46
  %48 = call i32 @t4_cim_read_pif_la(%struct.adapter* %35, i32* %39, i32* %47, i32* null, i32* null)
  %49 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %50 = call i32 @write_compression_hdr(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %49)
  store i32 %50, i32* %11, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %28
  br label %57

54:                                               ; preds = %28
  %55 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %56 = call i32 @compress_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %55)
  store i32 %56, i32* %11, align 4
  br label %57

57:                                               ; preds = %54, %53
  %58 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %59 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %58)
  br label %60

60:                                               ; preds = %57, %27
  %61 = load i32, i32* %11, align 4
  ret i32 %61
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #1

declare dso_local i32 @t4_cim_read_pif_la(%struct.adapter*, i32*, i32*, i32*, i32*) #1

declare dso_local i32 @write_compression_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @compress_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
