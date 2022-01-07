; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_if_transmit.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_if_transmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mbuf = type { %struct.mbuf* }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i64, i32 }

@IFF_DRV_RUNNING = common dso_local global i32 0, align 4
@tx_frees = common dso_local global i32 0, align 4
@ENETDOWN = common dso_local global i32 0, align 4
@tx_seen = common dso_local global i32 0, align 4
@TX_BATCH_SIZE = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@M_IFLIB = common dso_local global i32 0, align 4
@M_NOWAIT = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@count = common dso_local global i32 0, align 4
@i = common dso_local global i64 0, align 8
@marr = common dso_local global %struct.mbuf** null, align 8
@mp = common dso_local global %struct.mbuf** null, align 8
@next = common dso_local global %struct.mbuf* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_11__*, %struct.mbuf*)* @iflib_if_transmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iflib_if_transmit(%struct.TYPE_11__* %0, %struct.mbuf* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.mbuf*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %4, align 8
  store %struct.mbuf* %1, %struct.mbuf** %5, align 8
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %12 = call %struct.TYPE_12__* @if_getsoftc(%struct.TYPE_11__* %11)
  store %struct.TYPE_12__* %12, %struct.TYPE_12__** %6, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %10, align 4
  %16 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @IFF_DRV_RUNNING, align 4
  %20 = and i32 %18, %19
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %2
  %23 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %24 = call i32 @LINK_ACTIVE(%struct.TYPE_12__* %23)
  %25 = icmp ne i32 %24, 0
  %26 = xor i1 %25, true
  br label %27

27:                                               ; preds = %22, %2
  %28 = phi i1 [ true, %2 ], [ %26, %22 ]
  %29 = zext i1 %28 to i32
  %30 = call i64 @__predict_false(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load i32, i32* @tx_frees, align 4
  %34 = call i32 @DBG_COUNTER_INC(i32 %33)
  %35 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %36 = call i32 @m_freem(%struct.mbuf* %35)
  %37 = load i32, i32* @ENETDOWN, align 4
  store i32 %37, i32* %3, align 4
  br label %105

38:                                               ; preds = %27
  %39 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %40 = getelementptr inbounds %struct.mbuf, %struct.mbuf* %39, i32 0, i32 0
  %41 = load %struct.mbuf*, %struct.mbuf** %40, align 8
  %42 = icmp eq %struct.mbuf* %41, null
  %43 = zext i1 %42 to i32
  %44 = call i32 @MPASS(i32 %43)
  store i32 0, i32* %9, align 4
  %45 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %46 = call i32 @NTXQSETS(%struct.TYPE_12__* %45)
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %61

48:                                               ; preds = %38
  %49 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %50 = call i64 @M_HASHTYPE_GET(%struct.mbuf* %49)
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %48
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %53, i32 0, i32 1
  %55 = call i32 @ALTQ_IS_ENABLED(i32* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %61, label %57

57:                                               ; preds = %52
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %60 = call i32 @QIDX(%struct.TYPE_12__* %58, %struct.mbuf* %59)
  store i32 %60, i32* %9, align 4
  br label %61

61:                                               ; preds = %57, %52, %48, %38
  %62 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %63 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = load i32, i32* %9, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i64 %66
  store %struct.TYPE_10__* %67, %struct.TYPE_10__** %7, align 8
  %68 = load i32, i32* @tx_seen, align 4
  %69 = call i32 @DBG_COUNTER_INC(i32 %68)
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = bitcast %struct.mbuf** %5 to i8**
  %74 = load i32, i32* @TX_BATCH_SIZE, align 4
  %75 = load i32, i32* %10, align 4
  %76 = call i32 @ifmp_ring_enqueue(i32 %72, i8** %73, i32 1, i32 %74, i32 %75)
  store i32 %76, i32* %8, align 4
  %77 = load i32, i32* %10, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %61
  %80 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %80, i32 0, i32 2
  %82 = call i32 @GROUPTASK_ENQUEUE(i32* %81)
  br label %83

83:                                               ; preds = %79, %61
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %103

86:                                               ; preds = %83
  %87 = load i32, i32* %10, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %93, label %89

89:                                               ; preds = %86
  %90 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %91 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %90, i32 0, i32 2
  %92 = call i32 @GROUPTASK_ENQUEUE(i32* %91)
  br label %93

93:                                               ; preds = %89, %86
  %94 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = load i32, i32* @TX_BATCH_SIZE, align 4
  %98 = call i32 @ifmp_ring_check_drainage(i32 %96, i32 %97)
  %99 = load %struct.mbuf*, %struct.mbuf** %5, align 8
  %100 = call i32 @m_freem(%struct.mbuf* %99)
  %101 = load i32, i32* @tx_frees, align 4
  %102 = call i32 @DBG_COUNTER_INC(i32 %101)
  br label %103

103:                                              ; preds = %93, %83
  %104 = load i32, i32* %8, align 4
  store i32 %104, i32* %3, align 4
  br label %105

105:                                              ; preds = %103, %32
  %106 = load i32, i32* %3, align 4
  ret i32 %106
}

declare dso_local %struct.TYPE_12__* @if_getsoftc(%struct.TYPE_11__*) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @LINK_ACTIVE(%struct.TYPE_12__*) #1

declare dso_local i32 @DBG_COUNTER_INC(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i32 @NTXQSETS(%struct.TYPE_12__*) #1

declare dso_local i64 @M_HASHTYPE_GET(%struct.mbuf*) #1

declare dso_local i32 @ALTQ_IS_ENABLED(i32*) #1

declare dso_local i32 @QIDX(%struct.TYPE_12__*, %struct.mbuf*) #1

declare dso_local i32 @ifmp_ring_enqueue(i32, i8**, i32, i32, i32) #1

declare dso_local i32 @GROUPTASK_ENQUEUE(i32*) #1

declare dso_local i32 @ifmp_ring_check_drainage(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
