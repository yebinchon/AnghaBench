; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_mw_set_trans.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/ntb/ntb_hw/extr_ntb_hw_plx.c_ntb_plx_mw_set_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ntb_plx_softc = type { i32, %struct.ntb_plx_mw_info* }
%struct.ntb_plx_mw_info = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@UINT32_MAX = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i64, i64)* @ntb_plx_mw_set_trans to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ntb_plx_mw_set_trans(i32 %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ntb_plx_softc*, align 8
  %11 = alloca %struct.ntb_plx_mw_info*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load i32, i32* %6, align 4
  %14 = call %struct.ntb_plx_softc* @device_get_softc(i32 %13)
  store %struct.ntb_plx_softc* %14, %struct.ntb_plx_softc** %10, align 8
  %15 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %10, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call i32 @ntb_plx_user_mw_to_idx(%struct.ntb_plx_softc* %15, i32 %16, i32* %12)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %10, align 8
  %20 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp uge i32 %18, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @EINVAL, align 4
  store i32 %24, i32* %5, align 4
  br label %74

25:                                               ; preds = %4
  %26 = load %struct.ntb_plx_softc*, %struct.ntb_plx_softc** %10, align 8
  %27 = getelementptr inbounds %struct.ntb_plx_softc, %struct.ntb_plx_softc* %26, i32 0, i32 1
  %28 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %27, align 8
  %29 = load i32, i32* %7, align 4
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %28, i64 %30
  store %struct.ntb_plx_mw_info* %31, %struct.ntb_plx_mw_info** %11, align 8
  %32 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %11, align 8
  %33 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %54, label %36

36:                                               ; preds = %25
  %37 = load i64, i64* %8, align 8
  %38 = load i64, i64* @UINT32_MAX, align 8
  %39 = and i64 %37, %38
  %40 = load i64, i64* %8, align 8
  %41 = icmp ne i64 %39, %40
  br i1 %41, label %52, label %42

42:                                               ; preds = %36
  %43 = load i64, i64* %8, align 8
  %44 = load i64, i64* %9, align 8
  %45 = add i64 %43, %44
  %46 = load i64, i64* @UINT32_MAX, align 8
  %47 = and i64 %45, %46
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = add i64 %48, %49
  %51 = icmp ne i64 %47, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %42, %36
  %53 = load i32, i32* @ERANGE, align 4
  store i32 %53, i32* %5, align 4
  br label %74

54:                                               ; preds = %42, %25
  %55 = load i64, i64* %8, align 8
  %56 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %11, align 8
  %57 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %12, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  store i64 %55, i64* %62, align 8
  %63 = load i64, i64* %9, align 8
  %64 = load %struct.ntb_plx_mw_info*, %struct.ntb_plx_mw_info** %11, align 8
  %65 = getelementptr inbounds %struct.ntb_plx_mw_info, %struct.ntb_plx_mw_info* %64, i32 0, i32 0
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = load i32, i32* %12, align 4
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 1
  store i64 %63, i64* %70, align 8
  %71 = load i32, i32* %6, align 4
  %72 = load i32, i32* %7, align 4
  %73 = call i32 @ntb_plx_mw_set_trans_internal(i32 %71, i32 %72)
  store i32 %73, i32* %5, align 4
  br label %74

74:                                               ; preds = %54, %52, %23
  %75 = load i32, i32* %5, align 4
  ret i32 %75
}

declare dso_local %struct.ntb_plx_softc* @device_get_softc(i32) #1

declare dso_local i32 @ntb_plx_user_mw_to_idx(%struct.ntb_plx_softc*, i32, i32*) #1

declare dso_local i32 @ntb_plx_mw_set_trans_internal(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
