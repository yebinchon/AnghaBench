; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_func_wait_started.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/bxe/extr_bxe.c_bxe_func_wait_started.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bxe_softc = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.ecore_func_state_params = type { i32, i32, i32*, i32* }

@ECORE_F_STATE_STARTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [67 x i8] c"Unexpected function state! Forcing STARTED-->TX_STOPPED-->STARTED\0A\00", align 1
@RAMROD_DRV_CLR_ONLY = common dso_local global i32 0, align 4
@ECORE_F_CMD_TX_STOP = common dso_local global i32 0, align 4
@ECORE_F_CMD_TX_START = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.bxe_softc*)* @bxe_func_wait_started to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bxe_func_wait_started(%struct.bxe_softc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.bxe_softc*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ecore_func_state_params, align 8
  store %struct.bxe_softc* %0, %struct.bxe_softc** %3, align 8
  store i32 50, i32* %4, align 4
  %6 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %7 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %6, i32 0, i32 1
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %54

12:                                               ; preds = %1
  br label %13

13:                                               ; preds = %26, %12
  %14 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %15 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %16 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %15, i32 0, i32 0
  %17 = call i64 @ecore_func_get_state(%struct.bxe_softc* %14, i32* %16)
  %18 = load i64, i64* @ECORE_F_STATE_STARTED, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %24

20:                                               ; preds = %13
  %21 = load i32, i32* %4, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %4, align 4
  %23 = icmp ne i32 %21, 0
  br label %24

24:                                               ; preds = %20, %13
  %25 = phi i1 [ false, %13 ], [ %23, %20 ]
  br i1 %25, label %26, label %28

26:                                               ; preds = %24
  %27 = call i32 @DELAY(i32 20000)
  br label %13

28:                                               ; preds = %24
  %29 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %30 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %31 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %30, i32 0, i32 0
  %32 = call i64 @ecore_func_get_state(%struct.bxe_softc* %29, i32* %31)
  %33 = load i64, i64* @ECORE_F_STATE_STARTED, align 8
  %34 = icmp ne i64 %32, %33
  br i1 %34, label %35, label %53

35:                                               ; preds = %28
  %36 = bitcast %struct.ecore_func_state_params* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %36, i8 0, i64 24, i1 false)
  %37 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %38 = call i32 @BLOGE(%struct.bxe_softc* %37, i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str, i64 0, i64 0))
  %39 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %40 = getelementptr inbounds %struct.bxe_softc, %struct.bxe_softc* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %5, i32 0, i32 2
  store i32* %40, i32** %41, align 8
  %42 = load i32, i32* @RAMROD_DRV_CLR_ONLY, align 4
  %43 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %5, i32 0, i32 1
  %44 = call i32 @bxe_set_bit(i32 %42, i32* %43)
  %45 = load i32, i32* @ECORE_F_CMD_TX_STOP, align 4
  %46 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %5, i32 0, i32 0
  store i32 %45, i32* %46, align 8
  %47 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %48 = call i32 @ecore_func_state_change(%struct.bxe_softc* %47, %struct.ecore_func_state_params* %5)
  %49 = load i32, i32* @ECORE_F_CMD_TX_START, align 4
  %50 = getelementptr inbounds %struct.ecore_func_state_params, %struct.ecore_func_state_params* %5, i32 0, i32 0
  store i32 %49, i32* %50, align 8
  %51 = load %struct.bxe_softc*, %struct.bxe_softc** %3, align 8
  %52 = call i32 @ecore_func_state_change(%struct.bxe_softc* %51, %struct.ecore_func_state_params* %5)
  store i32 %52, i32* %2, align 4
  br label %54

53:                                               ; preds = %28
  store i32 0, i32* %2, align 4
  br label %54

54:                                               ; preds = %53, %35, %11
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @ecore_func_get_state(%struct.bxe_softc*, i32*) #1

declare dso_local i32 @DELAY(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

declare dso_local i32 @BLOGE(%struct.bxe_softc*, i8*) #1

declare dso_local i32 @bxe_set_bit(i32, i32*) #1

declare dso_local i32 @ecore_func_state_change(%struct.bxe_softc*, %struct.ecore_func_state_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
