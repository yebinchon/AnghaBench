; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_free_iq_fl.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_free_iq_fl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vi_info = type { i32 }
%struct.sge_iq = type { i32, i32, i32, i64, i32, i32, i32, i32, %struct.adapter* }
%struct.adapter = type { i32, i32, i32 }
%struct.sge_fl = type { i32, i32, i32, i64, i32, i32, i32, i32, %struct.adapter* }

@IQ_ALLOCATED = common dso_local global i32 0, align 4
@FW_IQ_TYPE_FL_INT_CAP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"failed to free queue %p: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vi_info*, %struct.sge_iq*, %struct.sge_fl*)* @free_iq_fl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @free_iq_fl(%struct.vi_info* %0, %struct.sge_iq* %1, %struct.sge_fl* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vi_info*, align 8
  %6 = alloca %struct.sge_iq*, align 8
  %7 = alloca %struct.sge_fl*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.adapter*, align 8
  %10 = alloca i32, align 4
  store %struct.vi_info* %0, %struct.vi_info** %5, align 8
  store %struct.sge_iq* %1, %struct.sge_iq** %6, align 8
  store %struct.sge_fl* %2, %struct.sge_fl** %7, align 8
  %11 = load %struct.sge_iq*, %struct.sge_iq** %6, align 8
  %12 = getelementptr inbounds %struct.sge_iq, %struct.sge_iq* %11, i32 0, i32 8
  %13 = load %struct.adapter*, %struct.adapter** %12, align 8
  store %struct.adapter* %13, %struct.adapter** %9, align 8
  %14 = load %struct.adapter*, %struct.adapter** %9, align 8
  %15 = icmp eq %struct.adapter* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %131

17:                                               ; preds = %3
  %18 = load %struct.vi_info*, %struct.vi_info** %5, align 8
  %19 = icmp ne %struct.vi_info* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %17
  %21 = load %struct.vi_info*, %struct.vi_info** %5, align 8
  %22 = getelementptr inbounds %struct.vi_info, %struct.vi_info* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  br label %28

24:                                               ; preds = %17
  %25 = load %struct.adapter*, %struct.adapter** %9, align 8
  %26 = getelementptr inbounds %struct.adapter, %struct.adapter* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  br label %28

28:                                               ; preds = %24, %20
  %29 = phi i32 [ %23, %20 ], [ %27, %24 ]
  store i32 %29, i32* %10, align 4
  %30 = load %struct.sge_iq*, %struct.sge_iq** %6, align 8
  %31 = getelementptr inbounds %struct.sge_iq, %struct.sge_iq* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* @IQ_ALLOCATED, align 4
  %34 = and i32 %32, %33
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %74

36:                                               ; preds = %28
  %37 = load %struct.adapter*, %struct.adapter** %9, align 8
  %38 = load %struct.adapter*, %struct.adapter** %9, align 8
  %39 = getelementptr inbounds %struct.adapter, %struct.adapter* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.adapter*, %struct.adapter** %9, align 8
  %42 = getelementptr inbounds %struct.adapter, %struct.adapter* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @FW_IQ_TYPE_FL_INT_CAP, align 4
  %45 = load %struct.sge_iq*, %struct.sge_iq** %6, align 8
  %46 = getelementptr inbounds %struct.sge_iq, %struct.sge_iq* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %49 = icmp ne %struct.sge_fl* %48, null
  br i1 %49, label %50, label %54

50:                                               ; preds = %36
  %51 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %52 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  br label %55

54:                                               ; preds = %36
  br label %55

55:                                               ; preds = %54, %50
  %56 = phi i32 [ %53, %50 ], [ 65535, %54 ]
  %57 = call i32 @t4_iq_free(%struct.adapter* %37, i32 %40, i32 %43, i32 0, i32 %44, i32 %47, i32 %56, i32 65535)
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %8, align 4
  %59 = load i32, i32* %8, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load i32, i32* %10, align 4
  %63 = load %struct.sge_iq*, %struct.sge_iq** %6, align 8
  %64 = load i32, i32* %8, align 4
  %65 = call i32 @device_printf(i32 %62, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), %struct.sge_iq* %63, i32 %64)
  %66 = load i32, i32* %8, align 4
  store i32 %66, i32* %4, align 4
  br label %131

67:                                               ; preds = %55
  %68 = load i32, i32* @IQ_ALLOCATED, align 4
  %69 = xor i32 %68, -1
  %70 = load %struct.sge_iq*, %struct.sge_iq** %6, align 8
  %71 = getelementptr inbounds %struct.sge_iq, %struct.sge_iq* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = and i32 %72, %69
  store i32 %73, i32* %71, align 8
  br label %74

74:                                               ; preds = %67, %28
  %75 = load %struct.adapter*, %struct.adapter** %9, align 8
  %76 = load %struct.sge_iq*, %struct.sge_iq** %6, align 8
  %77 = getelementptr inbounds %struct.sge_iq, %struct.sge_iq* %76, i32 0, i32 7
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.sge_iq*, %struct.sge_iq** %6, align 8
  %80 = getelementptr inbounds %struct.sge_iq, %struct.sge_iq* %79, i32 0, i32 6
  %81 = load i32, i32* %80, align 8
  %82 = load %struct.sge_iq*, %struct.sge_iq** %6, align 8
  %83 = getelementptr inbounds %struct.sge_iq, %struct.sge_iq* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.sge_iq*, %struct.sge_iq** %6, align 8
  %86 = getelementptr inbounds %struct.sge_iq, %struct.sge_iq* %85, i32 0, i32 4
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @free_ring(%struct.adapter* %75, i32 %78, i32 %81, i32 %84, i32 %87)
  %89 = load %struct.sge_iq*, %struct.sge_iq** %6, align 8
  %90 = call i32 @bzero(%struct.sge_iq* %89, i32 48)
  %91 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %92 = icmp ne %struct.sge_fl* %91, null
  br i1 %92, label %93, label %130

93:                                               ; preds = %74
  %94 = load %struct.adapter*, %struct.adapter** %9, align 8
  %95 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %96 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %95, i32 0, i32 7
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %99 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %98, i32 0, i32 6
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %102 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %101, i32 0, i32 5
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %105 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %104, i32 0, i32 4
  %106 = load i32, i32* %105, align 8
  %107 = call i32 @free_ring(%struct.adapter* %94, i32 %97, i32 %100, i32 %103, i32 %106)
  %108 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %109 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %117

112:                                              ; preds = %93
  %113 = load %struct.adapter*, %struct.adapter** %9, align 8
  %114 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %115 = bitcast %struct.sge_fl* %114 to %struct.sge_iq*
  %116 = call i32 @free_fl_sdesc(%struct.adapter* %113, %struct.sge_iq* %115)
  br label %117

117:                                              ; preds = %112, %93
  %118 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %119 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %118, i32 0, i32 2
  %120 = call i64 @mtx_initialized(i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %126

122:                                              ; preds = %117
  %123 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %124 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %123, i32 0, i32 2
  %125 = call i32 @mtx_destroy(i32* %124)
  br label %126

126:                                              ; preds = %122, %117
  %127 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %128 = bitcast %struct.sge_fl* %127 to %struct.sge_iq*
  %129 = call i32 @bzero(%struct.sge_iq* %128, i32 48)
  br label %130

130:                                              ; preds = %126, %74
  store i32 0, i32* %4, align 4
  br label %131

131:                                              ; preds = %130, %61, %16
  %132 = load i32, i32* %4, align 4
  ret i32 %132
}

declare dso_local i32 @t4_iq_free(%struct.adapter*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @device_printf(i32, i8*, %struct.sge_iq*, i32) #1

declare dso_local i32 @free_ring(%struct.adapter*, i32, i32, i32, i32) #1

declare dso_local i32 @bzero(%struct.sge_iq*, i32) #1

declare dso_local i32 @free_fl_sdesc(%struct.adapter*, %struct.sge_iq*) #1

declare dso_local i64 @mtx_initialized(i32*) #1

declare dso_local i32 @mtx_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
