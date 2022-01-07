; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_flow_id_cmp.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_flow_id_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipfw_flow_id = type { i64, i64, i64, i64, i64, i64, i64, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipfw_flow_id*, %struct.ipfw_flow_id*)* @flow_id_cmp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_id_cmp(%struct.ipfw_flow_id* %0, %struct.ipfw_flow_id* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ipfw_flow_id*, align 8
  %5 = alloca %struct.ipfw_flow_id*, align 8
  %6 = alloca i32, align 4
  store %struct.ipfw_flow_id* %0, %struct.ipfw_flow_id** %4, align 8
  store %struct.ipfw_flow_id* %1, %struct.ipfw_flow_id** %5, align 8
  %7 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %8 = call i32 @IS_IP6_FLOW_ID(%struct.ipfw_flow_id* %7)
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* %6, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %68, label %11

11:                                               ; preds = %2
  %12 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %5, align 8
  %13 = call i32 @IS_IP6_FLOW_ID(%struct.ipfw_flow_id* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  store i32 1, i32* %3, align 4
  br label %126

16:                                               ; preds = %11
  %17 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %18 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %5, align 8
  %21 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %64

24:                                               ; preds = %16
  %25 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %26 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %5, align 8
  %29 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br i1 %31, label %32, label %64

32:                                               ; preds = %24
  %33 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %34 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  %36 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %5, align 8
  %37 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %35, %38
  br i1 %39, label %40, label %64

40:                                               ; preds = %32
  %41 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %42 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %41, i32 0, i32 3
  %43 = load i64, i64* %42, align 8
  %44 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %5, align 8
  %45 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %43, %46
  br i1 %47, label %48, label %64

48:                                               ; preds = %40
  %49 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %50 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %49, i32 0, i32 4
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %5, align 8
  %53 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %52, i32 0, i32 4
  %54 = load i64, i64* %53, align 8
  %55 = icmp eq i64 %51, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %48
  %57 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %58 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %5, align 8
  %61 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %60, i32 0, i32 5
  %62 = load i64, i64* %61, align 8
  %63 = icmp eq i64 %59, %62
  br label %64

64:                                               ; preds = %56, %48, %40, %32, %24, %16
  %65 = phi i1 [ false, %48 ], [ false, %40 ], [ false, %32 ], [ false, %24 ], [ false, %16 ], [ %63, %56 ]
  %66 = zext i1 %65 to i64
  %67 = select i1 %65, i32 0, i32 1
  store i32 %67, i32* %3, align 4
  br label %126

68:                                               ; preds = %2
  %69 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %70 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %69, i32 0, i32 8
  %71 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %5, align 8
  %72 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %71, i32 0, i32 8
  %73 = call i32 @bcmp(i32* %70, i32* %72, i32 4)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %122, label %75

75:                                               ; preds = %68
  %76 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %77 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %76, i32 0, i32 7
  %78 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %5, align 8
  %79 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %78, i32 0, i32 7
  %80 = call i32 @bcmp(i32* %77, i32* %79, i32 4)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %122, label %82

82:                                               ; preds = %75
  %83 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %84 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %5, align 8
  %87 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp eq i64 %85, %88
  br i1 %89, label %90, label %122

90:                                               ; preds = %82
  %91 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %92 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %91, i32 0, i32 3
  %93 = load i64, i64* %92, align 8
  %94 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %5, align 8
  %95 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %94, i32 0, i32 3
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %93, %96
  br i1 %97, label %98, label %122

98:                                               ; preds = %90
  %99 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %100 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %99, i32 0, i32 4
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %5, align 8
  %103 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp eq i64 %101, %104
  br i1 %105, label %106, label %122

106:                                              ; preds = %98
  %107 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %108 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %107, i32 0, i32 5
  %109 = load i64, i64* %108, align 8
  %110 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %5, align 8
  %111 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %110, i32 0, i32 5
  %112 = load i64, i64* %111, align 8
  %113 = icmp eq i64 %109, %112
  br i1 %113, label %114, label %122

114:                                              ; preds = %106
  %115 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %4, align 8
  %116 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %115, i32 0, i32 6
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %5, align 8
  %119 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = icmp eq i64 %117, %120
  br label %122

122:                                              ; preds = %114, %106, %98, %90, %82, %75, %68
  %123 = phi i1 [ false, %106 ], [ false, %98 ], [ false, %90 ], [ false, %82 ], [ false, %75 ], [ false, %68 ], [ %121, %114 ]
  %124 = zext i1 %123 to i64
  %125 = select i1 %123, i32 0, i32 1
  store i32 %125, i32* %3, align 4
  br label %126

126:                                              ; preds = %122, %64, %15
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @IS_IP6_FLOW_ID(%struct.ipfw_flow_id*) #1

declare dso_local i32 @bcmp(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
