; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_isc_rxd_refill.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_isc_rxd_refill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i64*, i64, i32* }
%struct.mgb_softc = type { %struct.mgb_ring_data, i32 }
%struct.mgb_ring_data = type { %struct.mgb_ring_desc* }
%struct.mgb_ring_desc = type { i8*, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i8*, i8* }

@.str = private unnamed_addr constant [32 x i8] c"tried to refill RX Channel %d.\0A\00", align 1
@MGB_DESC_CTL_OWN = common dso_local global i32 0, align 4
@MGB_DESC_CTL_BUFLEN_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.TYPE_5__*)* @mgb_isc_rxd_refill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @mgb_isc_rxd_refill(i8* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.mgb_softc*, align 8
  %7 = alloca %struct.mgb_ring_data*, align 8
  %8 = alloca %struct.mgb_ring_desc*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %4, align 8
  %14 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  store i32 %16, i32* %12, align 4
  %17 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %13, align 4
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 2
  %22 = load i64*, i64** %21, align 8
  store i64* %22, i64** %10, align 8
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 4
  %25 = load i32*, i32** %24, align 8
  store i32* %25, i32** %9, align 8
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 3
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %28, 0
  %30 = zext i1 %29 to i32
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i8*
  %35 = call i32 @KASSERT(i32 %30, i8* %34)
  %36 = load i8*, i8** %3, align 8
  %37 = bitcast i8* %36 to %struct.mgb_softc*
  store %struct.mgb_softc* %37, %struct.mgb_softc** %6, align 8
  %38 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %39 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @iflib_get_softc_ctx(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.mgb_softc*, %struct.mgb_softc** %6, align 8
  %43 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %42, i32 0, i32 0
  store %struct.mgb_ring_data* %43, %struct.mgb_ring_data** %7, align 8
  br label %44

44:                                               ; preds = %47, %2
  %45 = load i32, i32* %12, align 4
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %89

47:                                               ; preds = %44
  %48 = load i64*, i64** %10, align 8
  %49 = load i32, i32* %12, align 4
  %50 = add nsw i32 %49, -1
  store i32 %50, i32* %12, align 4
  %51 = sext i32 %50 to i64
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  %53 = load i64, i64* %52, align 8
  store i64 %53, i64* %11, align 8
  %54 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %7, align 8
  %55 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %54, i32 0, i32 0
  %56 = load %struct.mgb_ring_desc*, %struct.mgb_ring_desc** %55, align 8
  %57 = load i64, i64* %11, align 8
  %58 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %56, i64 %57
  store %struct.mgb_ring_desc* %58, %struct.mgb_ring_desc** %8, align 8
  %59 = load %struct.mgb_ring_desc*, %struct.mgb_ring_desc** %8, align 8
  %60 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %59, i32 0, i32 2
  store i64 0, i64* %60, align 8
  %61 = load i32*, i32** %9, align 8
  %62 = load i32, i32* %12, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %61, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @CSR_TRANSLATE_ADDR_LOW32(i32 %65)
  %67 = call i8* @htole32(i32 %66)
  %68 = load %struct.mgb_ring_desc*, %struct.mgb_ring_desc** %8, align 8
  %69 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %68, i32 0, i32 1
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 1
  store i8* %67, i8** %70, align 8
  %71 = load i32*, i32** %9, align 8
  %72 = load i32, i32* %12, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @CSR_TRANSLATE_ADDR_HIGH32(i32 %75)
  %77 = call i8* @htole32(i32 %76)
  %78 = load %struct.mgb_ring_desc*, %struct.mgb_ring_desc** %8, align 8
  %79 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  store i8* %77, i8** %80, align 8
  %81 = load i32, i32* @MGB_DESC_CTL_OWN, align 4
  %82 = load i32, i32* %13, align 4
  %83 = load i32, i32* @MGB_DESC_CTL_BUFLEN_MASK, align 4
  %84 = and i32 %82, %83
  %85 = or i32 %81, %84
  %86 = call i8* @htole32(i32 %85)
  %87 = load %struct.mgb_ring_desc*, %struct.mgb_ring_desc** %8, align 8
  %88 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %87, i32 0, i32 0
  store i8* %86, i8** %88, align 8
  br label %44

89:                                               ; preds = %44
  ret void
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @iflib_get_softc_ctx(i32) #1

declare dso_local i8* @htole32(i32) #1

declare dso_local i32 @CSR_TRANSLATE_ADDR_LOW32(i32) #1

declare dso_local i32 @CSR_TRANSLATE_ADDR_HIGH32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
