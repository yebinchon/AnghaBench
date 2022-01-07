; ModuleID = '/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_queue_mbuf.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/netinet/extr_tcp_lro.c_tcp_lro_queue_mbuf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lro_ctrl = type { i64, i64, %struct.TYPE_5__*, %struct.TYPE_6__* }
%struct.TYPE_5__ = type { i32, %struct.mbuf* }
%struct.TYPE_6__ = type { i32, i32 (%struct.TYPE_6__*, %struct.mbuf*)* }
%struct.mbuf = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64, i64, i64 }
%struct.timespec = type { i32, i64 }

@IFCAP_LRO = common dso_local global i32 0, align 4
@M_TSTMP = common dso_local global i32 0, align 4
@M_TSTMP_LRO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tcp_lro_queue_mbuf(%struct.lro_ctrl* %0, %struct.mbuf* %1) #0 {
  %3 = alloca %struct.lro_ctrl*, align 8
  %4 = alloca %struct.mbuf*, align 8
  %5 = alloca %struct.timespec, align 8
  store %struct.lro_ctrl* %0, %struct.lro_ctrl** %3, align 8
  store %struct.mbuf* %1, %struct.mbuf** %4, align 8
  %6 = load %struct.lro_ctrl*, %struct.lro_ctrl** %3, align 8
  %7 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %6, i32 0, i32 3
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = icmp eq %struct.TYPE_6__* %8, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %2
  %11 = load %struct.lro_ctrl*, %struct.lro_ctrl** %3, align 8
  %12 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %11, i32 0, i32 2
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %12, align 8
  %14 = icmp eq %struct.TYPE_5__* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %10
  %16 = load %struct.lro_ctrl*, %struct.lro_ctrl** %3, align 8
  %17 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br label %20

20:                                               ; preds = %15, %10, %2
  %21 = phi i1 [ true, %10 ], [ true, %2 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i64 @__predict_false(i32 %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %20
  %26 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %27 = call i32 @m_freem(%struct.mbuf* %26)
  br label %131

28:                                               ; preds = %20
  %29 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %30 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %28
  %35 = load %struct.lro_ctrl*, %struct.lro_ctrl** %3, align 8
  %36 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %35, i32 0, i32 3
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @IFCAP_LRO, align 4
  %41 = and i32 %39, %40
  %42 = icmp eq i32 %41, 0
  br label %43

43:                                               ; preds = %34, %28
  %44 = phi i1 [ true, %28 ], [ %42, %34 ]
  %45 = zext i1 %44 to i32
  %46 = call i64 @__predict_false(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %43
  %49 = load %struct.lro_ctrl*, %struct.lro_ctrl** %3, align 8
  %50 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %49, i32 0, i32 3
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32 (%struct.TYPE_6__*, %struct.mbuf*)*, i32 (%struct.TYPE_6__*, %struct.mbuf*)** %52, align 8
  %54 = load %struct.lro_ctrl*, %struct.lro_ctrl** %3, align 8
  %55 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %54, i32 0, i32 3
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %55, align 8
  %57 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %58 = call i32 %53(%struct.TYPE_6__* %56, %struct.mbuf* %57)
  br label %131

59:                                               ; preds = %43
  %60 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %61 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @M_TSTMP, align 4
  %64 = and i32 %62, %63
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %83

66:                                               ; preds = %59
  %67 = call i32 @nanouptime(%struct.timespec* %5)
  %68 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 %69, 1000000000
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %71, %73
  %75 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %76 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %75, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 2
  store i64 %74, i64* %77, align 8
  %78 = load i32, i32* @M_TSTMP_LRO, align 4
  %79 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %80 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %66, %59
  %84 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %85 = call i64 @M_HASHTYPE_GET(%struct.mbuf* %84)
  %86 = trunc i64 %85 to i32
  %87 = shl i32 %86, 56
  %88 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %89 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = trunc i64 %91 to i32
  %93 = shl i32 %92, 24
  %94 = or i32 %87, %93
  %95 = load %struct.lro_ctrl*, %struct.lro_ctrl** %3, align 8
  %96 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %95, i32 0, i32 1
  %97 = load i64, i64* %96, align 8
  %98 = trunc i64 %97 to i32
  %99 = or i32 %94, %98
  %100 = load %struct.lro_ctrl*, %struct.lro_ctrl** %3, align 8
  %101 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %100, i32 0, i32 2
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %101, align 8
  %103 = load %struct.lro_ctrl*, %struct.lro_ctrl** %3, align 8
  %104 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %105
  %107 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %106, i32 0, i32 0
  store i32 %99, i32* %107, align 8
  %108 = load %struct.mbuf*, %struct.mbuf** %4, align 8
  %109 = load %struct.lro_ctrl*, %struct.lro_ctrl** %3, align 8
  %110 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %109, i32 0, i32 2
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %110, align 8
  %112 = load %struct.lro_ctrl*, %struct.lro_ctrl** %3, align 8
  %113 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %112, i32 0, i32 1
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %111, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 1
  store %struct.mbuf* %108, %struct.mbuf** %116, align 8
  %117 = load %struct.lro_ctrl*, %struct.lro_ctrl** %3, align 8
  %118 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = add i64 %119, 1
  store i64 %120, i64* %118, align 8
  %121 = load %struct.lro_ctrl*, %struct.lro_ctrl** %3, align 8
  %122 = getelementptr inbounds %struct.lro_ctrl, %struct.lro_ctrl* %121, i32 0, i32 0
  %123 = load i64, i64* %122, align 8
  %124 = icmp eq i64 %120, %123
  %125 = zext i1 %124 to i32
  %126 = call i64 @__predict_false(i32 %125)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %83
  %129 = load %struct.lro_ctrl*, %struct.lro_ctrl** %3, align 8
  %130 = call i32 @tcp_lro_flush_all(%struct.lro_ctrl* %129)
  br label %131

131:                                              ; preds = %25, %48, %128, %83
  ret void
}

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @nanouptime(%struct.timespec*) #1

declare dso_local i64 @M_HASHTYPE_GET(%struct.mbuf*) #1

declare dso_local i32 @tcp_lro_flush_all(%struct.lro_ctrl*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
