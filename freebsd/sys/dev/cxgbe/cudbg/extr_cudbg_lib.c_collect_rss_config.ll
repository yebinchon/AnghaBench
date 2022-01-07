; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_rss_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_rss_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.cudbg_buffer = type { i64 }
%struct.cudbg_error = type { i32 }
%struct.rss_config = type { i32, i8*, i8*, i8*, i8*, i8*, i8* }

@A_TP_RSS_CONFIG = common dso_local global i32 0, align 4
@A_TP_RSS_CONFIG_TNL = common dso_local global i32 0, align 4
@A_TP_RSS_CONFIG_OFD = common dso_local global i32 0, align 4
@A_TP_RSS_CONFIG_SYN = common dso_local global i32 0, align 4
@A_TP_RSS_CONFIG_VRT = common dso_local global i32 0, align 4
@A_TP_RSS_CONFIG_CNG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_rss_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_rss_config(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.cudbg_buffer, align 8
  %9 = alloca %struct.rss_config*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %6, align 8
  %12 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %13 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %12, i32 0, i32 0
  %14 = load %struct.adapter*, %struct.adapter** %13, align 8
  store %struct.adapter* %14, %struct.adapter** %7, align 8
  store i32 56, i32* %11, align 4
  %15 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %16 = load i32, i32* %11, align 4
  %17 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %15, i32 %16, %struct.cudbg_buffer* %8)
  store i32 %17, i32* %10, align 4
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %72

21:                                               ; preds = %3
  %22 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %8, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.rss_config*
  store %struct.rss_config* %24, %struct.rss_config** %9, align 8
  %25 = load %struct.adapter*, %struct.adapter** %7, align 8
  %26 = load i32, i32* @A_TP_RSS_CONFIG, align 4
  %27 = call i8* @t4_read_reg(%struct.adapter* %25, i32 %26)
  %28 = load %struct.rss_config*, %struct.rss_config** %9, align 8
  %29 = getelementptr inbounds %struct.rss_config, %struct.rss_config* %28, i32 0, i32 6
  store i8* %27, i8** %29, align 8
  %30 = load %struct.adapter*, %struct.adapter** %7, align 8
  %31 = load i32, i32* @A_TP_RSS_CONFIG_TNL, align 4
  %32 = call i8* @t4_read_reg(%struct.adapter* %30, i32 %31)
  %33 = load %struct.rss_config*, %struct.rss_config** %9, align 8
  %34 = getelementptr inbounds %struct.rss_config, %struct.rss_config* %33, i32 0, i32 5
  store i8* %32, i8** %34, align 8
  %35 = load %struct.adapter*, %struct.adapter** %7, align 8
  %36 = load i32, i32* @A_TP_RSS_CONFIG_OFD, align 4
  %37 = call i8* @t4_read_reg(%struct.adapter* %35, i32 %36)
  %38 = load %struct.rss_config*, %struct.rss_config** %9, align 8
  %39 = getelementptr inbounds %struct.rss_config, %struct.rss_config* %38, i32 0, i32 4
  store i8* %37, i8** %39, align 8
  %40 = load %struct.adapter*, %struct.adapter** %7, align 8
  %41 = load i32, i32* @A_TP_RSS_CONFIG_SYN, align 4
  %42 = call i8* @t4_read_reg(%struct.adapter* %40, i32 %41)
  %43 = load %struct.rss_config*, %struct.rss_config** %9, align 8
  %44 = getelementptr inbounds %struct.rss_config, %struct.rss_config* %43, i32 0, i32 3
  store i8* %42, i8** %44, align 8
  %45 = load %struct.adapter*, %struct.adapter** %7, align 8
  %46 = load i32, i32* @A_TP_RSS_CONFIG_VRT, align 4
  %47 = call i8* @t4_read_reg(%struct.adapter* %45, i32 %46)
  %48 = load %struct.rss_config*, %struct.rss_config** %9, align 8
  %49 = getelementptr inbounds %struct.rss_config, %struct.rss_config* %48, i32 0, i32 2
  store i8* %47, i8** %49, align 8
  %50 = load %struct.adapter*, %struct.adapter** %7, align 8
  %51 = load i32, i32* @A_TP_RSS_CONFIG_CNG, align 4
  %52 = call i8* @t4_read_reg(%struct.adapter* %50, i32 %51)
  %53 = load %struct.rss_config*, %struct.rss_config** %9, align 8
  %54 = getelementptr inbounds %struct.rss_config, %struct.rss_config* %53, i32 0, i32 1
  store i8* %52, i8** %54, align 8
  %55 = load %struct.adapter*, %struct.adapter** %7, align 8
  %56 = getelementptr inbounds %struct.adapter, %struct.adapter* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.rss_config*, %struct.rss_config** %9, align 8
  %60 = getelementptr inbounds %struct.rss_config, %struct.rss_config* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %62 = call i32 @write_compression_hdr(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %21
  br label %69

66:                                               ; preds = %21
  %67 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %68 = call i32 @compress_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %67)
  store i32 %68, i32* %10, align 4
  br label %69

69:                                               ; preds = %66, %65
  %70 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %71 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %70)
  br label %72

72:                                               ; preds = %69, %20
  %73 = load i32, i32* %10, align 4
  ret i32 %73
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #1

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
