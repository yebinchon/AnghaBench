; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_init_eth_kr.c_al_eth_kr_lt_receiver_task_run.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_init_eth_kr.c_al_eth_kr_lt_receiver_task_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_kr_data = type { i32 }
%struct.al_eth_kr_coef_up_data = type { i32 }

@AL_ETH_AN__LT_LANE_0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_eth_kr_data*)* @al_eth_kr_lt_receiver_task_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_eth_kr_lt_receiver_task_run(%struct.al_eth_kr_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.al_eth_kr_data*, align 8
  %4 = alloca %struct.al_eth_kr_coef_up_data, align 4
  store %struct.al_eth_kr_data* %0, %struct.al_eth_kr_data** %3, align 8
  %5 = load %struct.al_eth_kr_data*, %struct.al_eth_kr_data** %3, align 8
  %6 = getelementptr inbounds %struct.al_eth_kr_data, %struct.al_eth_kr_data* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = load i32, i32* @AL_ETH_AN__LT_LANE_0, align 4
  %9 = call i64 @al_eth_kr_receiver_frame_lock_get(i32 %7, i32 %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %12

11:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

12:                                               ; preds = %1
  %13 = load %struct.al_eth_kr_data*, %struct.al_eth_kr_data** %3, align 8
  %14 = getelementptr inbounds %struct.al_eth_kr_data, %struct.al_eth_kr_data* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @AL_ETH_AN__LT_LANE_0, align 4
  %17 = call i32 @al_eth_lp_coeff_up_get(i32 %15, i32 %16, %struct.al_eth_kr_coef_up_data* %4)
  %18 = load %struct.al_eth_kr_data*, %struct.al_eth_kr_data** %3, align 8
  %19 = call i64 @al_eth_lp_coeff_up_change(%struct.al_eth_kr_data* %18, %struct.al_eth_kr_coef_up_data* %4)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = load %struct.al_eth_kr_data*, %struct.al_eth_kr_data** %3, align 8
  %23 = call i32 @al_eth_coeff_req_handle(%struct.al_eth_kr_data* %22, %struct.al_eth_kr_coef_up_data* %4)
  br label %24

24:                                               ; preds = %21, %12
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %11
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i64 @al_eth_kr_receiver_frame_lock_get(i32, i32) #1

declare dso_local i32 @al_eth_lp_coeff_up_get(i32, i32, %struct.al_eth_kr_coef_up_data*) #1

declare dso_local i64 @al_eth_lp_coeff_up_change(%struct.al_eth_kr_data*, %struct.al_eth_kr_coef_up_data*) #1

declare dso_local i32 @al_eth_coeff_req_handle(%struct.al_eth_kr_data*, %struct.al_eth_kr_coef_up_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
