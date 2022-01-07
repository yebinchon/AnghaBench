; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_eq_ring.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_init_eq_ring.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.TYPE_10__*, i32*, i32, i64, %struct.TYPE_8__, %union.event_ring_elem* }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32* }
%struct.TYPE_8__ = type { i64 }
%union.event_ring_elem = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i8*, i8* }

@NUM_EQ_PAGES = common dso_local global i32 0, align 4
@EQ_DESC_CNT_PAGE = common dso_local global i32 0, align 4
@BCM_PAGE_SIZE = common dso_local global i32 0, align 4
@NUM_EQ_DESC = common dso_local global i32 0, align 4
@HC_SP_INDEX_EQ_CONS = common dso_local global i64 0, align 8
@MAX_SP_DESC_CNT = common dso_local global i64 0, align 8
@MAX_SPQ_PENDING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bxe_softc*)* @bxe_init_eq_ring to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @bxe_init_eq_ring(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca %union.event_ring_elem*, align 8
  %4 = alloca i32, align 4
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  store i32 1, i32* %4, align 4
  br label %5

5:                                                ; preds = %53, %1
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @NUM_EQ_PAGES, align 4
  %8 = icmp sle i32 %6, %7
  br i1 %8, label %9, label %56

9:                                                ; preds = %5
  %10 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %11 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %10, i32 0, i32 6
  %12 = load %union.event_ring_elem*, %union.event_ring_elem** %11, align 8
  %13 = load i32, i32* @EQ_DESC_CNT_PAGE, align 4
  %14 = load i32, i32* %4, align 4
  %15 = mul nsw i32 %13, %14
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds %union.event_ring_elem, %union.event_ring_elem* %12, i64 %17
  store %union.event_ring_elem* %18, %union.event_ring_elem** %3, align 8
  %19 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %20 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %19, i32 0, i32 5
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @NUM_EQ_PAGES, align 4
  %26 = srem i32 %24, %25
  %27 = mul nsw i32 %23, %26
  %28 = sext i32 %27 to i64
  %29 = add nsw i64 %22, %28
  %30 = call i32 @U64_HI(i64 %29)
  %31 = call i8* @htole32(i32 %30)
  %32 = load %union.event_ring_elem*, %union.event_ring_elem** %3, align 8
  %33 = bitcast %union.event_ring_elem* %32 to %struct.TYPE_7__*
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 1
  store i8* %31, i8** %35, align 8
  %36 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %37 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %36, i32 0, i32 5
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* @BCM_PAGE_SIZE, align 4
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @NUM_EQ_PAGES, align 4
  %43 = srem i32 %41, %42
  %44 = mul nsw i32 %40, %43
  %45 = sext i32 %44 to i64
  %46 = add nsw i64 %39, %45
  %47 = call i32 @U64_LO(i64 %46)
  %48 = call i8* @htole32(i32 %47)
  %49 = load %union.event_ring_elem*, %union.event_ring_elem** %3, align 8
  %50 = bitcast %union.event_ring_elem* %49 to %struct.TYPE_7__*
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  store i8* %48, i8** %52, align 8
  br label %53

53:                                               ; preds = %9
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %5

56:                                               ; preds = %5
  %57 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %58 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %57, i32 0, i32 4
  store i64 0, i64* %58, align 8
  %59 = load i32, i32* @NUM_EQ_DESC, align 4
  %60 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %61 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %60, i32 0, i32 3
  store i32 %59, i32* %61, align 8
  %62 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %63 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %62, i32 0, i32 1
  %64 = load %struct.TYPE_10__*, %struct.TYPE_10__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  %68 = load i64, i64* @HC_SP_INDEX_EQ_CONS, align 8
  %69 = getelementptr inbounds i32, i32* %67, i64 %68
  %70 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %71 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %70, i32 0, i32 2
  store i32* %69, i32** %71, align 8
  %72 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %73 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %72, i32 0, i32 0
  %74 = load i64, i64* @MAX_SP_DESC_CNT, align 8
  %75 = load i64, i64* @MAX_SPQ_PENDING, align 8
  %76 = sub nsw i64 %74, %75
  %77 = load i32, i32* @NUM_EQ_DESC, align 4
  %78 = call i64 @min(i64 %76, i32 %77)
  %79 = sub nsw i64 %78, 1
  %80 = call i32 @atomic_store_rel_long(i32* %73, i64 %79)
  ret void
}

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @U64_HI(i64) #1

declare dso_local i32 @U64_LO(i64) #1

declare dso_local i32 @atomic_store_rel_long(i32*, i64) #1

declare dso_local i64 @min(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
