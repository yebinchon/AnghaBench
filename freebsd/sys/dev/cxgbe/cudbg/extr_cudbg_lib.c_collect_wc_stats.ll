; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_wc_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_wc_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_buffer = type { i64 }
%struct.cudbg_error = type { i32 }
%struct.struct_wc_stats = type { i8*, i8* }

@A_SGE_STAT_TOTAL = common dso_local global i32 0, align 4
@A_SGE_STAT_MATCH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_wc_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_wc_stats(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.cudbg_buffer, align 8
  %9 = alloca %struct.struct_wc_stats*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %6, align 8
  %14 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %15 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %14, i32 0, i32 0
  %16 = load %struct.adapter*, %struct.adapter** %15, align 8
  store %struct.adapter* %16, %struct.adapter** %7, align 8
  store i32 0, i32* %13, align 4
  store i8* inttoptr (i64 16 to i8*), i8** %12, align 8
  %17 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %18 = load i8*, i8** %12, align 8
  %19 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %17, i8* %18, %struct.cudbg_buffer* %8)
  store i32 %19, i32* %13, align 4
  %20 = load i32, i32* %13, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  br label %65

23:                                               ; preds = %3
  %24 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %8, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.struct_wc_stats*
  store %struct.struct_wc_stats* %26, %struct.struct_wc_stats** %9, align 8
  %27 = load %struct.adapter*, %struct.adapter** %7, align 8
  %28 = call i32 @is_t4(%struct.adapter* %27)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %48, label %30

30:                                               ; preds = %23
  %31 = load %struct.adapter*, %struct.adapter** %7, align 8
  %32 = load i32, i32* @A_SGE_STAT_TOTAL, align 4
  %33 = call i8* @t4_read_reg(%struct.adapter* %31, i32 %32)
  store i8* %33, i8** %10, align 8
  %34 = load %struct.adapter*, %struct.adapter** %7, align 8
  %35 = load i32, i32* @A_SGE_STAT_MATCH, align 4
  %36 = call i8* @t4_read_reg(%struct.adapter* %34, i32 %35)
  store i8* %36, i8** %11, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = load i8*, i8** %11, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = inttoptr i64 %41 to i8*
  %43 = load %struct.struct_wc_stats*, %struct.struct_wc_stats** %9, align 8
  %44 = getelementptr inbounds %struct.struct_wc_stats, %struct.struct_wc_stats* %43, i32 0, i32 1
  store i8* %42, i8** %44, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = load %struct.struct_wc_stats*, %struct.struct_wc_stats** %9, align 8
  %47 = getelementptr inbounds %struct.struct_wc_stats, %struct.struct_wc_stats* %46, i32 0, i32 0
  store i8* %45, i8** %47, align 8
  br label %53

48:                                               ; preds = %23
  %49 = load %struct.struct_wc_stats*, %struct.struct_wc_stats** %9, align 8
  %50 = getelementptr inbounds %struct.struct_wc_stats, %struct.struct_wc_stats* %49, i32 0, i32 1
  store i8* null, i8** %50, align 8
  %51 = load %struct.struct_wc_stats*, %struct.struct_wc_stats** %9, align 8
  %52 = getelementptr inbounds %struct.struct_wc_stats, %struct.struct_wc_stats* %51, i32 0, i32 0
  store i8* null, i8** %52, align 8
  br label %53

53:                                               ; preds = %48, %30
  %54 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %55 = call i32 @write_compression_hdr(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %54)
  store i32 %55, i32* %13, align 4
  %56 = load i32, i32* %13, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53
  br label %62

59:                                               ; preds = %53
  %60 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %61 = call i32 @compress_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %60)
  store i32 %61, i32* %13, align 4
  br label %62

62:                                               ; preds = %59, %58
  %63 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %64 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %63)
  br label %65

65:                                               ; preds = %62, %22
  %66 = load i32, i32* %13, align 4
  ret i32 %66
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i8*, %struct.cudbg_buffer*) #1

declare dso_local i32 @is_t4(%struct.adapter*) #1

declare dso_local i8* @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @write_compression_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @compress_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
