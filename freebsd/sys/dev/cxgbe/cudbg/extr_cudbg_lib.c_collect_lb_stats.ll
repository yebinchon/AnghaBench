; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_lb_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_lb_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cudbg_buffer = type { i64 }
%struct.cudbg_error = type { i32 }
%struct.lb_port_stats = type { i32 }
%struct.struct_lb_stats = type { i32, %struct.lb_port_stats* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_lb_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_lb_stats(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.cudbg_buffer, align 8
  %9 = alloca %struct.lb_port_stats*, align 8
  %10 = alloca %struct.struct_lb_stats*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %6, align 8
  %15 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %16 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %15, i32 0, i32 0
  %17 = load %struct.adapter*, %struct.adapter** %16, align 8
  store %struct.adapter* %17, %struct.adapter** %7, align 8
  store i32 0, i32* %14, align 4
  %18 = load %struct.adapter*, %struct.adapter** %7, align 8
  %19 = getelementptr inbounds %struct.adapter, %struct.adapter* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %14, align 4
  %22 = load i32, i32* %14, align 4
  %23 = icmp slt i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %80

25:                                               ; preds = %3
  %26 = load i32, i32* %14, align 4
  store i32 %26, i32* %12, align 4
  %27 = load i32, i32* %12, align 4
  %28 = sext i32 %27 to i64
  %29 = mul i64 %28, 4
  %30 = add i64 16, %29
  %31 = trunc i64 %30 to i32
  store i32 %31, i32* %13, align 4
  %32 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %33 = load i32, i32* %13, align 4
  %34 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %32, i32 %33, %struct.cudbg_buffer* %8)
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %14, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %25
  br label %80

38:                                               ; preds = %25
  %39 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %8, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = inttoptr i64 %40 to %struct.struct_lb_stats*
  store %struct.struct_lb_stats* %41, %struct.struct_lb_stats** %10, align 8
  %42 = load i32, i32* %12, align 4
  %43 = load %struct.struct_lb_stats*, %struct.struct_lb_stats** %10, align 8
  %44 = getelementptr inbounds %struct.struct_lb_stats, %struct.struct_lb_stats* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  %45 = load %struct.struct_lb_stats*, %struct.struct_lb_stats** %10, align 8
  %46 = getelementptr inbounds %struct.struct_lb_stats, %struct.struct_lb_stats* %45, i32 0, i32 1
  %47 = load %struct.lb_port_stats*, %struct.lb_port_stats** %46, align 8
  store %struct.lb_port_stats* %47, %struct.lb_port_stats** %9, align 8
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %63, %38
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* %12, align 4
  %51 = icmp slt i32 %49, %50
  br i1 %51, label %52, label %68

52:                                               ; preds = %48
  %53 = load %struct.adapter*, %struct.adapter** %7, align 8
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.lb_port_stats*, %struct.lb_port_stats** %9, align 8
  %56 = call i32 @t4_get_lb_stats(%struct.adapter* %53, i32 %54, %struct.lb_port_stats* %55)
  %57 = load %struct.adapter*, %struct.adapter** %7, align 8
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %58, 1
  %60 = load %struct.lb_port_stats*, %struct.lb_port_stats** %9, align 8
  %61 = getelementptr inbounds %struct.lb_port_stats, %struct.lb_port_stats* %60, i64 1
  %62 = call i32 @t4_get_lb_stats(%struct.adapter* %57, i32 %59, %struct.lb_port_stats* %61)
  br label %63

63:                                               ; preds = %52
  %64 = load i32, i32* %11, align 4
  %65 = add nsw i32 %64, 2
  store i32 %65, i32* %11, align 4
  %66 = load %struct.lb_port_stats*, %struct.lb_port_stats** %9, align 8
  %67 = getelementptr inbounds %struct.lb_port_stats, %struct.lb_port_stats* %66, i64 2
  store %struct.lb_port_stats* %67, %struct.lb_port_stats** %9, align 8
  br label %48

68:                                               ; preds = %48
  %69 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %70 = call i32 @write_compression_hdr(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %69)
  store i32 %70, i32* %14, align 4
  %71 = load i32, i32* %14, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %77

74:                                               ; preds = %68
  %75 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %76 = call i32 @compress_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %75)
  store i32 %76, i32* %14, align 4
  br label %77

77:                                               ; preds = %74, %73
  %78 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %79 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %78)
  br label %80

80:                                               ; preds = %77, %37, %24
  %81 = load i32, i32* %14, align 4
  ret i32 %81
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #1

declare dso_local i32 @t4_get_lb_stats(%struct.adapter*, i32, %struct.lb_port_stats*) #1

declare dso_local i32 @write_compression_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @compress_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
