; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_flow_id_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_flow_id_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipfw_flow_id = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ipfw_flow_id* (%struct.ipfw_flow_id*, %struct.ipfw_flow_id*)* @flow_id_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ipfw_flow_id* @flow_id_mask(%struct.ipfw_flow_id* %0, %struct.ipfw_flow_id* %1) #0 {
  %3 = alloca %struct.ipfw_flow_id*, align 8
  %4 = alloca %struct.ipfw_flow_id*, align 8
  %5 = alloca i32, align 4
  store %struct.ipfw_flow_id* %0, %struct.ipfw_flow_id** %3, align 8
  store %struct.ipfw_flow_id* %1, %struct.ipfw_flow_id** %4, align 8
  %6 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %7 = call i32 @IS_IP6_FLOW_ID(%struct.ipfw_flow_id* %6)
  store i32 %7, i32* %5, align 4
  %8 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %9 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %8, i32 0, i32 8
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %12 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %11, i32 0, i32 8
  %13 = load i32, i32* %12, align 4
  %14 = and i32 %13, %10
  store i32 %14, i32* %12, align 4
  %15 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %16 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %15, i32 0, i32 7
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %19 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %18, i32 0, i32 7
  %20 = load i32, i32* %19, align 4
  %21 = and i32 %20, %17
  store i32 %21, i32* %19, align 4
  %22 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %23 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %22, i32 0, i32 6
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %26 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %25, i32 0, i32 6
  %27 = load i32, i32* %26, align 4
  %28 = and i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %30 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %33 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = and i32 %34, %31
  store i32 %35, i32* %33, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %56

38:                                               ; preds = %2
  %39 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %40 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %39, i32 0, i32 4
  %41 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %42 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %41, i32 0, i32 4
  %43 = call i32 @APPLY_MASK(i32* %40, i32* %42)
  %44 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %45 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %44, i32 0, i32 3
  %46 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %47 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %46, i32 0, i32 3
  %48 = call i32 @APPLY_MASK(i32* %45, i32* %47)
  %49 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %50 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %53 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = and i32 %54, %51
  store i32 %55, i32* %53, align 4
  br label %71

56:                                               ; preds = %2
  %57 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %58 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %61 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = and i32 %62, %59
  store i32 %63, i32* %61, align 4
  %64 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %65 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %68 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = and i32 %69, %66
  store i32 %70, i32* %68, align 4
  br label %71

71:                                               ; preds = %56, %38
  %72 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  ret %struct.ipfw_flow_id* %72
}

declare dso_local i32 @IS_IP6_FLOW_ID(%struct.ipfw_flow_id*) #1

declare dso_local i32 @APPLY_MASK(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
