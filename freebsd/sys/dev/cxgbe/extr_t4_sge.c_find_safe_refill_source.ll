; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_find_safe_refill_source.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_find_safe_refill_source.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.adapter = type { %struct.TYPE_5__, %struct.sge }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.sge = type { i64, i64, %struct.sw_zone_info*, %struct.hw_buf_info* }
%struct.sw_zone_info = type { i32 }
%struct.hw_buf_info = type { i64, i32 }
%struct.sge_fl = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32 }

@FL_BUF_PACKING = common dso_local global i32 0, align 4
@allow_mbufs_in_cluster = common dso_local global i64 0, align 8
@CL_METADATA_SIZE = common dso_local global i32 0, align 4
@MSIZE = common dso_local global i32 0, align 4
@fl_pad = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.adapter*, %struct.sge_fl*)* @find_safe_refill_source to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @find_safe_refill_source(%struct.adapter* %0, %struct.sge_fl* %1) #0 {
  %3 = alloca %struct.adapter*, align 8
  %4 = alloca %struct.sge_fl*, align 8
  %5 = alloca %struct.sge*, align 8
  %6 = alloca %struct.hw_buf_info*, align 8
  %7 = alloca %struct.sw_zone_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  store %struct.adapter* %0, %struct.adapter** %3, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %4, align 8
  %10 = load %struct.adapter*, %struct.adapter** %3, align 8
  %11 = getelementptr inbounds %struct.adapter, %struct.adapter* %10, i32 0, i32 1
  store %struct.sge* %11, %struct.sge** %5, align 8
  %12 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %13 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @FL_BUF_PACKING, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %2
  %19 = load %struct.sge*, %struct.sge** %5, align 8
  %20 = getelementptr inbounds %struct.sge, %struct.sge* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %9, align 8
  br label %68

22:                                               ; preds = %2
  %23 = load i64, i64* @allow_mbufs_in_cluster, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %63

25:                                               ; preds = %22
  %26 = load %struct.sge*, %struct.sge** %5, align 8
  %27 = getelementptr inbounds %struct.sge, %struct.sge* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, -1
  br i1 %29, label %30, label %63

30:                                               ; preds = %25
  %31 = load %struct.sge*, %struct.sge** %5, align 8
  %32 = getelementptr inbounds %struct.sge, %struct.sge* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %9, align 8
  %34 = load %struct.sge*, %struct.sge** %5, align 8
  %35 = getelementptr inbounds %struct.sge, %struct.sge* %34, i32 0, i32 3
  %36 = load %struct.hw_buf_info*, %struct.hw_buf_info** %35, align 8
  %37 = load i64, i64* %9, align 8
  %38 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %36, i64 %37
  store %struct.hw_buf_info* %38, %struct.hw_buf_info** %6, align 8
  %39 = load %struct.sge*, %struct.sge** %5, align 8
  %40 = getelementptr inbounds %struct.sge, %struct.sge* %39, i32 0, i32 2
  %41 = load %struct.sw_zone_info*, %struct.sw_zone_info** %40, align 8
  %42 = load %struct.hw_buf_info*, %struct.hw_buf_info** %6, align 8
  %43 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %41, i64 %44
  store %struct.sw_zone_info* %45, %struct.sw_zone_info** %7, align 8
  %46 = load %struct.sw_zone_info*, %struct.sw_zone_info** %7, align 8
  %47 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hw_buf_info*, %struct.hw_buf_info** %6, align 8
  %50 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = sub nsw i32 %48, %51
  store i32 %52, i32* %8, align 4
  %53 = load i32, i32* %8, align 4
  %54 = load i32, i32* @CL_METADATA_SIZE, align 4
  %55 = load i32, i32* @MSIZE, align 4
  %56 = add nsw i32 %54, %55
  %57 = icmp slt i32 %53, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %30
  %59 = load %struct.sge*, %struct.sge** %5, align 8
  %60 = getelementptr inbounds %struct.sge, %struct.sge* %59, i32 0, i32 1
  %61 = load i64, i64* %60, align 8
  store i64 %61, i64* %9, align 8
  br label %62

62:                                               ; preds = %58, %30
  br label %67

63:                                               ; preds = %25, %22
  %64 = load %struct.sge*, %struct.sge** %5, align 8
  %65 = getelementptr inbounds %struct.sge, %struct.sge* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %63, %62
  br label %68

68:                                               ; preds = %67, %18
  %69 = load i64, i64* %9, align 8
  %70 = icmp eq i64 %69, -1
  br i1 %70, label %71, label %78

71:                                               ; preds = %68
  %72 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %73 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i32 0, i32 0
  store i32 -1, i32* %74, align 4
  %75 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %76 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 1
  store i32 -1, i32* %77, align 4
  br label %149

78:                                               ; preds = %68
  %79 = load %struct.sge*, %struct.sge** %5, align 8
  %80 = getelementptr inbounds %struct.sge, %struct.sge* %79, i32 0, i32 3
  %81 = load %struct.hw_buf_info*, %struct.hw_buf_info** %80, align 8
  %82 = load i64, i64* %9, align 8
  %83 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %81, i64 %82
  store %struct.hw_buf_info* %83, %struct.hw_buf_info** %6, align 8
  %84 = load %struct.sge*, %struct.sge** %5, align 8
  %85 = getelementptr inbounds %struct.sge, %struct.sge* %84, i32 0, i32 2
  %86 = load %struct.sw_zone_info*, %struct.sw_zone_info** %85, align 8
  %87 = load %struct.hw_buf_info*, %struct.hw_buf_info** %6, align 8
  %88 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %86, i64 %89
  store %struct.sw_zone_info* %90, %struct.sw_zone_info** %7, align 8
  %91 = load %struct.sw_zone_info*, %struct.sw_zone_info** %7, align 8
  %92 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = load %struct.hw_buf_info*, %struct.hw_buf_info** %6, align 8
  %95 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 8
  %97 = sub nsw i32 %93, %96
  store i32 %97, i32* %8, align 4
  %98 = load i64, i64* %9, align 8
  %99 = trunc i64 %98 to i32
  %100 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %101 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 4
  %103 = load %struct.hw_buf_info*, %struct.hw_buf_info** %6, align 8
  %104 = getelementptr inbounds %struct.hw_buf_info, %struct.hw_buf_info* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %108 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %107, i32 0, i32 1
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i32 %106, i32* %109, align 4
  %110 = load i64, i64* @allow_mbufs_in_cluster, align 8
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %135

112:                                              ; preds = %78
  %113 = load i64, i64* @fl_pad, align 8
  %114 = icmp eq i64 %113, 0
  br i1 %114, label %124, label %115

115:                                              ; preds = %112
  %116 = load i32, i32* @MSIZE, align 4
  %117 = load %struct.adapter*, %struct.adapter** %3, align 8
  %118 = getelementptr inbounds %struct.adapter, %struct.adapter* %117, i32 0, i32 0
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = srem i32 %116, %121
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %135

124:                                              ; preds = %115, %112
  %125 = load i32, i32* %8, align 4
  %126 = load i32, i32* @CL_METADATA_SIZE, align 4
  %127 = sub nsw i32 %125, %126
  %128 = load i32, i32* @MSIZE, align 4
  %129 = sdiv i32 %127, %128
  %130 = load i32, i32* @MSIZE, align 4
  %131 = mul nsw i32 %129, %130
  %132 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %133 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 2
  store i32 %131, i32* %134, align 4
  br label %139

135:                                              ; preds = %115, %78
  %136 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %137 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %136, i32 0, i32 1
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  store i32 0, i32* %138, align 4
  br label %139

139:                                              ; preds = %135, %124
  %140 = load i32, i32* %8, align 4
  %141 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %142 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 2
  %144 = load i32, i32* %143, align 4
  %145 = sub nsw i32 %140, %144
  %146 = load %struct.sge_fl*, %struct.sge_fl** %4, align 8
  %147 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %146, i32 0, i32 1
  %148 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %147, i32 0, i32 3
  store i32 %145, i32* %148, align 4
  br label %149

149:                                              ; preds = %139, %71
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
