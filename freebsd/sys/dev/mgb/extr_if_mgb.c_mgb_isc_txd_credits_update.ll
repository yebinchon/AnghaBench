; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_isc_txd_credits_update.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/mgb/extr_if_mgb.c_mgb_isc_txd_credits_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mgb_softc = type { %struct.mgb_ring_data }
%struct.mgb_ring_data = type { i64*, i64, %struct.mgb_ring_desc* }
%struct.mgb_ring_desc = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"tried to credits_update TX Channel %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, i32)* @mgb_isc_txd_credits_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mgb_isc_txd_credits_update(i8* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mgb_softc*, align 8
  %9 = alloca %struct.mgb_ring_desc*, align 8
  %10 = alloca %struct.mgb_ring_data*, align 8
  %11 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %11, align 4
  %12 = load i64, i64* %6, align 8
  %13 = icmp eq i64 %12, 0
  %14 = zext i1 %13 to i32
  %15 = load i64, i64* %6, align 8
  %16 = inttoptr i64 %15 to i8*
  %17 = call i32 @KASSERT(i32 %14, i8* %16)
  %18 = load i8*, i8** %5, align 8
  %19 = bitcast i8* %18 to %struct.mgb_softc*
  store %struct.mgb_softc* %19, %struct.mgb_softc** %8, align 8
  %20 = load %struct.mgb_softc*, %struct.mgb_softc** %8, align 8
  %21 = getelementptr inbounds %struct.mgb_softc, %struct.mgb_softc* %20, i32 0, i32 0
  store %struct.mgb_ring_data* %21, %struct.mgb_ring_data** %10, align 8
  br label %22

22:                                               ; preds = %35, %3
  %23 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %10, align 8
  %24 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %23, i32 0, i32 0
  %25 = load i64*, i64** %24, align 8
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %10, align 8
  %28 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %26, %29
  br i1 %30, label %31, label %53

31:                                               ; preds = %22
  %32 = load i32, i32* %7, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 1, i32* %4, align 4
  br label %55

35:                                               ; preds = %31
  %36 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %10, align 8
  %37 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %36, i32 0, i32 2
  %38 = load %struct.mgb_ring_desc*, %struct.mgb_ring_desc** %37, align 8
  %39 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %10, align 8
  %40 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.mgb_ring_desc, %struct.mgb_ring_desc* %38, i64 %41
  store %struct.mgb_ring_desc* %42, %struct.mgb_ring_desc** %9, align 8
  %43 = load %struct.mgb_ring_desc*, %struct.mgb_ring_desc** %9, align 8
  %44 = call i32 @memset(%struct.mgb_ring_desc* %43, i32 0, i32 4)
  %45 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %10, align 8
  %46 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = call i64 @MGB_NEXT_RING_IDX(i64 %47)
  %49 = load %struct.mgb_ring_data*, %struct.mgb_ring_data** %10, align 8
  %50 = getelementptr inbounds %struct.mgb_ring_data, %struct.mgb_ring_data* %49, i32 0, i32 1
  store i64 %48, i64* %50, align 8
  %51 = load i32, i32* %11, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %11, align 4
  br label %22

53:                                               ; preds = %22
  %54 = load i32, i32* %11, align 4
  store i32 %54, i32* %4, align 4
  br label %55

55:                                               ; preds = %53, %34
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i32 @memset(%struct.mgb_ring_desc*, i32, i32) #1

declare dso_local i64 @MGB_NEXT_RING_IDX(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
