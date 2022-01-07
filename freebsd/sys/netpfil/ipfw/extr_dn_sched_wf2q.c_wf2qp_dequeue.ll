; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_wf2q.c_wf2qp_dequeue.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netpfil/ipfw/extr_dn_sched_wf2q.c_wf2qp_dequeue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64 }
%struct.dn_sch_inst = type { i32 }
%struct.wf2qp_si = type { i32, i64, %struct.dn_heap, i64, %struct.dn_heap, %struct.dn_heap }
%struct.dn_heap = type { i64 }
%struct.dn_queue = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.wf2qp_queue = type { i32, i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.dn_queue* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.mbuf* (%struct.dn_sch_inst*)* @wf2qp_dequeue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.mbuf* @wf2qp_dequeue(%struct.dn_sch_inst* %0) #0 {
  %2 = alloca %struct.mbuf*, align 8
  %3 = alloca %struct.dn_sch_inst*, align 8
  %4 = alloca %struct.wf2qp_si*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.dn_queue*, align 8
  %7 = alloca %struct.dn_heap*, align 8
  %8 = alloca %struct.dn_heap*, align 8
  %9 = alloca %struct.wf2qp_queue*, align 8
  %10 = alloca i32, align 4
  store %struct.dn_sch_inst* %0, %struct.dn_sch_inst** %3, align 8
  %11 = load %struct.dn_sch_inst*, %struct.dn_sch_inst** %3, align 8
  %12 = getelementptr inbounds %struct.dn_sch_inst, %struct.dn_sch_inst* %11, i64 1
  %13 = bitcast %struct.dn_sch_inst* %12 to %struct.wf2qp_si*
  store %struct.wf2qp_si* %13, %struct.wf2qp_si** %4, align 8
  %14 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %15 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %14, i32 0, i32 5
  store %struct.dn_heap* %15, %struct.dn_heap** %7, align 8
  %16 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %17 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %16, i32 0, i32 4
  store %struct.dn_heap* %17, %struct.dn_heap** %8, align 8
  %18 = load %struct.dn_heap*, %struct.dn_heap** %7, align 8
  %19 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %34

22:                                               ; preds = %1
  %23 = load %struct.dn_heap*, %struct.dn_heap** %8, align 8
  %24 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp eq i64 %25, 0
  br i1 %26, label %27, label %34

27:                                               ; preds = %22
  %28 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %29 = call i32 @idle_check(%struct.wf2qp_si* %28, i32 2147483647, i32 1)
  %30 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %31 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %30, i32 0, i32 1
  store i64 0, i64* %31, align 8
  %32 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %33 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %32, i32 0, i32 3
  store i64 0, i64* %33, align 8
  store %struct.mbuf* null, %struct.mbuf** %2, align 8
  br label %181

34:                                               ; preds = %22, %1
  %35 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %36 = call i32 @idle_check(%struct.wf2qp_si* %35, i32 1, i32 0)
  store %struct.mbuf* null, %struct.mbuf** %5, align 8
  br label %37

37:                                               ; preds = %178, %34
  %38 = load %struct.dn_heap*, %struct.dn_heap** %7, align 8
  %39 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp eq i64 %40, 0
  br i1 %41, label %42, label %58

42:                                               ; preds = %37
  %43 = load %struct.dn_heap*, %struct.dn_heap** %8, align 8
  %44 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp sgt i64 %45, 0
  br i1 %46, label %47, label %58

47:                                               ; preds = %42
  %48 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %49 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.dn_heap*, %struct.dn_heap** %8, align 8
  %52 = call %struct.TYPE_10__* @HEAP_TOP(%struct.dn_heap* %51)
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i64 @MAX64(i64 %50, i32 %54)
  %56 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %57 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  br label %58

58:                                               ; preds = %47, %42, %37
  br label %59

59:                                               ; preds = %76, %58
  %60 = load %struct.dn_heap*, %struct.dn_heap** %8, align 8
  %61 = getelementptr inbounds %struct.dn_heap, %struct.dn_heap* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp sgt i64 %62, 0
  br i1 %63, label %64, label %74

64:                                               ; preds = %59
  %65 = load %struct.dn_heap*, %struct.dn_heap** %8, align 8
  %66 = call %struct.TYPE_10__* @HEAP_TOP(%struct.dn_heap* %65)
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %70 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = call i64 @DN_KEY_LEQ(i32 %68, i64 %71)
  %73 = icmp ne i64 %72, 0
  br label %74

74:                                               ; preds = %64, %59
  %75 = phi i1 [ false, %59 ], [ %73, %64 ]
  br i1 %75, label %76, label %91

76:                                               ; preds = %74
  %77 = load %struct.dn_heap*, %struct.dn_heap** %8, align 8
  %78 = call %struct.TYPE_10__* @HEAP_TOP(%struct.dn_heap* %77)
  %79 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %78, i32 0, i32 1
  %80 = load %struct.dn_queue*, %struct.dn_queue** %79, align 8
  store %struct.dn_queue* %80, %struct.dn_queue** %6, align 8
  %81 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %82 = bitcast %struct.dn_queue* %81 to %struct.wf2qp_queue*
  store %struct.wf2qp_queue* %82, %struct.wf2qp_queue** %9, align 8
  %83 = load %struct.dn_heap*, %struct.dn_heap** %8, align 8
  %84 = call i32 @heap_extract(%struct.dn_heap* %83, i32* null)
  %85 = load %struct.dn_heap*, %struct.dn_heap** %7, align 8
  %86 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %9, align 8
  %87 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %90 = call i32 @heap_insert(%struct.dn_heap* %85, i32 %88, %struct.dn_queue* %89)
  br label %59

91:                                               ; preds = %74
  %92 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %93 = icmp ne %struct.mbuf* %92, null
  br i1 %93, label %94, label %95

94:                                               ; preds = %91
  br label %179

95:                                               ; preds = %91
  %96 = load %struct.dn_heap*, %struct.dn_heap** %7, align 8
  %97 = call %struct.TYPE_10__* @HEAP_TOP(%struct.dn_heap* %96)
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 1
  %99 = load %struct.dn_queue*, %struct.dn_queue** %98, align 8
  store %struct.dn_queue* %99, %struct.dn_queue** %6, align 8
  %100 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %101 = bitcast %struct.dn_queue* %100 to %struct.wf2qp_queue*
  store %struct.wf2qp_queue* %101, %struct.wf2qp_queue** %9, align 8
  %102 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %103 = call %struct.mbuf* @dn_dequeue(%struct.dn_queue* %102)
  store %struct.mbuf* %103, %struct.mbuf** %5, align 8
  %104 = load %struct.dn_heap*, %struct.dn_heap** %7, align 8
  %105 = call i32 @heap_extract(%struct.dn_heap* %104, i32* null)
  %106 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %107 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %107, i32 0, i32 0
  %109 = load i64, i64* %108, align 8
  %110 = trunc i64 %109 to i32
  %111 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %112 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = mul nsw i32 %110, %113
  %115 = sext i32 %114 to i64
  %116 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %117 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, %115
  store i64 %119, i64* %117, align 8
  %120 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %9, align 8
  %121 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %9, align 8
  %124 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %123, i32 0, i32 1
  store i32 %122, i32* %124, align 4
  %125 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %126 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load %struct.TYPE_8__*, %struct.TYPE_8__** %127, align 8
  %129 = icmp eq %struct.TYPE_8__* %128, null
  br i1 %129, label %130, label %138

130:                                              ; preds = %95
  %131 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %132 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %131, i32 0, i32 2
  %133 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %9, align 8
  %134 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %137 = call i32 @heap_insert(%struct.dn_heap* %132, i32 %135, %struct.dn_queue* %136)
  br label %178

138:                                              ; preds = %95
  %139 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %140 = getelementptr inbounds %struct.dn_queue, %struct.dn_queue* %139, i32 0, i32 0
  %141 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  store i32 %145, i32* %10, align 4
  %146 = load i32, i32* %10, align 4
  %147 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %9, align 8
  %148 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 4
  %150 = mul nsw i32 %146, %149
  %151 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %9, align 8
  %152 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = add nsw i32 %153, %150
  store i32 %154, i32* %152, align 4
  %155 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %9, align 8
  %156 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.wf2qp_si*, %struct.wf2qp_si** %4, align 8
  %159 = getelementptr inbounds %struct.wf2qp_si, %struct.wf2qp_si* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = call i64 @DN_KEY_LEQ(i32 %157, i64 %160)
  %162 = icmp ne i64 %161, 0
  br i1 %162, label %163, label %170

163:                                              ; preds = %138
  %164 = load %struct.dn_heap*, %struct.dn_heap** %7, align 8
  %165 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %9, align 8
  %166 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %165, i32 0, i32 0
  %167 = load i32, i32* %166, align 4
  %168 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %169 = call i32 @heap_insert(%struct.dn_heap* %164, i32 %167, %struct.dn_queue* %168)
  br label %177

170:                                              ; preds = %138
  %171 = load %struct.dn_heap*, %struct.dn_heap** %8, align 8
  %172 = load %struct.wf2qp_queue*, %struct.wf2qp_queue** %9, align 8
  %173 = getelementptr inbounds %struct.wf2qp_queue, %struct.wf2qp_queue* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.dn_queue*, %struct.dn_queue** %6, align 8
  %176 = call i32 @heap_insert(%struct.dn_heap* %171, i32 %174, %struct.dn_queue* %175)
  br label %177

177:                                              ; preds = %170, %163
  br label %178

178:                                              ; preds = %177, %130
  br label %37

179:                                              ; preds = %94
  %180 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  store %struct.mbuf* %180, %struct.mbuf** %2, align 8
  br label %181

181:                                              ; preds = %179, %27
  %182 = load %struct.mbuf*, %struct.mbuf** %2, align 8
  ret %struct.mbuf* %182
}

declare dso_local i32 @idle_check(%struct.wf2qp_si*, i32, i32) #1

declare dso_local i64 @MAX64(i64, i32) #1

declare dso_local %struct.TYPE_10__* @HEAP_TOP(%struct.dn_heap*) #1

declare dso_local i64 @DN_KEY_LEQ(i32, i64) #1

declare dso_local i32 @heap_extract(%struct.dn_heap*, i32*) #1

declare dso_local i32 @heap_insert(%struct.dn_heap*, i32, %struct.dn_queue*) #1

declare dso_local %struct.mbuf* @dn_dequeue(%struct.dn_queue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
