; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_ets_e3b0_sp_pri_to_cos_set.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe_elink.c_elink_ets_e3b0_sp_pri_to_cos_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.elink_params = type { i64, %struct.bxe_softc* }
%struct.bxe_softc = type { i32 }

@ELINK_DCBX_E3B0_MAX_NUM_COS_PORT1 = common dso_local global i64 0, align 8
@ELINK_DCBX_E3B0_MAX_NUM_COS_PORT0 = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [76 x i8] c"elink_ets_e3b0_sp_pri_to_cos_set invalid parameter Illegal strict priority\0A\00", align 1
@ELINK_STATUS_ERROR = common dso_local global i32 0, align 4
@DCBX_INVALID_COS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [102 x i8] c"elink_ets_e3b0_sp_pri_to_cos_set invalid parameter There can't be two COS's with the same strict pri\0A\00", align 1
@ELINK_STATUS_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.elink_params*, i64*, i64, i64)* @elink_ets_e3b0_sp_pri_to_cos_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @elink_ets_e3b0_sp_pri_to_cos_set(%struct.elink_params* %0, i64* %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.elink_params*, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.bxe_softc*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.elink_params* %0, %struct.elink_params** %6, align 8
  store i64* %1, i64** %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %14 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %13, i32 0, i32 1
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %14, align 8
  store %struct.bxe_softc* %15, %struct.bxe_softc** %10, align 8
  %16 = load %struct.elink_params*, %struct.elink_params** %6, align 8
  %17 = getelementptr inbounds %struct.elink_params, %struct.elink_params* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  store i64 %18, i64* %11, align 8
  %19 = load i64, i64* %11, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i64, i64* @ELINK_DCBX_E3B0_MAX_NUM_COS_PORT1, align 8
  br label %25

23:                                               ; preds = %4
  %24 = load i64, i64* @ELINK_DCBX_E3B0_MAX_NUM_COS_PORT0, align 8
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i64 [ %22, %21 ], [ %24, %23 ]
  store i64 %26, i64* %12, align 8
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* %12, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %25
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %32 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %31, i8* getelementptr inbounds ([76 x i8], [76 x i8]* @.str, i64 0, i64 0))
  %33 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %33, i32* %5, align 4
  br label %51

34:                                               ; preds = %25
  %35 = load i64*, i64** %7, align 8
  %36 = load i64, i64* %8, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @DCBX_INVALID_COS, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %45

41:                                               ; preds = %34
  %42 = load %struct.bxe_softc*, %struct.bxe_softc** %10, align 8
  %43 = call i32 @ELINK_DEBUG_P0(%struct.bxe_softc* %42, i8* getelementptr inbounds ([102 x i8], [102 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @ELINK_STATUS_ERROR, align 4
  store i32 %44, i32* %5, align 4
  br label %51

45:                                               ; preds = %34
  %46 = load i64, i64* %9, align 8
  %47 = load i64*, i64** %7, align 8
  %48 = load i64, i64* %8, align 8
  %49 = getelementptr inbounds i64, i64* %47, i64 %48
  store i64 %46, i64* %49, align 8
  %50 = load i32, i32* @ELINK_STATUS_OK, align 4
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %45, %41, %30
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local i32 @ELINK_DEBUG_P0(%struct.bxe_softc*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
