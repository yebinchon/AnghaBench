; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_fcoe_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_fcoe_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.cudbg_buffer = type { i64 }
%struct.cudbg_error = type { i32 }
%struct.struct_tp_fcoe_stats = type { i32* }

@NCHAN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_fcoe_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_fcoe_stats(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.cudbg_buffer, align 8
  %9 = alloca %struct.struct_tp_fcoe_stats*, align 8
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
  store i32 8, i32* %10, align 4
  %15 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %15, i32 %16, %struct.cudbg_buffer* %8)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %69

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %8, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.struct_tp_fcoe_stats*
  store %struct.struct_tp_fcoe_stats* %24, %struct.struct_tp_fcoe_stats** %9, align 8
  %25 = load %struct.adapter*, %struct.adapter** %7, align 8
  %26 = load %struct.struct_tp_fcoe_stats*, %struct.struct_tp_fcoe_stats** %9, align 8
  %27 = getelementptr inbounds %struct.struct_tp_fcoe_stats, %struct.struct_tp_fcoe_stats* %26, i32 0, i32 0
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = call i32 @t4_get_fcoe_stats(%struct.adapter* %25, i32 0, i32* %29, i32 1)
  %31 = load %struct.adapter*, %struct.adapter** %7, align 8
  %32 = load %struct.struct_tp_fcoe_stats*, %struct.struct_tp_fcoe_stats** %9, align 8
  %33 = getelementptr inbounds %struct.struct_tp_fcoe_stats, %struct.struct_tp_fcoe_stats* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = call i32 @t4_get_fcoe_stats(%struct.adapter* %31, i32 1, i32* %35, i32 1)
  %37 = load %struct.adapter*, %struct.adapter** %7, align 8
  %38 = getelementptr inbounds %struct.adapter, %struct.adapter* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @NCHAN, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %44, label %57

44:                                               ; preds = %21
  %45 = load %struct.adapter*, %struct.adapter** %7, align 8
  %46 = load %struct.struct_tp_fcoe_stats*, %struct.struct_tp_fcoe_stats** %9, align 8
  %47 = getelementptr inbounds %struct.struct_tp_fcoe_stats, %struct.struct_tp_fcoe_stats* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 2
  %50 = call i32 @t4_get_fcoe_stats(%struct.adapter* %45, i32 2, i32* %49, i32 1)
  %51 = load %struct.adapter*, %struct.adapter** %7, align 8
  %52 = load %struct.struct_tp_fcoe_stats*, %struct.struct_tp_fcoe_stats** %9, align 8
  %53 = getelementptr inbounds %struct.struct_tp_fcoe_stats, %struct.struct_tp_fcoe_stats* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 3
  %56 = call i32 @t4_get_fcoe_stats(%struct.adapter* %51, i32 3, i32* %55, i32 1)
  br label %57

57:                                               ; preds = %44, %21
  %58 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %59 = call i32 @write_compression_hdr(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %57
  br label %66

63:                                               ; preds = %57
  %64 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %65 = call i32 @compress_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %64)
  store i32 %65, i32* %11, align 4
  br label %66

66:                                               ; preds = %63, %62
  %67 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %68 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %67)
  br label %69

69:                                               ; preds = %66, %20
  %70 = load i32, i32* %11, align 4
  ret i32 %70
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #1

declare dso_local i32 @t4_get_fcoe_stats(%struct.adapter*, i32, i32*, i32) #1

declare dso_local i32 @write_compression_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @compress_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
