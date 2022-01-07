; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_addrcmp4.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_addrcmp4.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipfw_flow_id = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipfw_flow_id*)* @addrcmp4 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @addrcmp4(%struct.ipfw_flow_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipfw_flow_id*, align 8
  store %struct.ipfw_flow_id* %0, %struct.ipfw_flow_id** %3, align 8
  %4 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %5 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %8 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = icmp slt i64 %6, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %31

12:                                               ; preds = %1
  %13 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %14 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %17 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = icmp sgt i64 %15, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %12
  store i32 1, i32* %2, align 4
  br label %31

21:                                               ; preds = %12
  %22 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %23 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %22, i32 0, i32 2
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %26 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = icmp sle i64 %24, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %21
  store i32 0, i32* %2, align 4
  br label %31

30:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %31

31:                                               ; preds = %30, %29, %20, %11
  %32 = load i32, i32* %2, align 4
  ret i32 %32
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
