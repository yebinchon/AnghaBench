; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_nonzero_mask.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_nonzero_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipfw_flow_id = type { i64, i64, i64, %struct.TYPE_8__, %struct.TYPE_6__, i64, i64, i64, i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i64* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipfw_flow_id*)* @nonzero_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nonzero_mask(%struct.ipfw_flow_id* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ipfw_flow_id*, align 8
  store %struct.ipfw_flow_id* %0, %struct.ipfw_flow_id** %3, align 8
  %4 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %5 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %4, i32 0, i32 8
  %6 = load i64, i64* %5, align 8
  %7 = icmp ne i64 %6, 0
  br i1 %7, label %23, label %8

8:                                                ; preds = %1
  %9 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %10 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %9, i32 0, i32 7
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %23, label %13

13:                                               ; preds = %8
  %14 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %15 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %14, i32 0, i32 6
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %13
  %19 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %20 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %19, i32 0, i32 5
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18, %13, %8, %1
  store i32 1, i32* %2, align 4
  br label %121

24:                                               ; preds = %18
  %25 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %26 = call i64 @IS_IP6_FLOW_ID(%struct.ipfw_flow_id* %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %108

28:                                               ; preds = %24
  %29 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %30 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %29, i32 0, i32 4
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i64*, i64** %32, align 8
  %34 = getelementptr inbounds i64, i64* %33, i64 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %105, label %37

37:                                               ; preds = %28
  %38 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %39 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %38, i32 0, i32 4
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i64*, i64** %41, align 8
  %43 = getelementptr inbounds i64, i64* %42, i64 1
  %44 = load i64, i64* %43, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %105, label %46

46:                                               ; preds = %37
  %47 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %48 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %47, i32 0, i32 4
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = getelementptr inbounds i64, i64* %51, i64 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %105, label %55

55:                                               ; preds = %46
  %56 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %57 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %56, i32 0, i32 4
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load i64*, i64** %59, align 8
  %61 = getelementptr inbounds i64, i64* %60, i64 3
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %105, label %64

64:                                               ; preds = %55
  %65 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %66 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %65, i32 0, i32 3
  %67 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = getelementptr inbounds i64, i64* %69, i64 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %105, label %73

73:                                               ; preds = %64
  %74 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %75 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 0
  %77 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %76, i32 0, i32 0
  %78 = load i64*, i64** %77, align 8
  %79 = getelementptr inbounds i64, i64* %78, i64 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %105, label %82

82:                                               ; preds = %73
  %83 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %84 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %83, i32 0, i32 3
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64*, i64** %86, align 8
  %88 = getelementptr inbounds i64, i64* %87, i64 2
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %105, label %91

91:                                               ; preds = %82
  %92 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %93 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %92, i32 0, i32 3
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %94, i32 0, i32 0
  %96 = load i64*, i64** %95, align 8
  %97 = getelementptr inbounds i64, i64* %96, i64 3
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %91
  %101 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %102 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %101, i32 0, i32 2
  %103 = load i64, i64* %102, align 8
  %104 = icmp ne i64 %103, 0
  br label %105

105:                                              ; preds = %100, %91, %82, %73, %64, %55, %46, %37, %28
  %106 = phi i1 [ true, %91 ], [ true, %82 ], [ true, %73 ], [ true, %64 ], [ true, %55 ], [ true, %46 ], [ true, %37 ], [ true, %28 ], [ %104, %100 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %2, align 4
  br label %121

108:                                              ; preds = %24
  %109 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %110 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %109, i32 0, i32 1
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %118, label %113

113:                                              ; preds = %108
  %114 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %3, align 8
  %115 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %114, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br label %118

118:                                              ; preds = %113, %108
  %119 = phi i1 [ true, %108 ], [ %117, %113 ]
  %120 = zext i1 %119 to i32
  store i32 %120, i32* %2, align 4
  br label %121

121:                                              ; preds = %118, %105, %23
  %122 = load i32, i32* %2, align 4
  ret i32 %122
}

declare dso_local i64 @IS_IP6_FLOW_ID(%struct.ipfw_flow_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
