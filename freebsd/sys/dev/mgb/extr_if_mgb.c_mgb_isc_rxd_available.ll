; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_isc_rxd_available.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_isc_rxd_available.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { i32, %struct.mgb_ring_data }
%struct.mgb_ring_data = type { i64* }

@.str = private unnamed_addr constant [47 x i8] c"tried to check availability in RX Channel %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i64, i64)* @mgb_isc_rxd_available to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_isc_rxd_available(i8* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.mgb_softc*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.mgb_ring_data*, align 8
  %12 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %12, align 4
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.mgb_softc*
  store %struct.mgb_softc* %14, %struct.mgb_softc** %9, align 8
  %15 = load i64, i64* %6, align 8
  %16 = icmp eq i64 %15, 0
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %6, align 8
  %19 = inttoptr i64 %18 to i8*
  %20 = call i32 @KASSERT(i32 %17, i8* %19)
  %21 = load %struct.mgb_softc*, %struct.mgb_softc** %9, align 8
  %22 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %21, i32 0, i32 1
  store %struct.mgb_ring_data* %22, %struct.mgb_ring_data** %11, align 8
  %23 = load %struct.mgb_softc*, %struct.mgb_softc** %9, align 8
  %24 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @iflib_get_softc_ctx(i32 %25)
  store i32 %26, i32* %10, align 4
  br label %27

27:                                               ; preds = %43, %4
  %28 = load i64, i64* %7, align 8
  %29 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %11, align 8
  %30 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %29, i32 0, i32 0
  %31 = load i64*, i64** %30, align 8
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %28, %32
  br i1 %33, label %34, label %46

34:                                               ; preds = %27
  %35 = load i32, i32* %12, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = sext i32 %37 to i64
  %39 = load i64, i64* %8, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  br label %46

42:                                               ; preds = %34
  br label %43

43:                                               ; preds = %42
  %44 = load i64, i64* %7, align 8
  %45 = call i64 @MGB_NEXT_RING_IDX(i64 %44)
  store i64 %45, i64* %7, align 8
  br label %27

46:                                               ; preds = %41, %27
  %47 = load i32, i32* %12, align 4
  ret i32 %47
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @iflib_get_softc_ctx(i32) #1

declare dso_local i64 @MGB_NEXT_RING_IDX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
