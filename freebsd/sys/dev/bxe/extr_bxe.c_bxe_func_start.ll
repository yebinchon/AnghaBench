; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_func_start.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_func_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.ecore_func_state_params = type { i32, i32*, i32, %struct.TYPE_6__, i32* }
%struct.TYPE_6__ = type { %struct.ecore_func_start_params }
%struct.ecore_func_start_params = type { i32, i32, i32 }

@RAMROD_COMP_WAIT = common dso_local global i32 0, align 4
@ECORE_F_CMD_START = common dso_local global i32 0, align 4
@STATIC_COS = common dso_local global i32 0, align 4
@FW_WRR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_func_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_func_start(%struct.bxe_softc* %0) #0 {
  %2 = alloca %struct.bxe_softc*, align 8
  %3 = alloca %struct.ecore_func_state_params, align 8
  %4 = alloca %struct.ecore_func_start_params*, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %2, align 8
  %5 = bitcast %struct.ecore_func_state_params* %3 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %5, i8 0, i64 40, i1 false)
  %6 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %3, i32 0, i32 3
  %7 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %6, i32 0, i32 0
  store %struct.ecore_func_start_params* %7, %struct.ecore_func_start_params** %4, align 8
  %8 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %3, i32 0, i32 2
  %9 = load i32, i32* @RAMROD_COMP_WAIT, align 4
  %10 = call i32 @bit_set(i32* %8, i32 %9)
  %11 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %12 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %3, i32 0, i32 1
  store i32* %12, i32** %13, align 8
  %14 = load i32, i32* @ECORE_F_CMD_START, align 4
  %15 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %3, i32 0, i32 0
  store i32 %14, i32* %15, align 8
  %16 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %17 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %4, align 8
  %22 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %21, i32 0, i32 2
  store i32 %20, i32* %22, align 4
  %23 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %24 = call i32 @OVLAN(%struct.bxe_softc* %23)
  %25 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %4, align 8
  %26 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %25, i32 0, i32 1
  store i32 %24, i32* %26, align 4
  %27 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %28 = call i64 @CHIP_IS_E2(%struct.bxe_softc* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %1
  %31 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %32 = call i64 @CHIP_IS_E3(%struct.bxe_softc* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30, %1
  %35 = load i32, i32* @STATIC_COS, align 4
  %36 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %4, align 8
  %37 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 4
  br label %42

38:                                               ; preds = %30
  %39 = load i32, i32* @FW_WRR, align 4
  %40 = load %struct.ecore_func_start_params*, %struct.ecore_func_start_params** %4, align 8
  %41 = getelementptr inbounds %struct.ecore_func_start_params, %struct.ecore_func_start_params* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 4
  br label %42

42:                                               ; preds = %38, %34
  %43 = load %struct.bxe_softc*, %struct.bxe_softc** %2, align 8
  %44 = call i32 @ecore_func_state_change(%struct.bxe_softc* %43, %struct.ecore_func_state_params* %3)
  ret i32 %44
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @bit_set(i32*, i32) #2

declare dso_local i32 @OVLAN(%struct.bxe_softc*) #2

declare dso_local i64 @CHIP_IS_E2(%struct.bxe_softc*) #2

declare dso_local i64 @CHIP_IS_E3(%struct.bxe_softc*) #2

declare dso_local i32 @ecore_func_state_change(%struct.bxe_softc*, %struct.ecore_func_state_params*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
