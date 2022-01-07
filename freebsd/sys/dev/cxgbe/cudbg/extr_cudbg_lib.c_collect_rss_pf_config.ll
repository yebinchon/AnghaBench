; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_rss_pf_config.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_rss_pf_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { i32 }
%struct.cudbg_buffer = type { i64 }
%struct.cudbg_error = type { i32 }
%struct.rss_pf_conf = type { i32, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_rss_pf_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_rss_pf_config(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.cudbg_buffer, align 8
  %8 = alloca %struct.rss_pf_conf*, align 8
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %6, align 8
  %15 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %16 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %15, i32 0, i32 0
  %17 = load %struct.adapter*, %struct.adapter** %16, align 8
  store %struct.adapter* %17, %struct.adapter** %9, align 8
  store i8* inttoptr (i64 192 to i8*), i8** %12, align 8
  %18 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %19 = load i8*, i8** %12, align 8
  %20 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %18, i8* %19, %struct.cudbg_buffer* %7)
  store i32 %20, i32* %14, align 4
  %21 = load i32, i32* %14, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %71

24:                                               ; preds = %3
  %25 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = inttoptr i64 %26 to %struct.rss_pf_conf*
  store %struct.rss_pf_conf* %27, %struct.rss_pf_conf** %8, align 8
  %28 = load %struct.adapter*, %struct.adapter** %9, align 8
  %29 = call i8* @t4_read_rss_pf_map(%struct.adapter* %28, i32 1)
  store i8* %29, i8** %10, align 8
  %30 = load %struct.adapter*, %struct.adapter** %9, align 8
  %31 = call i8* @t4_read_rss_pf_mask(%struct.adapter* %30, i32 1)
  store i8* %31, i8** %11, align 8
  store i32 0, i32* %13, align 4
  br label %32

32:                                               ; preds = %56, %24
  %33 = load i32, i32* %13, align 4
  %34 = icmp slt i32 %33, 8
  br i1 %34, label %35, label %59

35:                                               ; preds = %32
  %36 = load i8*, i8** %10, align 8
  %37 = load %struct.rss_pf_conf*, %struct.rss_pf_conf** %8, align 8
  %38 = load i32, i32* %13, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.rss_pf_conf, %struct.rss_pf_conf* %37, i64 %39
  %41 = getelementptr inbounds %struct.rss_pf_conf, %struct.rss_pf_conf* %40, i32 0, i32 2
  store i8* %36, i8** %41, align 8
  %42 = load i8*, i8** %11, align 8
  %43 = load %struct.rss_pf_conf*, %struct.rss_pf_conf** %8, align 8
  %44 = load i32, i32* %13, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.rss_pf_conf, %struct.rss_pf_conf* %43, i64 %45
  %47 = getelementptr inbounds %struct.rss_pf_conf, %struct.rss_pf_conf* %46, i32 0, i32 1
  store i8* %42, i8** %47, align 8
  %48 = load %struct.adapter*, %struct.adapter** %9, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load %struct.rss_pf_conf*, %struct.rss_pf_conf** %8, align 8
  %51 = load i32, i32* %13, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.rss_pf_conf, %struct.rss_pf_conf* %50, i64 %52
  %54 = getelementptr inbounds %struct.rss_pf_conf, %struct.rss_pf_conf* %53, i32 0, i32 0
  %55 = call i32 @t4_read_rss_pf_config(%struct.adapter* %48, i32 %49, i32* %54, i32 1)
  br label %56

56:                                               ; preds = %35
  %57 = load i32, i32* %13, align 4
  %58 = add nsw i32 %57, 1
  store i32 %58, i32* %13, align 4
  br label %32

59:                                               ; preds = %32
  %60 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %61 = call i32 @write_compression_hdr(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %60)
  store i32 %61, i32* %14, align 4
  %62 = load i32, i32* %14, align 4
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %59
  br label %68

65:                                               ; preds = %59
  %66 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %67 = call i32 @compress_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %66)
  store i32 %67, i32* %14, align 4
  br label %68

68:                                               ; preds = %65, %64
  %69 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %70 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %69)
  br label %71

71:                                               ; preds = %68, %23
  %72 = load i32, i32* %14, align 4
  ret i32 %72
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i8*, %struct.cudbg_buffer*) #1

declare dso_local i8* @t4_read_rss_pf_map(%struct.adapter*, i32) #1

declare dso_local i8* @t4_read_rss_pf_mask(%struct.adapter*, i32) #1

declare dso_local i32 @t4_read_rss_pf_config(%struct.adapter*, i32, i32*, i32) #1

declare dso_local i32 @write_compression_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @compress_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
