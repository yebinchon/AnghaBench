; ModuleID = '/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_fsm_table_init.c'
source_filename = "/home/carl/AnghaBench/freebsd/sys/dev/al_eth/extr_al_eth.c_al_eth_fsm_table_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.al_eth_adapter = type { i32 }

@AL_ETH_RX_FSM_TABLE_SIZE = common dso_local global i32 0, align 4
@AL_ETH_FSM_DATA_OUTER_4_TUPLE = common dso_local global i32 0, align 4
@AL_ETH_FSM_DATA_HASH_SEL = common dso_local global i32 0, align 4
@AL_ETH_FSM_DATA_OUTER_2_TUPLE = common dso_local global i32 0, align 4
@AL_ETH_FSM_DATA_DEFAULT_Q = common dso_local global i32 0, align 4
@AL_ETH_FSM_DATA_DEFAULT_UDMA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.al_eth_adapter*)* @al_eth_fsm_table_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @al_eth_fsm_table_init(%struct.al_eth_adapter* %0) #0 {
  %2 = alloca %struct.al_eth_adapter*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.al_eth_adapter* %0, %struct.al_eth_adapter** %2, align 8
  store i32 0, i32* %4, align 4
  br label %6

6:                                                ; preds = %32, %1
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @AL_ETH_RX_FSM_TABLE_SIZE, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %35

10:                                               ; preds = %6
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @AL_ETH_FSM_ENTRY_OUTER(i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  switch i32 %13, label %22 [
    i32 132, label %14
    i32 131, label %14
    i32 129, label %14
    i32 128, label %14
    i32 130, label %18
    i32 133, label %18
  ]

14:                                               ; preds = %10, %10, %10, %10
  %15 = load i32, i32* @AL_ETH_FSM_DATA_OUTER_4_TUPLE, align 4
  %16 = load i32, i32* @AL_ETH_FSM_DATA_HASH_SEL, align 4
  %17 = or i32 %15, %16
  store i32 %17, i32* %3, align 4
  br label %26

18:                                               ; preds = %10, %10
  %19 = load i32, i32* @AL_ETH_FSM_DATA_OUTER_2_TUPLE, align 4
  %20 = load i32, i32* @AL_ETH_FSM_DATA_HASH_SEL, align 4
  %21 = or i32 %19, %20
  store i32 %21, i32* %3, align 4
  br label %26

22:                                               ; preds = %10
  %23 = load i32, i32* @AL_ETH_FSM_DATA_DEFAULT_Q, align 4
  %24 = load i32, i32* @AL_ETH_FSM_DATA_DEFAULT_UDMA, align 4
  %25 = or i32 %23, %24
  store i32 %25, i32* %3, align 4
  br label %26

26:                                               ; preds = %22, %18, %14
  %27 = load %struct.al_eth_adapter*, %struct.al_eth_adapter** %2, align 8
  %28 = getelementptr inbounds %struct.al_eth_adapter, %struct.al_eth_adapter* %27, i32 0, i32 0
  %29 = load i32, i32* %4, align 4
  %30 = load i32, i32* %3, align 4
  %31 = call i32 @al_eth_fsm_table_set(i32* %28, i32 %29, i32 %30)
  br label %32

32:                                               ; preds = %26
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %6

35:                                               ; preds = %6
  ret void
}

declare dso_local i32 @AL_ETH_FSM_ENTRY_OUTER(i32) #1

declare dso_local i32 @al_eth_fsm_table_set(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
