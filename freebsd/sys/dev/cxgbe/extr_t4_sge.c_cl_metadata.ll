; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_cl_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_cl_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cluster_metadata = type { i32 }
%struct.adapter = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.sw_zone_info* }
%struct.sw_zone_info = type { i64 }
%struct.sge_fl = type { i32 }
%struct.cluster_layout = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cluster_metadata* (%struct.adapter*, %struct.sge_fl*, %struct.cluster_layout*, i64)* @cl_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cluster_metadata* @cl_metadata(%struct.adapter* %0, %struct.sge_fl* %1, %struct.cluster_layout* %2, i64 %3) #0 {
  %5 = alloca %struct.cluster_metadata*, align 8
  %6 = alloca %struct.adapter*, align 8
  %7 = alloca %struct.sge_fl*, align 8
  %8 = alloca %struct.cluster_layout*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.sw_zone_info*, align 8
  store %struct.adapter* %0, %struct.adapter** %6, align 8
  store %struct.sge_fl* %1, %struct.sge_fl** %7, align 8
  store %struct.cluster_layout* %2, %struct.cluster_layout** %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.sge_fl*, %struct.sge_fl** %7, align 8
  %12 = load %struct.cluster_layout*, %struct.cluster_layout** %8, align 8
  %13 = call i64 @cl_has_metadata(%struct.sge_fl* %11, %struct.cluster_layout* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %31

15:                                               ; preds = %4
  %16 = load %struct.adapter*, %struct.adapter** %6, align 8
  %17 = getelementptr inbounds %struct.adapter, %struct.adapter* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.sw_zone_info*, %struct.sw_zone_info** %18, align 8
  %20 = load %struct.cluster_layout*, %struct.cluster_layout** %8, align 8
  %21 = getelementptr inbounds %struct.cluster_layout, %struct.cluster_layout* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %19, i64 %22
  store %struct.sw_zone_info* %23, %struct.sw_zone_info** %10, align 8
  %24 = load i64, i64* %9, align 8
  %25 = load %struct.sw_zone_info*, %struct.sw_zone_info** %10, align 8
  %26 = getelementptr inbounds %struct.sw_zone_info, %struct.sw_zone_info* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add nsw i64 %24, %27
  %29 = inttoptr i64 %28 to %struct.cluster_metadata*
  %30 = getelementptr inbounds %struct.cluster_metadata, %struct.cluster_metadata* %29, i64 -1
  store %struct.cluster_metadata* %30, %struct.cluster_metadata** %5, align 8
  br label %32

31:                                               ; preds = %4
  store %struct.cluster_metadata* null, %struct.cluster_metadata** %5, align 8
  br label %32

32:                                               ; preds = %31, %15
  %33 = load %struct.cluster_metadata*, %struct.cluster_metadata** %5, align 8
  ret %struct.cluster_metadata* %33
}

declare dso_local i64 @cl_has_metadata(%struct.sge_fl*, %struct.cluster_layout*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
