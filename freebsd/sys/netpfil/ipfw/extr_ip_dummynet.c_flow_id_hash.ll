; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_flow_id_hash.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_ip_dummynet.c_flow_id_hash.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ipfw_flow_id = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ipfw_flow_id*)* @flow_id_hash to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flow_id_hash(%struct.ipfw_flow_id* %0) #0 {
  %2 = alloca %struct.ipfw_flow_id*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  store %struct.ipfw_flow_id* %0, %struct.ipfw_flow_id** %2, align 8
  %6 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %7 = call i64 @IS_IP6_FLOW_ID(%struct.ipfw_flow_id* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %110

9:                                                ; preds = %1
  %10 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %11 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %10, i32 0, i32 8
  store i32* %11, i32** %4, align 8
  %12 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %13 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %12, i32 0, i32 7
  store i32* %13, i32** %5, align 8
  %14 = load i32*, i32** %4, align 8
  %15 = getelementptr inbounds i32, i32* %14, i64 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 1
  %19 = load i32, i32* %18, align 4
  %20 = xor i32 %16, %19
  %21 = load i32*, i32** %4, align 8
  %22 = getelementptr inbounds i32, i32* %21, i64 2
  %23 = load i32, i32* %22, align 4
  %24 = xor i32 %20, %23
  %25 = load i32*, i32** %4, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 3
  %27 = load i32, i32* %26, align 4
  %28 = xor i32 %24, %27
  %29 = load i32*, i32** %4, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = ashr i32 %31, 15
  %33 = xor i32 %28, %32
  %34 = load i32*, i32** %4, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 1
  %36 = load i32, i32* %35, align 4
  %37 = ashr i32 %36, 15
  %38 = xor i32 %33, %37
  %39 = load i32*, i32** %4, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 2
  %41 = load i32, i32* %40, align 4
  %42 = ashr i32 %41, 15
  %43 = xor i32 %38, %42
  %44 = load i32*, i32** %4, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = ashr i32 %46, 15
  %48 = xor i32 %43, %47
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  %51 = load i32, i32* %50, align 4
  %52 = shl i32 %51, 1
  %53 = xor i32 %48, %52
  %54 = load i32*, i32** %5, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 1
  %56 = load i32, i32* %55, align 4
  %57 = shl i32 %56, 1
  %58 = xor i32 %53, %57
  %59 = load i32*, i32** %5, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  %61 = load i32, i32* %60, align 4
  %62 = shl i32 %61, 1
  %63 = xor i32 %58, %62
  %64 = load i32*, i32** %5, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 3
  %66 = load i32, i32* %65, align 4
  %67 = shl i32 %66, 1
  %68 = xor i32 %63, %67
  %69 = load i32*, i32** %5, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  %71 = load i32, i32* %70, align 4
  %72 = shl i32 %71, 16
  %73 = xor i32 %68, %72
  %74 = load i32*, i32** %5, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  %76 = load i32, i32* %75, align 4
  %77 = shl i32 %76, 16
  %78 = xor i32 %73, %77
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds i32, i32* %79, i64 2
  %81 = load i32, i32* %80, align 4
  %82 = shl i32 %81, 16
  %83 = xor i32 %78, %82
  %84 = load i32*, i32** %5, align 8
  %85 = getelementptr inbounds i32, i32* %84, i64 3
  %86 = load i32, i32* %85, align 4
  %87 = shl i32 %86, 16
  %88 = xor i32 %83, %87
  %89 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %90 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = shl i32 %91, 1
  %93 = xor i32 %88, %92
  %94 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %95 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = xor i32 %93, %96
  %98 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %99 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = xor i32 %97, %100
  %102 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %103 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = xor i32 %101, %104
  %106 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %107 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = xor i32 %105, %108
  store i32 %109, i32* %3, align 4
  br label %146

110:                                              ; preds = %1
  %111 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %112 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %111, i32 0, i32 5
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %115 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 4
  %117 = ashr i32 %116, 15
  %118 = xor i32 %113, %117
  %119 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %120 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %119, i32 0, i32 6
  %121 = load i32, i32* %120, align 4
  %122 = shl i32 %121, 1
  %123 = xor i32 %118, %122
  %124 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %125 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %124, i32 0, i32 6
  %126 = load i32, i32* %125, align 4
  %127 = ashr i32 %126, 16
  %128 = xor i32 %123, %127
  %129 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %130 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 4
  %132 = xor i32 %128, %131
  %133 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %134 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = shl i32 %135, 1
  %137 = xor i32 %132, %136
  %138 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %139 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = xor i32 %137, %140
  %142 = load %struct.ipfw_flow_id*, %struct.ipfw_flow_id** %2, align 8
  %143 = getelementptr inbounds %struct.ipfw_flow_id, %struct.ipfw_flow_id* %142, i32 0, i32 3
  %144 = load i32, i32* %143, align 4
  %145 = xor i32 %141, %144
  store i32 %145, i32* %3, align 4
  br label %146

146:                                              ; preds = %110, %9
  %147 = load i32, i32* %3, align 4
  ret i32 %147
}

declare dso_local i64 @IS_IP6_FLOW_ID(%struct.ipfw_flow_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
