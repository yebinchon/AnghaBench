; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_cl_has_metadata.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/cxgbe/extr_t4_sge.c_cl_has_metadata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sge_fl = type { i32 }
%struct.cluster_layout = type { i64, i64 }

@FL_BUF_PACKING = common dso_local global i32 0, align 4
@CL_METADATA_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sge_fl*, %struct.cluster_layout*)* @cl_has_metadata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cl_has_metadata(%struct.sge_fl* %0, %struct.cluster_layout* %1) #0 {
  %3 = alloca %struct.sge_fl*, align 8
  %4 = alloca %struct.cluster_layout*, align 8
  %5 = alloca i32, align 4
  store %struct.sge_fl* %0, %struct.sge_fl** %3, align 8
  store %struct.cluster_layout* %1, %struct.cluster_layout** %4, align 8
  %6 = load %struct.sge_fl*, %struct.sge_fl** %3, align 8
  %7 = getelementptr inbounds %struct.sge_fl, %struct.sge_fl* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = load i32, i32* @FL_BUF_PACKING, align 4
  %10 = and i32 %8, %9
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %2
  %13 = load %struct.cluster_layout*, %struct.cluster_layout** %4, align 8
  %14 = getelementptr inbounds %struct.cluster_layout, %struct.cluster_layout* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp sgt i64 %15, 0
  br label %17

17:                                               ; preds = %12, %2
  %18 = phi i1 [ true, %2 ], [ %16, %12 ]
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %30

22:                                               ; preds = %17
  %23 = load %struct.cluster_layout*, %struct.cluster_layout** %4, align 8
  %24 = getelementptr inbounds %struct.cluster_layout, %struct.cluster_layout* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CL_METADATA_SIZE, align 8
  %27 = icmp sge i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @MPASS(i32 %28)
  br label %30

30:                                               ; preds = %22, %17
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @MPASS(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
