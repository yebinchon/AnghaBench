; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_init_eth_kr.c_al_eth_lp_coeff_up_change.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_init_eth_kr.c_al_eth_lp_coeff_up_change.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_kr_data = type { %struct.al_eth_kr_coef_up_data }
%struct.al_eth_kr_coef_up_data = type { i32 }

@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.al_eth_kr_data*, %struct.al_eth_kr_coef_up_data*)* @al_eth_lp_coeff_up_change to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @al_eth_lp_coeff_up_change(%struct.al_eth_kr_data* %0, %struct.al_eth_kr_coef_up_data* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.al_eth_kr_data*, align 8
  %5 = alloca %struct.al_eth_kr_coef_up_data*, align 8
  %6 = alloca %struct.al_eth_kr_coef_up_data*, align 8
  store %struct.al_eth_kr_data* %0, %struct.al_eth_kr_data** %4, align 8
  store %struct.al_eth_kr_coef_up_data* %1, %struct.al_eth_kr_coef_up_data** %5, align 8
  %7 = load %struct.al_eth_kr_data*, %struct.al_eth_kr_data** %4, align 8
  %8 = getelementptr inbounds %struct.al_eth_kr_data, %struct.al_eth_kr_data* %7, i32 0, i32 0
  store %struct.al_eth_kr_coef_up_data* %8, %struct.al_eth_kr_coef_up_data** %6, align 8
  %9 = load %struct.al_eth_kr_coef_up_data*, %struct.al_eth_kr_coef_up_data** %6, align 8
  %10 = load %struct.al_eth_kr_coef_up_data*, %struct.al_eth_kr_coef_up_data** %5, align 8
  %11 = call i64 @al_memcmp(%struct.al_eth_kr_coef_up_data* %9, %struct.al_eth_kr_coef_up_data* %10, i32 4)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %3, align 4
  br label %20

15:                                               ; preds = %2
  %16 = load %struct.al_eth_kr_coef_up_data*, %struct.al_eth_kr_coef_up_data** %6, align 8
  %17 = load %struct.al_eth_kr_coef_up_data*, %struct.al_eth_kr_coef_up_data** %5, align 8
  %18 = call i32 @al_memcpy(%struct.al_eth_kr_coef_up_data* %16, %struct.al_eth_kr_coef_up_data* %17, i32 4)
  %19 = load i32, i32* @TRUE, align 4
  store i32 %19, i32* %3, align 4
  br label %20

20:                                               ; preds = %15, %13
  %21 = load i32, i32* %3, align 4
  ret i32 %21
}

declare dso_local i64 @al_memcmp(%struct.al_eth_kr_coef_up_data*, %struct.al_eth_kr_coef_up_data*, i32) #1

declare dso_local i32 @al_memcpy(%struct.al_eth_kr_coef_up_data*, %struct.al_eth_kr_coef_up_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
