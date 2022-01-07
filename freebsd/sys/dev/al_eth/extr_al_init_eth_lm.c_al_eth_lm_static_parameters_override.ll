; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_init_eth_lm.c_al_eth_lm_static_parameters_override.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_init_eth_lm.c_al_eth_lm_static_parameters_override.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_lm_context = type { i32, i32, i8*, %struct.al_serdes_adv_rx_params, i8*, %struct.al_serdes_adv_tx_params }
%struct.al_serdes_adv_rx_params = type { i32 }
%struct.al_serdes_adv_tx_params = type { i32 }

@TRUE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @al_eth_lm_static_parameters_override(%struct.al_eth_lm_context* %0, %struct.al_serdes_adv_tx_params* %1, %struct.al_serdes_adv_rx_params* %2) #0 {
  %4 = alloca %struct.al_eth_lm_context*, align 8
  %5 = alloca %struct.al_serdes_adv_tx_params*, align 8
  %6 = alloca %struct.al_serdes_adv_rx_params*, align 8
  store %struct.al_eth_lm_context* %0, %struct.al_eth_lm_context** %4, align 8
  store %struct.al_serdes_adv_tx_params* %1, %struct.al_serdes_adv_tx_params** %5, align 8
  store %struct.al_serdes_adv_rx_params* %2, %struct.al_serdes_adv_rx_params** %6, align 8
  %7 = load %struct.al_serdes_adv_tx_params*, %struct.al_serdes_adv_tx_params** %5, align 8
  %8 = icmp ne %struct.al_serdes_adv_tx_params* %7, null
  br i1 %8, label %9, label %20

9:                                                ; preds = %3
  %10 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %4, align 8
  %11 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %10, i32 0, i32 5
  %12 = load %struct.al_serdes_adv_tx_params*, %struct.al_serdes_adv_tx_params** %5, align 8
  %13 = bitcast %struct.al_serdes_adv_tx_params* %11 to i8*
  %14 = bitcast %struct.al_serdes_adv_tx_params* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %13, i8* align 4 %14, i64 4, i1 false)
  %15 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %4, align 8
  %16 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %15, i32 0, i32 0
  store i32 1, i32* %16, align 8
  %17 = load i8*, i8** @TRUE, align 8
  %18 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %4, align 8
  %19 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %18, i32 0, i32 4
  store i8* %17, i8** %19, align 8
  br label %20

20:                                               ; preds = %9, %3
  %21 = load %struct.al_serdes_adv_rx_params*, %struct.al_serdes_adv_rx_params** %6, align 8
  %22 = icmp ne %struct.al_serdes_adv_rx_params* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %4, align 8
  %25 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %24, i32 0, i32 3
  %26 = load %struct.al_serdes_adv_rx_params*, %struct.al_serdes_adv_rx_params** %6, align 8
  %27 = bitcast %struct.al_serdes_adv_rx_params* %25 to i8*
  %28 = bitcast %struct.al_serdes_adv_rx_params* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 4 %28, i64 4, i1 false)
  %29 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %4, align 8
  %30 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %29, i32 0, i32 1
  store i32 1, i32* %30, align 4
  %31 = load i8*, i8** @TRUE, align 8
  %32 = load %struct.al_eth_lm_context*, %struct.al_eth_lm_context** %4, align 8
  %33 = getelementptr inbounds %struct.al_eth_lm_context, %struct.al_eth_lm_context* %32, i32 0, i32 2
  store i8* %31, i8** %33, align 8
  br label %34

34:                                               ; preds = %23, %20
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
