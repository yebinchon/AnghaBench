; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_init_eth_lm.c_al_eth_lm_static_parameters_get.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_init_eth_lm.c_al_eth_lm_static_parameters_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_lm_context = type { i32, %struct.TYPE_3__*, %struct.al_serdes_adv_rx_params, i64, %struct.al_serdes_adv_tx_params, i64 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_3__*, i32, %struct.al_serdes_adv_rx_params*)*, i32 (%struct.TYPE_3__*, i32, %struct.al_serdes_adv_tx_params*)* }
%struct.al_serdes_adv_rx_params = type { i32 }
%struct.al_serdes_adv_tx_params = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_lm_static_parameters_get(%struct.al_eth_lm_context* %0, %struct.al_serdes_adv_tx_params* %1, %struct.al_serdes_adv_rx_params* %2) #0 {
  %4 = alloca %struct.al_eth_lm_context*, align 8
  %5 = alloca %struct.al_serdes_adv_tx_params*, align 8
  %6 = alloca %struct.al_serdes_adv_rx_params*, align 8
  store %struct.al_eth_lm_context* %0, %struct.al_eth_lm_context** %4, align 8
  store %struct.al_serdes_adv_tx_params* %1, %struct.al_serdes_adv_tx_params** %5, align 8
  store %struct.al_serdes_adv_rx_params* %2, %struct.al_serdes_adv_rx_params** %6, align 8
  %7 = load %struct.al_serdes_adv_tx_params*, %struct.al_serdes_adv_tx_params** %5, align 8
  %8 = icmp ne %struct.al_serdes_adv_tx_params* %7, null
  br i1 %8, label %9, label %35

9:                                                ; preds = %3
  %10 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %4, align 8
  %11 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %10, i32 0, i32 5
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %9
  %15 = load %struct.al_serdes_adv_tx_params*, %struct.al_serdes_adv_tx_params** %5, align 8
  %16 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %4, align 8
  %17 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %16, i32 0, i32 4
  %18 = bitcast %struct.al_serdes_adv_tx_params* %15 to i8*
  %19 = bitcast %struct.al_serdes_adv_tx_params* %17 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %18, i8* align 8 %19, i64 4, i1 false)
  br label %34

20:                                               ; preds = %9
  %21 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %4, align 8
  %22 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %21, i32 0, i32 1
  %23 = load %struct.TYPE_3__*, %struct.TYPE_3__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 1
  %25 = load i32 (%struct.TYPE_3__*, i32, %struct.al_serdes_adv_tx_params*)*, i32 (%struct.TYPE_3__*, i32, %struct.al_serdes_adv_tx_params*)** %24, align 8
  %26 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %4, align 8
  %27 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %26, i32 0, i32 1
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %4, align 8
  %30 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.al_serdes_adv_tx_params*, %struct.al_serdes_adv_tx_params** %5, align 8
  %33 = call i32 %25(%struct.TYPE_3__* %28, i32 %31, %struct.al_serdes_adv_tx_params* %32)
  br label %34

34:                                               ; preds = %20, %14
  br label %35

35:                                               ; preds = %34, %3
  %36 = load %struct.al_serdes_adv_rx_params*, %struct.al_serdes_adv_rx_params** %6, align 8
  %37 = icmp ne %struct.al_serdes_adv_rx_params* %36, null
  br i1 %37, label %38, label %64

38:                                               ; preds = %35
  %39 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %4, align 8
  %40 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = load %struct.al_serdes_adv_rx_params*, %struct.al_serdes_adv_rx_params** %6, align 8
  %45 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %4, align 8
  %46 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %45, i32 0, i32 2
  %47 = bitcast %struct.al_serdes_adv_rx_params* %44 to i8*
  %48 = bitcast %struct.al_serdes_adv_rx_params* %46 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %47, i8* align 8 %48, i64 4, i1 false)
  br label %63

49:                                               ; preds = %38
  %50 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %4, align 8
  %51 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %50, i32 0, i32 1
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32 (%struct.TYPE_3__*, i32, %struct.al_serdes_adv_rx_params*)*, i32 (%struct.TYPE_3__*, i32, %struct.al_serdes_adv_rx_params*)** %53, align 8
  %55 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %4, align 8
  %56 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %55, i32 0, i32 1
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %56, align 8
  %58 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %4, align 8
  %59 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.al_serdes_adv_rx_params*, %struct.al_serdes_adv_rx_params** %6, align 8
  %62 = call i32 %54(%struct.TYPE_3__* %57, i32 %60, %struct.al_serdes_adv_rx_params* %61)
  br label %63

63:                                               ; preds = %49, %43
  br label %64

64:                                               ; preds = %63, %35
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
