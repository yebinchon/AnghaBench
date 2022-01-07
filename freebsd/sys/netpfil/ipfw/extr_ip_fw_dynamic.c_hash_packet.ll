; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_hash_packet.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_fw_dynamic.c_hash_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipfw_flow_id = type { i32, i32, i32, i32 }
%struct.tuple4 = type { [2 x i32], [2 x i32] }

@V_dyn_hashseed = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipfw_flow_id*)* @hash_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hash_packet(%struct.ipfw_flow_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipfw_flow_id*, align 8
  %4 = alloca %struct.tuple4, align 4
  store %struct.ipfw_flow_id* %0, %struct.ipfw_flow_id** %3, align 8
  %5 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %6 = call i64 @IS_IP4_FLOW_ID(%struct.ipfw_flow_id* %5)
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %8, label %58

8:                                                ; preds = %1
  %9 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %10 = call i64 @addrcmp4(%struct.ipfw_flow_id* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %33

12:                                               ; preds = %8
  %13 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %14 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.tuple4, %struct.tuple4* %4, i32 0, i32 0
  %17 = getelementptr inbounds [2 x i32], [2 x i32]* %16, i64 0, i64 0
  store i32 %15, i32* %17, align 4
  %18 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %19 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = getelementptr inbounds %struct.tuple4, %struct.tuple4* %4, i32 0, i32 0
  %22 = getelementptr inbounds [2 x i32], [2 x i32]* %21, i64 0, i64 1
  store i32 %20, i32* %22, align 4
  %23 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %24 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = getelementptr inbounds %struct.tuple4, %struct.tuple4* %4, i32 0, i32 1
  %27 = getelementptr inbounds [2 x i32], [2 x i32]* %26, i64 0, i64 0
  store i32 %25, i32* %27, align 4
  %28 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %29 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.tuple4, %struct.tuple4* %4, i32 0, i32 1
  %32 = getelementptr inbounds [2 x i32], [2 x i32]* %31, i64 0, i64 1
  store i32 %30, i32* %32, align 4
  br label %54

33:                                               ; preds = %8
  %34 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %35 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %34, i32 0, i32 3
  %36 = load i32, i32* %35, align 4
  %37 = getelementptr inbounds %struct.tuple4, %struct.tuple4* %4, i32 0, i32 0
  %38 = getelementptr inbounds [2 x i32], [2 x i32]* %37, i64 0, i64 0
  store i32 %36, i32* %38, align 4
  %39 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %40 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %39, i32 0, i32 2
  %41 = load i32, i32* %40, align 4
  %42 = getelementptr inbounds %struct.tuple4, %struct.tuple4* %4, i32 0, i32 0
  %43 = getelementptr inbounds [2 x i32], [2 x i32]* %42, i64 0, i64 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %45 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.tuple4, %struct.tuple4* %4, i32 0, i32 1
  %48 = getelementptr inbounds [2 x i32], [2 x i32]* %47, i64 0, i64 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %50 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.tuple4, %struct.tuple4* %4, i32 0, i32 1
  %53 = getelementptr inbounds [2 x i32], [2 x i32]* %52, i64 0, i64 1
  store i32 %51, i32* %53, align 4
  br label %54

54:                                               ; preds = %33, %12
  %55 = bitcast %struct.tuple4* %4 to i32*
  %56 = load i32, i32* @V_dyn_hashseed, align 4
  %57 = call i32 @jenkins_hash32(i32* %55, i32 4, i32 %56)
  store i32 %57, i32* %2, align 4
  br label %59

58:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %58, %54
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @IS_IP4_FLOW_ID(%struct.ipfw_flow_id*) #1

declare dso_local i64 @addrcmp4(%struct.ipfw_flow_id*) #1

declare dso_local i32 @jenkins_hash32(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
