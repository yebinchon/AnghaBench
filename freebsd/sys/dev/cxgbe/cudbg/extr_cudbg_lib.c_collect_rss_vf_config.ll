; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_rss_vf_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_rss_vf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.cudbg_buffer = type { i64 }
%struct.cudbg_error = type { i32 }
%struct.rss_vf_conf = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_rss_vf_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_rss_vf_config(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.cudbg_buffer, align 8
  %9 = alloca %struct.rss_vf_conf*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %6, align 8
  %14 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %15 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %14, i32 0, i32 0
  %16 = load %struct.adapter*, %struct.adapter** %15, align 8
  store %struct.adapter* %16, %struct.adapter** %7, align 8
  %17 = load %struct.adapter*, %struct.adapter** %7, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %12, align 4
  %23 = sext i32 %22 to i64
  %24 = mul i64 %23, 8
  %25 = trunc i64 %24 to i32
  store i32 %25, i32* %13, align 4
  %26 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %27 = load i32, i32* %13, align 4
  %28 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %26, i32 %27, %struct.cudbg_buffer* %8)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %3
  br label %69

32:                                               ; preds = %3
  %33 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %8, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = inttoptr i64 %34 to %struct.rss_vf_conf*
  store %struct.rss_vf_conf* %35, %struct.rss_vf_conf** %9, align 8
  store i32 0, i32* %10, align 4
  br label %36

36:                                               ; preds = %54, %32
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %12, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %57

40:                                               ; preds = %36
  %41 = load %struct.adapter*, %struct.adapter** %7, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load %struct.rss_vf_conf*, %struct.rss_vf_conf** %9, align 8
  %44 = load i32, i32* %10, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %43, i64 %45
  %47 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %46, i32 0, i32 1
  %48 = load %struct.rss_vf_conf*, %struct.rss_vf_conf** %9, align 8
  %49 = load i32, i32* %10, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %48, i64 %50
  %52 = getelementptr inbounds %struct.rss_vf_conf, %struct.rss_vf_conf* %51, i32 0, i32 0
  %53 = call i32 @t4_read_rss_vf_config(%struct.adapter* %41, i32 %42, i32* %47, i32* %52, i32 1)
  br label %54

54:                                               ; preds = %40
  %55 = load i32, i32* %10, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %10, align 4
  br label %36

57:                                               ; preds = %36
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

69:                                               ; preds = %66, %31
  %70 = load i32, i32* %11, align 4
  ret i32 %70
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #1

declare dso_local i32 @t4_read_rss_vf_config(%struct.adapter*, i32, i32*, i32*, i32) #1

declare dso_local i32 @write_compression_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @compress_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
