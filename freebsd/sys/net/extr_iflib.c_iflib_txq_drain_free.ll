; ModuleID = '/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_txq_drain_free.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/net/extr_iflib.c_iflib_txq_drain_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ifmp_ring = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.mbuf = type { i32 }

@IFLIB_QUEUE_IDLE = common dso_local global i32 0, align 4
@tx_frees = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ifmp_ring*, i32, i32)* @iflib_txq_drain_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iflib_txq_drain_free(%struct.ifmp_ring* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.ifmp_ring*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.mbuf**, align 8
  %10 = alloca %struct.TYPE_4__*, align 8
  store %struct.ifmp_ring* %0, %struct.ifmp_ring** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %11 = load %struct.ifmp_ring*, %struct.ifmp_ring** %4, align 8
  %12 = getelementptr inbounds %struct.ifmp_ring, %struct.ifmp_ring* %11, i32 0, i32 1
  %13 = load %struct.TYPE_4__*, %struct.TYPE_4__** %12, align 8
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  %14 = load i32, i32* @IFLIB_QUEUE_IDLE, align 4
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  store i32 %14, i32* %16, align 4
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %18 = call i32 @CALLOUT_LOCK(%struct.TYPE_4__* %17)
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i32 @callout_stop(i32* %20)
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %23 = call i32 @CALLOUT_UNLOCK(%struct.TYPE_4__* %22)
  %24 = load i32, i32* %6, align 4
  %25 = load i32, i32* %5, align 4
  %26 = load %struct.ifmp_ring*, %struct.ifmp_ring** %4, align 8
  %27 = getelementptr inbounds %struct.ifmp_ring, %struct.ifmp_ring* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = call i32 @IDXDIFF(i32 %24, i32 %25, i32 %28)
  store i32 %29, i32* %8, align 4
  store i32 0, i32* %7, align 4
  br label %30

30:                                               ; preds = %57, %3
  %31 = load i32, i32* %7, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp slt i32 %31, %32
  br i1 %33, label %34, label %60

34:                                               ; preds = %30
  %35 = load %struct.ifmp_ring*, %struct.ifmp_ring** %4, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %7, align 4
  %40 = sub nsw i32 %38, %39
  %41 = call %struct.mbuf** @_ring_peek_one(%struct.ifmp_ring* %35, i32 %36, i32 %37, i32 %40)
  store %struct.mbuf** %41, %struct.mbuf*** %9, align 8
  %42 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %43 = load %struct.mbuf*, %struct.mbuf** %42, align 8
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %45 = bitcast %struct.TYPE_4__* %44 to %struct.mbuf*
  %46 = icmp eq %struct.mbuf* %43, %45
  %47 = zext i1 %46 to i32
  %48 = call i64 @__predict_false(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %34
  br label %57

51:                                               ; preds = %34
  %52 = load %struct.mbuf**, %struct.mbuf*** %9, align 8
  %53 = load %struct.mbuf*, %struct.mbuf** %52, align 8
  %54 = call i32 @m_freem(%struct.mbuf* %53)
  %55 = load i32, i32* @tx_frees, align 4
  %56 = call i32 @DBG_COUNTER_INC(i32 %55)
  br label %57

57:                                               ; preds = %51, %50
  %58 = load i32, i32* %7, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %7, align 4
  br label %30

60:                                               ; preds = %30
  %61 = load %struct.ifmp_ring*, %struct.ifmp_ring** %4, align 8
  %62 = call i64 @ifmp_ring_is_stalled(%struct.ifmp_ring* %61)
  %63 = icmp eq i64 %62, 0
  %64 = zext i1 %63 to i32
  %65 = call i32 @MPASS(i32 %64)
  %66 = load i32, i32* %8, align 4
  ret i32 %66
}

declare dso_local i32 @CALLOUT_LOCK(%struct.TYPE_4__*) #1

declare dso_local i32 @callout_stop(i32*) #1

declare dso_local i32 @CALLOUT_UNLOCK(%struct.TYPE_4__*) #1

declare dso_local i32 @IDXDIFF(i32, i32, i32) #1

declare dso_local %struct.mbuf** @_ring_peek_one(%struct.ifmp_ring*, i32, i32, i32) #1

declare dso_local i64 @__predict_false(i32) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @DBG_COUNTER_INC(i32) #1

declare dso_local i32 @MPASS(i32) #1

declare dso_local i64 @ifmp_ring_is_stalled(%struct.ifmp_ring*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
