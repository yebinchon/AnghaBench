; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_fq_update_stats.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_fq_pie.c_fq_update_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fq_pie_flow = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32 }
%struct.fq_pie_si = type { %struct.TYPE_10__, %struct.TYPE_7__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32, i32, i32 }

@io_pkt_drop = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fq_pie_flow*, %struct.fq_pie_si*, i32, i32)* @fq_update_stats to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fq_update_stats(%struct.fq_pie_flow* %0, %struct.fq_pie_si* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.fq_pie_flow*, align 8
  %6 = alloca %struct.fq_pie_si*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.fq_pie_flow* %0, %struct.fq_pie_flow** %5, align 8
  store %struct.fq_pie_si* %1, %struct.fq_pie_si** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %7, align 4
  %11 = icmp slt i32 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 -1, i32* %9, align 4
  br label %18

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 1, i32* %9, align 4
  br label %17

17:                                               ; preds = %16, %13
  br label %18

18:                                               ; preds = %17, %12
  %19 = load i32, i32* %8, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %41

21:                                               ; preds = %18
  %22 = load %struct.fq_pie_si*, %struct.fq_pie_si** %6, align 8
  %23 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = add nsw i32 %26, 1
  store i32 %27, i32* %25, align 4
  %28 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %5, align 8
  %29 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 4
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  %33 = load %struct.fq_pie_si*, %struct.fq_pie_si** %6, align 8
  %34 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 4
  %39 = load i32, i32* @io_pkt_drop, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* @io_pkt_drop, align 4
  br label %41

41:                                               ; preds = %21, %18
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %41
  %45 = load i32, i32* %8, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %91

47:                                               ; preds = %44
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %91

50:                                               ; preds = %47, %41
  %51 = load i32, i32* %9, align 4
  %52 = load %struct.fq_pie_si*, %struct.fq_pie_si** %6, align 8
  %53 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %52, i32 0, i32 1
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = add nsw i32 %56, %51
  store i32 %57, i32* %55, align 4
  %58 = load i32, i32* %7, align 4
  %59 = load %struct.fq_pie_si*, %struct.fq_pie_si** %6, align 8
  %60 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = add nsw i32 %63, %58
  store i32 %64, i32* %62, align 4
  %65 = load i32, i32* %9, align 4
  %66 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %5, align 8
  %67 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, %65
  store i32 %70, i32* %68, align 4
  %71 = load i32, i32* %7, align 4
  %72 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %5, align 8
  %73 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = add nsw i32 %75, %71
  store i32 %76, i32* %74, align 4
  %77 = load i32, i32* %9, align 4
  %78 = load %struct.fq_pie_si*, %struct.fq_pie_si** %6, align 8
  %79 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = add nsw i32 %82, %77
  store i32 %83, i32* %81, align 4
  %84 = load i32, i32* %7, align 4
  %85 = load %struct.fq_pie_si*, %struct.fq_pie_si** %6, align 8
  %86 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = add nsw i32 %89, %84
  store i32 %90, i32* %88, align 4
  br label %91

91:                                               ; preds = %50, %47, %44
  %92 = load i32, i32* %9, align 4
  %93 = icmp sgt i32 %92, 0
  br i1 %93, label %94, label %132

94:                                               ; preds = %91
  %95 = load i32, i32* %7, align 4
  %96 = load %struct.fq_pie_si*, %struct.fq_pie_si** %6, align 8
  %97 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 2
  %100 = load i32, i32* %99, align 4
  %101 = add nsw i32 %100, %95
  store i32 %101, i32* %99, align 4
  %102 = load %struct.fq_pie_si*, %struct.fq_pie_si** %6, align 8
  %103 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = add nsw i32 %106, 1
  store i32 %107, i32* %105, align 4
  %108 = load i32, i32* %7, align 4
  %109 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %5, align 8
  %110 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %109, i32 0, i32 0
  %111 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %112, %108
  store i32 %113, i32* %111, align 4
  %114 = load %struct.fq_pie_flow*, %struct.fq_pie_flow** %5, align 8
  %115 = getelementptr inbounds %struct.fq_pie_flow, %struct.fq_pie_flow* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 3
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  store i32 %118, i32* %116, align 4
  %119 = load i32, i32* %7, align 4
  %120 = load %struct.fq_pie_si*, %struct.fq_pie_si** %6, align 8
  %121 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = add nsw i32 %124, %119
  store i32 %125, i32* %123, align 4
  %126 = load %struct.fq_pie_si*, %struct.fq_pie_si** %6, align 8
  %127 = getelementptr inbounds %struct.fq_pie_si, %struct.fq_pie_si* %126, i32 0, i32 0
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %128, i32 0, i32 3
  %130 = load i32, i32* %129, align 4
  %131 = add nsw i32 %130, 1
  store i32 %131, i32* %129, align 4
  br label %132

132:                                              ; preds = %94, %91
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
