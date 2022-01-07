; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_macstats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_macstats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cudbg_buffer = type { i64 }
%struct.cudbg_error = type { i32 }
%struct.struct_mac_stats_rev1 = type { i64, i32*, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32 }

@CUDBG_ENTITY_SIGNATURE = common dso_local global i32 0, align 4
@CUDBG_MAC_STATS_REV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_macstats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_macstats(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.cudbg_buffer, align 8
  %9 = alloca %struct.struct_mac_stats_rev1*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %6, align 8
  %14 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %15 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %14, i32 0, i32 0
  %16 = load %struct.adapter*, %struct.adapter** %15, align 8
  store %struct.adapter* %16, %struct.adapter** %7, align 8
  store i32 0, i32* %13, align 4
  %17 = load %struct.adapter*, %struct.adapter** %7, align 8
  %18 = getelementptr inbounds %struct.adapter, %struct.adapter* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %3
  br label %81

24:                                               ; preds = %3
  %25 = load i32, i32* %13, align 4
  %26 = sext i32 %25 to i64
  store i64 %26, i64* %11, align 8
  store i64 32, i64* %12, align 8
  %27 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %28 = load i64, i64* %12, align 8
  %29 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %27, i64 %28, %struct.cudbg_buffer* %8)
  store i32 %29, i32* %13, align 4
  %30 = load i32, i32* %13, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %81

33:                                               ; preds = %24
  %34 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %8, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.struct_mac_stats_rev1*
  store %struct.struct_mac_stats_rev1* %36, %struct.struct_mac_stats_rev1** %9, align 8
  %37 = load i32, i32* @CUDBG_ENTITY_SIGNATURE, align 4
  %38 = load %struct.struct_mac_stats_rev1*, %struct.struct_mac_stats_rev1** %9, align 8
  %39 = getelementptr inbounds %struct.struct_mac_stats_rev1, %struct.struct_mac_stats_rev1* %38, i32 0, i32 2
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 2
  store i32 %37, i32* %40, align 8
  %41 = load i32, i32* @CUDBG_MAC_STATS_REV, align 4
  %42 = load %struct.struct_mac_stats_rev1*, %struct.struct_mac_stats_rev1** %9, align 8
  %43 = getelementptr inbounds %struct.struct_mac_stats_rev1, %struct.struct_mac_stats_rev1* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.struct_mac_stats_rev1*, %struct.struct_mac_stats_rev1** %9, align 8
  %46 = getelementptr inbounds %struct.struct_mac_stats_rev1, %struct.struct_mac_stats_rev1* %45, i32 0, i32 2
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 0
  store i32 28, i32* %47, align 8
  %48 = load i64, i64* %11, align 8
  %49 = load %struct.struct_mac_stats_rev1*, %struct.struct_mac_stats_rev1** %9, align 8
  %50 = getelementptr inbounds %struct.struct_mac_stats_rev1, %struct.struct_mac_stats_rev1* %49, i32 0, i32 0
  store i64 %48, i64* %50, align 8
  store i64 0, i64* %10, align 8
  br label %51

51:                                               ; preds = %66, %33
  %52 = load i64, i64* %10, align 8
  %53 = load %struct.struct_mac_stats_rev1*, %struct.struct_mac_stats_rev1** %9, align 8
  %54 = getelementptr inbounds %struct.struct_mac_stats_rev1, %struct.struct_mac_stats_rev1* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp ult i64 %52, %55
  br i1 %56, label %57, label %69

57:                                               ; preds = %51
  %58 = load %struct.adapter*, %struct.adapter** %7, align 8
  %59 = load i64, i64* %10, align 8
  %60 = load %struct.struct_mac_stats_rev1*, %struct.struct_mac_stats_rev1** %9, align 8
  %61 = getelementptr inbounds %struct.struct_mac_stats_rev1, %struct.struct_mac_stats_rev1* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %10, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = call i32 @t4_get_port_stats(%struct.adapter* %58, i64 %59, i32* %64)
  br label %66

66:                                               ; preds = %57
  %67 = load i64, i64* %10, align 8
  %68 = add i64 %67, 1
  store i64 %68, i64* %10, align 8
  br label %51

69:                                               ; preds = %51
  %70 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %71 = call i32 @write_compression_hdr(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %70)
  store i32 %71, i32* %13, align 4
  %72 = load i32, i32* %13, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %69
  br label %78

75:                                               ; preds = %69
  %76 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %77 = call i32 @compress_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %76)
  store i32 %77, i32* %13, align 4
  br label %78

78:                                               ; preds = %75, %74
  %79 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %80 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %79)
  br label %81

81:                                               ; preds = %78, %32, %23
  %82 = load i32, i32* %13, align 4
  ret i32 %82
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i64, %struct.cudbg_buffer*) #1

declare dso_local i32 @t4_get_port_stats(%struct.adapter*, i64, i32*) #1

declare dso_local i32 @write_compression_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @compress_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
