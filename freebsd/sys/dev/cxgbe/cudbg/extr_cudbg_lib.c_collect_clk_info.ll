; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_clk_info.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/cudbg/extr_cudbg_lib.c_collect_clk_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cudbg_init = type { %struct.adapter* }
%struct.adapter = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.cudbg_buffer = type { i64 }
%struct.cudbg_error = type { i32 }
%struct.struct_clk_info = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@CUDBG_STATUS_CCLK_NOT_DEFINED = common dso_local global i32 0, align 4
@A_TP_TIMER_RESOLUTION = common dso_local global i32 0, align 4
@A_TP_DACK_TIMER = common dso_local global i32 0, align 4
@A_TP_RXT_MIN = common dso_local global i32 0, align 4
@A_TP_RXT_MAX = common dso_local global i32 0, align 4
@A_TP_PERS_MIN = common dso_local global i32 0, align 4
@A_TP_PERS_MAX = common dso_local global i32 0, align 4
@A_TP_KEEP_IDLE = common dso_local global i32 0, align 4
@A_TP_KEEP_INTVL = common dso_local global i32 0, align 4
@A_TP_INIT_SRTT = common dso_local global i32 0, align 4
@A_TP_FINWAIT2_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cudbg_init*, %struct.cudbg_buffer*, %struct.cudbg_error*)* @collect_clk_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @collect_clk_info(%struct.cudbg_init* %0, %struct.cudbg_buffer* %1, %struct.cudbg_error* %2) #0 {
  %4 = alloca %struct.cudbg_init*, align 8
  %5 = alloca %struct.cudbg_buffer*, align 8
  %6 = alloca %struct.cudbg_error*, align 8
  %7 = alloca %struct.cudbg_buffer, align 8
  %8 = alloca %struct.adapter*, align 8
  %9 = alloca %struct.struct_clk_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.cudbg_init* %0, %struct.cudbg_init** %4, align 8
  store %struct.cudbg_buffer* %1, %struct.cudbg_buffer** %5, align 8
  store %struct.cudbg_error* %2, %struct.cudbg_error** %6, align 8
  %13 = load %struct.cudbg_init*, %struct.cudbg_init** %4, align 8
  %14 = getelementptr inbounds %struct.cudbg_init, %struct.cudbg_init* %13, i32 0, i32 0
  %15 = load %struct.adapter*, %struct.adapter** %14, align 8
  store %struct.adapter* %15, %struct.adapter** %8, align 8
  store i32 0, i32* %12, align 4
  %16 = load %struct.adapter*, %struct.adapter** %8, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %24, label %22

22:                                               ; preds = %3
  %23 = load i32, i32* @CUDBG_STATUS_CCLK_NOT_DEFINED, align 4
  store i32 %23, i32* %12, align 4
  br label %150

24:                                               ; preds = %3
  store i32 52, i32* %11, align 4
  %25 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i32 @get_scratch_buff(%struct.cudbg_buffer* %25, i32 %26, %struct.cudbg_buffer* %7)
  store i32 %27, i32* %12, align 4
  %28 = load i32, i32* %12, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %150

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct.cudbg_buffer, %struct.cudbg_buffer* %7, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.struct_clk_info*
  store %struct.struct_clk_info* %34, %struct.struct_clk_info** %9, align 8
  %35 = load %struct.adapter*, %struct.adapter** %8, align 8
  %36 = getelementptr inbounds %struct.adapter, %struct.adapter* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = sdiv i32 1000000000, %39
  %41 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %42 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.adapter*, %struct.adapter** %8, align 8
  %44 = load i32, i32* @A_TP_TIMER_RESOLUTION, align 4
  %45 = call i32 @t4_read_reg(%struct.adapter* %43, i32 %44)
  %46 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %47 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %46, i32 0, i32 1
  store i32 %45, i32* %47, align 4
  %48 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %49 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @G_TIMERRESOLUTION(i32 %50)
  %52 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %53 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %52, i32 0, i32 2
  store i32 %51, i32* %53, align 4
  %54 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %55 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @G_DELAYEDACKRESOLUTION(i32 %56)
  %58 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %59 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %58, i32 0, i32 3
  store i32 %57, i32* %59, align 4
  %60 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %61 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %64 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = shl i32 %62, %65
  %67 = sdiv i32 %66, 1000000
  store i32 %67, i32* %10, align 4
  %68 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %69 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %72 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %71, i32 0, i32 3
  %73 = load i32, i32* %72, align 4
  %74 = shl i32 %70, %73
  %75 = sdiv i32 %74, 1000000
  %76 = load %struct.adapter*, %struct.adapter** %8, align 8
  %77 = load i32, i32* @A_TP_DACK_TIMER, align 4
  %78 = call i32 @t4_read_reg(%struct.adapter* %76, i32 %77)
  %79 = mul nsw i32 %75, %78
  %80 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %81 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load %struct.adapter*, %struct.adapter** %8, align 8
  %84 = load i32, i32* @A_TP_RXT_MIN, align 4
  %85 = call i32 @t4_read_reg(%struct.adapter* %83, i32 %84)
  %86 = mul nsw i32 %82, %85
  %87 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %88 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %87, i32 0, i32 5
  store i32 %86, i32* %88, align 4
  %89 = load i32, i32* %10, align 4
  %90 = load %struct.adapter*, %struct.adapter** %8, align 8
  %91 = load i32, i32* @A_TP_RXT_MAX, align 4
  %92 = call i32 @t4_read_reg(%struct.adapter* %90, i32 %91)
  %93 = mul nsw i32 %89, %92
  %94 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %95 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %94, i32 0, i32 6
  store i32 %93, i32* %95, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.adapter*, %struct.adapter** %8, align 8
  %98 = load i32, i32* @A_TP_PERS_MIN, align 4
  %99 = call i32 @t4_read_reg(%struct.adapter* %97, i32 %98)
  %100 = mul nsw i32 %96, %99
  %101 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %102 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %101, i32 0, i32 7
  store i32 %100, i32* %102, align 4
  %103 = load i32, i32* %10, align 4
  %104 = load %struct.adapter*, %struct.adapter** %8, align 8
  %105 = load i32, i32* @A_TP_PERS_MAX, align 4
  %106 = call i32 @t4_read_reg(%struct.adapter* %104, i32 %105)
  %107 = mul nsw i32 %103, %106
  %108 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %109 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %108, i32 0, i32 8
  store i32 %107, i32* %109, align 4
  %110 = load i32, i32* %10, align 4
  %111 = load %struct.adapter*, %struct.adapter** %8, align 8
  %112 = load i32, i32* @A_TP_KEEP_IDLE, align 4
  %113 = call i32 @t4_read_reg(%struct.adapter* %111, i32 %112)
  %114 = mul nsw i32 %110, %113
  %115 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %116 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %115, i32 0, i32 9
  store i32 %114, i32* %116, align 4
  %117 = load i32, i32* %10, align 4
  %118 = load %struct.adapter*, %struct.adapter** %8, align 8
  %119 = load i32, i32* @A_TP_KEEP_INTVL, align 4
  %120 = call i32 @t4_read_reg(%struct.adapter* %118, i32 %119)
  %121 = mul nsw i32 %117, %120
  %122 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %123 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %122, i32 0, i32 10
  store i32 %121, i32* %123, align 4
  %124 = load i32, i32* %10, align 4
  %125 = load %struct.adapter*, %struct.adapter** %8, align 8
  %126 = load i32, i32* @A_TP_INIT_SRTT, align 4
  %127 = call i32 @t4_read_reg(%struct.adapter* %125, i32 %126)
  %128 = call i32 @G_INITSRTT(i32 %127)
  %129 = mul nsw i32 %124, %128
  %130 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %131 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %130, i32 0, i32 11
  store i32 %129, i32* %131, align 4
  %132 = load i32, i32* %10, align 4
  %133 = load %struct.adapter*, %struct.adapter** %8, align 8
  %134 = load i32, i32* @A_TP_FINWAIT2_TIMER, align 4
  %135 = call i32 @t4_read_reg(%struct.adapter* %133, i32 %134)
  %136 = mul nsw i32 %132, %135
  %137 = load %struct.struct_clk_info*, %struct.struct_clk_info** %9, align 8
  %138 = getelementptr inbounds %struct.struct_clk_info, %struct.struct_clk_info* %137, i32 0, i32 12
  store i32 %136, i32* %138, align 4
  %139 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %140 = call i32 @write_compression_hdr(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %139)
  store i32 %140, i32* %12, align 4
  %141 = load i32, i32* %12, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %144

143:                                              ; preds = %31
  br label %147

144:                                              ; preds = %31
  %145 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %146 = call i32 @compress_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %145)
  store i32 %146, i32* %12, align 4
  br label %147

147:                                              ; preds = %144, %143
  %148 = load %struct.cudbg_buffer*, %struct.cudbg_buffer** %5, align 8
  %149 = call i32 @release_scratch_buff(%struct.cudbg_buffer* %7, %struct.cudbg_buffer* %148)
  br label %150

150:                                              ; preds = %147, %30, %22
  %151 = load i32, i32* %12, align 4
  ret i32 %151
}

declare dso_local i32 @get_scratch_buff(%struct.cudbg_buffer*, i32, %struct.cudbg_buffer*) #1

declare dso_local i32 @t4_read_reg(%struct.adapter*, i32) #1

declare dso_local i32 @G_TIMERRESOLUTION(i32) #1

declare dso_local i32 @G_DELAYEDACKRESOLUTION(i32) #1

declare dso_local i32 @G_INITSRTT(i32) #1

declare dso_local i32 @write_compression_hdr(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @compress_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

declare dso_local i32 @release_scratch_buff(%struct.cudbg_buffer*, %struct.cudbg_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
