; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_hw_sched.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_hw_sched.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cudbg_buffer = type { i64 }
%struct.cudbg_error = type { i32 }
%struct.struct_hw_sched = type { i32*, i32*, i32, i32, i32 }

@CUDBG_STATUS_CCLK_NOT_DEFINED = common dso_local global i32 0, align 4
@A_TP_TX_MOD_QUEUE_REQ_MAP = common dso_local global i32 0, align 4
@A_TP_MOD_CONFIG = common dso_local global i32 0, align 4
@NTX_SCHED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_hw_sched to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_hw_sched(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.adapter*, align 8
  %8 = alloca %struct.cudbg_buffer, align 8
  %9 = alloca %struct.struct_hw_sched*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %6, align 8
  %13 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %14 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %13, i32 0, i32 0
  %15 = load %struct.adapter*, %struct.adapter** %14, align 8
  store %struct.adapter* %15, %struct.adapter** %7, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.adapter*, %struct.adapter** %7, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @CUDBG_STATUS_CCLK_NOT_DEFINED, align 4
  store i32 %23, i32* %12, align 4
  br label %86

24:                                               ; preds = %3
  store i32 32, i32* %10, align 4
  %25 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %25, i32 %26, %struct.cudbg_buffer* %8)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %86

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %8, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.struct_hw_sched*
  store %struct.struct_hw_sched* %34, %struct.struct_hw_sched** %9, align 8
  %35 = load %struct.adapter*, %struct.adapter** %7, align 8
  %36 = load i32, i32* @A_TP_TX_MOD_QUEUE_REQ_MAP, align 4
  %37 = call i32 @t4_read_reg(%struct.adapter* %35, i32 %36)
  %38 = load %struct.struct_hw_sched*, %struct.struct_hw_sched** %9, align 8
  %39 = getelementptr inbounds %struct.struct_hw_sched, %struct.struct_hw_sched* %38, i32 0, i32 4
  store i32 %37, i32* %39, align 8
  %40 = load %struct.adapter*, %struct.adapter** %7, align 8
  %41 = load i32, i32* @A_TP_MOD_CONFIG, align 4
  %42 = call i32 @t4_read_reg(%struct.adapter* %40, i32 %41)
  %43 = call i32 @G_TIMERMODE(i32 %42)
  %44 = load %struct.struct_hw_sched*, %struct.struct_hw_sched** %9, align 8
  %45 = getelementptr inbounds %struct.struct_hw_sched, %struct.struct_hw_sched* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 4
  %46 = load %struct.adapter*, %struct.adapter** %7, align 8
  %47 = load %struct.struct_hw_sched*, %struct.struct_hw_sched** %9, align 8
  %48 = getelementptr inbounds %struct.struct_hw_sched, %struct.struct_hw_sched* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @t4_read_pace_tbl(%struct.adapter* %46, i32 %49)
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %71, %31
  %52 = load i32, i32* %11, align 4
  %53 = load i32, i32* @NTX_SCHED, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %74

55:                                               ; preds = %51
  %56 = load %struct.adapter*, %struct.adapter** %7, align 8
  %57 = load i32, i32* %11, align 4
  %58 = load %struct.struct_hw_sched*, %struct.struct_hw_sched** %9, align 8
  %59 = getelementptr inbounds %struct.struct_hw_sched, %struct.struct_hw_sched* %58, i32 0, i32 1
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %11, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load %struct.struct_hw_sched*, %struct.struct_hw_sched** %9, align 8
  %65 = getelementptr inbounds %struct.struct_hw_sched, %struct.struct_hw_sched* %64, i32 0, i32 0
  %66 = load i32*, i32** %65, align 8
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds i32, i32* %66, i64 %68
  %70 = call i32 @t4_get_tx_sched(%struct.adapter* %56, i32 %57, i32* %63, i32* %69, i32 1)
  br label %71

71:                                               ; preds = %55
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %72, 1
  store i32 %73, i32* %11, align 4
  br label %51

74:                                               ; preds = %51
  %75 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %76 = call i32 @write_compression_hdr(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %75)
  store i32 %76, i32* %12, align 4
  %77 = load i32, i32* %12, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %74
  br label %83

80:                                               ; preds = %74
  %81 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %82 = call i32 @compress_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %81)
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %80, %79
  %84 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %85 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %8, %struct.cudbg_buffer* %84)
  br label %86

86:                                               ; preds = %83, %30, %22
  %87 = load i32, i32* %12, align 4
  ret i32 %87
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @G_TIMERMODE(i32) #1

declare dso_local i32 @t4_read_pace_tbl(%struct.adapter*, i32) #1

declare dso_local i32 @t4_get_tx_sched(%struct.adapter*, i32, i32*, i32*, i32) #1

declare dso_local i32 @write_compression_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @compress_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
