; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_ddp_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_ddp_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_buffer = type { i64 }
%struct.cudbg_error = type { i32 }
%struct.tp_usm_stats = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_ddp_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_ddp_stats(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.cudbg_buffer, align 8
  %9 = alloca %struct.tp_usm_stats*, align 8
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
  store i32 4, i32* %10, align 4
  %15 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %16 = load i32, i32* %10, align 4
  %17 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %15, i32 %16, %struct.cudbg_buffer* %8)
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %39

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %8, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.tp_usm_stats*
  store %struct.tp_usm_stats* %24, %struct.tp_usm_stats** %9, align 8
  %25 = load %struct.adapter*, %struct.adapter** %7, align 8
  %26 = load %struct.tp_usm_stats*, %struct.tp_usm_stats** %9, align 8
  %27 = call i32 @t4_get_usm_stats(%struct.adapter* %25, %struct.tp_usm_stats* %26, i32 1)
  %28 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %29 = call i32 @write_compression_hdr(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %28)
  store i32 %29, i32* %11, align 4
  %30 = load i32, i32* %11, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %21
  br label %36

33:                                               ; preds = %21
  %34 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %35 = call i32 @compress_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %34)
  store i32 %35, i32* %11, align 4
  br label %36

36:                                               ; preds = %33, %32
  %37 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %38 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %37)
  br label %39

39:                                               ; preds = %36, %20
  %40 = load i32, i32* %11, align 4
  ret i32 %40
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #1

declare dso_local i32 @t4_get_usm_stats(%struct.adapter*, %struct.tp_usm_stats*, i32) #1

declare dso_local i32 @write_compression_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @compress_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
