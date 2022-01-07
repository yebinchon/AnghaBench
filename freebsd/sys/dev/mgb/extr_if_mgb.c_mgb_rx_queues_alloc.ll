; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_rx_queues_alloc.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_rx_queues_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { %struct.mgb_ring_data }
%struct.mgb_ring_data = type { i8*, i32*, i8*, %struct.mgb_ring_desc* }
%struct.mgb_ring_desc = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c"nrxqsets = %d\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"nrxqs = %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i8**, i32, i32)* @mgb_rx_queues_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_rx_queues_alloc(i32 %0, i64* %1, i8** %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.mgb_softc*, align 8
  %12 = alloca %struct.mgb_ring_data*, align 8
  %13 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i64* %1, i64** %7, align 8
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.mgb_softc* @iflib_get_softc(i32 %14)
  store %struct.mgb_softc* %15, %struct.mgb_softc** %11, align 8
  %16 = load i32, i32* %10, align 4
  %17 = icmp eq i32 %16, 1
  %18 = zext i1 %17 to i32
  %19 = load i32, i32* %10, align 4
  %20 = sext i32 %19 to i64
  %21 = inttoptr i64 %20 to i8*
  %22 = call i32 @KASSERT(i32 %18, i8* %21)
  %23 = load %struct.mgb_softc*, %struct.mgb_softc** %11, align 8
  %24 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %23, i32 0, i32 0
  store %struct.mgb_ring_data* %24, %struct.mgb_ring_data** %12, align 8
  store i32 0, i32* %13, align 4
  br label %25

25:                                               ; preds = %79, %5
  %26 = load i32, i32* %13, align 4
  %27 = load i32, i32* %10, align 4
  %28 = icmp slt i32 %26, %27
  br i1 %28, label %29, label %82

29:                                               ; preds = %25
  %30 = load i32, i32* %9, align 4
  %31 = icmp eq i32 %30, 2
  %32 = zext i1 %31 to i32
  %33 = load i32, i32* %9, align 4
  %34 = sext i32 %33 to i64
  %35 = inttoptr i64 %34 to i8*
  %36 = call i32 @KASSERT(i32 %32, i8* %35)
  %37 = load i64*, i64** %7, align 8
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = mul nsw i32 %38, %39
  %41 = add nsw i32 %40, 0
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds i64, i64* %37, i64 %42
  %44 = load i64, i64* %43, align 8
  %45 = inttoptr i64 %44 to %struct.mgb_ring_desc*
  %46 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %12, align 8
  %47 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %46, i32 0, i32 3
  store %struct.mgb_ring_desc* %45, %struct.mgb_ring_desc** %47, align 8
  %48 = load i8**, i8*** %8, align 8
  %49 = load i32, i32* %13, align 4
  %50 = load i32, i32* %9, align 4
  %51 = mul nsw i32 %49, %50
  %52 = add nsw i32 %51, 0
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i8*, i8** %48, i64 %53
  %55 = load i8*, i8** %54, align 8
  %56 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %12, align 8
  %57 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %56, i32 0, i32 2
  store i8* %55, i8** %57, align 8
  %58 = load i64*, i64** %7, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load i32, i32* %9, align 4
  %61 = mul nsw i32 %59, %60
  %62 = add nsw i32 %61, 1
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %58, i64 %63
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to i32*
  %67 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %12, align 8
  %68 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %67, i32 0, i32 1
  store i32* %66, i32** %68, align 8
  %69 = load i8**, i8*** %8, align 8
  %70 = load i32, i32* %13, align 4
  %71 = load i32, i32* %9, align 4
  %72 = mul nsw i32 %70, %71
  %73 = add nsw i32 %72, 1
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds i8*, i8** %69, i64 %74
  %76 = load i8*, i8** %75, align 8
  %77 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %12, align 8
  %78 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %77, i32 0, i32 0
  store i8* %76, i8** %78, align 8
  br label %79

79:                                               ; preds = %29
  %80 = load i32, i32* %13, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %13, align 4
  br label %25

82:                                               ; preds = %25
  ret i32 0
}

declare dso_local %struct.mgb_softc* @iflib_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
