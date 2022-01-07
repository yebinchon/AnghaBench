; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_peer_db_addr.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_peer_db_addr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_plx_softc = type { i64, i64, i32, %struct.ntb_plx_mw_info* }
%struct.ntb_plx_mw_info = type { i64 }

@.str = private unnamed_addr constant [17 x i8] c"must be non-NULL\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i64*, i32*)* @ntb_plx_peer_db_addr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_plx_peer_db_addr(i32 %0, i64* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.ntb_plx_softc*, align 8
  %8 = alloca %struct.ntb_plx_mw_info*, align 8
  store i32 %0, i32* %4, align 4
  store i64* %1, i64** %5, align 8
  store i32* %2, i32** %6, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call %struct.ntb_plx_softc* @device_get_softc(i32 %9)
  store %struct.ntb_plx_softc* %10, %struct.ntb_plx_softc** %7, align 8
  %11 = load i64*, i64** %5, align 8
  %12 = icmp ne i64* %11, null
  br i1 %12, label %13, label %16

13:                                               ; preds = %3
  %14 = load i32*, i32** %6, align 8
  %15 = icmp ne i32* %14, null
  br label %16

16:                                               ; preds = %13, %3
  %17 = phi i1 [ false, %3 ], [ %15, %13 ]
  %18 = zext i1 %17 to i32
  %19 = call i32 @KASSERT(i32 %18, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %7, align 8
  %21 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp uge i64 %22, 0
  br i1 %23, label %24, label %40

24:                                               ; preds = %16
  %25 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %7, align 8
  %26 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %25, i32 0, i32 3
  %27 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %26, align 8
  %28 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %7, align 8
  %29 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %27, i64 %30
  store %struct.ntb_plx_mw_info* %31, %struct.ntb_plx_mw_info** %8, align 8
  %32 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %8, align 8
  %33 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %7, align 8
  %36 = call i64 @PLX_NTX_BASE(%struct.ntb_plx_softc* %35)
  %37 = add nsw i64 %34, %36
  %38 = add nsw i64 %37, 3148
  %39 = load i64*, i64** %5, align 8
  store i64 %38, i64* %39, align 8
  br label %59

40:                                               ; preds = %16
  %41 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %7, align 8
  %42 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = call i64 @rman_get_start(i32 %43)
  %45 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %7, align 8
  %46 = call i64 @PLX_NTX_BASE(%struct.ntb_plx_softc* %45)
  %47 = add nsw i64 %44, %46
  %48 = load i64*, i64** %5, align 8
  store i64 %47, i64* %48, align 8
  %49 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %7, align 8
  %50 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %49, i32 0, i32 1
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  %53 = zext i1 %52 to i64
  %54 = select i1 %52, i32 3148, i32 3164
  %55 = sext i32 %54 to i64
  %56 = load i64*, i64** %5, align 8
  %57 = load i64, i64* %56, align 8
  %58 = add nsw i64 %57, %55
  store i64 %58, i64* %56, align 8
  br label %59

59:                                               ; preds = %40, %24
  %60 = load i32*, i32** %6, align 8
  store i32 4, i32* %60, align 4
  ret i32 0
}

declare dso_local %struct.ntb_plx_softc* @device_get_softc(i32) #1

declare dso_local i32 @KASSERT(i32, i8*) #1

declare dso_local i64 @PLX_NTX_BASE(%struct.ntb_plx_softc*) #1

declare dso_local i64 @rman_get_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
